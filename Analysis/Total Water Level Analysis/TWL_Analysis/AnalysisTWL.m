% clear all
close all
% clc
MaxGap = 1000;
Slope = 0.02;
%%

csvFilePathWave = '../MSL_Wave_Data/WaveDataStation42002.csv';

WaveData = readtable(csvFilePathWave, 'VariableNamingRule', 'preserve');

columnNamesWave = {'Datetime', 'WVHT', 'DPD'};
WaveData = WaveData(:, columnNamesWave);

newColumnNamesWave = {'DateTime', 'SignificantWaveHeight', 'PeakPeriod'};
WaveData.Properties.VariableNames = newColumnNamesWave;

if ~istimetable(WaveData)
    WaveData = table2timetable(WaveData, 'RowTimes', 'DateTime');
end

csvFilePathWater = '../MSL_Wave_Data/WaterGageForFreePort.csv';

MeanSeaLevelData = readtable(csvFilePathWater, 'VariableNamingRule', 'preserve');

columnNamesWater = {'t', 'water_level'};
MeanSeaLevelData = MeanSeaLevelData(:, columnNamesWater);

newColumnNamesWater = {'DateTime', 'VerifiedTide'};
MeanSeaLevelData.Properties.VariableNames = newColumnNamesWater;

MeanSeaLevelData.PredictedTide = MeanSeaLevelData.VerifiedTide;

if ~istimetable(MeanSeaLevelData)
    MeanSeaLevelData = table2timetable(MeanSeaLevelData, 'RowTimes', 'DateTime');
end


clear columnNamesWave columnNamesWater csvFilePathWave csvFilePathWater
clear newColumnNamesWater newColumnNamesWave csvFi


%%

% WaveData = load('../MSL_Wave_Data/WaveDataStation42035.mat');
% WaveData = WaveData.WaveData;

% MeanSeaLevelData = load('../MSL_Wave_Data/MeanSeaLevelDataStation8771450.mat');
% MeanSeaLevelData = MeanSeaLevelData.MeanSeaLevelData;

% Input needed
% prompt = {'Maximum gap of consecutive missing data:','Foreshore beach slope:'};
% dlgtitle = 'Input Parameters';
% dims = [1 50; 1 50];
% definput = {'100','0.07'};
% answer = inputdlg(prompt,dlgtitle,dims,definput);
% Answer = str2double(answer);
% MaxGap = Answer(1); Slope = Answer(2);

clear prompt dlgtitle dims definput answer Answer

% % If duplicates present (first check that data is sorted)
WaveData = sortrows(WaveData);
WaveData = unique(WaveData);

MeanSeaLevelData = sortrows(MeanSeaLevelData);
MeanSeaLevelData = unique(MeanSeaLevelData);

% Taking only one value (the first) if multiple data occur the same hour
WaveData = retime(WaveData, 'hourly', 'firstvalue');
MeanSeaLevelData = retime(MeanSeaLevelData, 'hourly', 'mean');

% Maximum allowed consecutive gaps
[WaveData, MeanSeaLevelData, RefDate] = f_MaxAvailableSubset(WaveData, MeanSeaLevelData, MaxGap);
clear MaxGap

% Referring the analysis to MSL
Ref = -mean(rmmissing(MeanSeaLevelData.VerifiedTide));

% Saving table of results
Data = table(RefDate, WaveData.SignificantWaveHeight, WaveData.PeakPeriod, MeanSeaLevelData.PredictedTide, MeanSeaLevelData.VerifiedTide);
Data.Properties.VariableNames = {'RefDateHours', 'SignificantWaveHeightWithGaps', 'PeakPeriodWithGaps', 'PredictedTideWithGaps', 'VerifiedTideWithGaps'};

% Storing length of a column in the table
L = length(Data.PeakPeriodWithGaps);

% Interpolation of missing values
WaveData = retime(WaveData, 'hourly', 'linear');
MeanSeaLevelData(:, 2) = retime(MeanSeaLevelData(:, 2), 'hourly', 'linear'); % Interpolating Verified Tide only

% Updating table of results
Var = NaN * zeros(L, 1);
Var(1:length(Ref)) = Ref;
Var2 = NaN * zeros(L, 1);
Var2(1:length(Slope)) = Slope;
T = table(WaveData.SignificantWaveHeight, WaveData.PeakPeriod, MeanSeaLevelData.VerifiedTide, Var, Var2);
T.Properties.VariableNames = {'SignificantWaveHeight', 'PeakPeriod', 'VerifiedTide', 'Reference', 'Slope'};
Data = [Data, T]; clear T Var Var2

% TWL
[TWL_DailyMax, TWL_Hourly] = f_TWL(WaveData, MeanSeaLevelData, Slope, Ref);


% Naming new variables that will be used often
Date = TWL_DailyMax.DateDays;
TWL = TWL_DailyMax.TWL_DailyMax;

% Index relating hourly data to daily maximums (for complete series only)
% Pre-allocation and inizialing variables
D = RefDate;
D.Format = 'dd-MMM-yyyy';
d = cellstr(D);
d = datetime(d, 'InputFormat', 'dd-MMM-yyyy');
clear D
Idx = zeros(1, length(TWL));


for i = 1:length(TWL)
    IdxDate = find(datenum(d) == datenum(Date(i)));
    MaxWL = find(TWL_Hourly.TWL_Hourly(IdxDate) == TWL(i));
    if ~isempty(MaxWL)
        MaxWL = MaxWL(1);
        Idx(i) = IdxDate(MaxWL);
    else
        warning('No matching MaxWL found for Date index: %d', i);
        Idx(i) = NaN;
    end
    clear IdxDate MaxWL
end

clear i d

% Saving TWL results
T = table(TWL_Hourly.DateHours, TWL_Hourly.TWL_Hourly);
T.Properties.VariableNames = {'DateHours', 'TWL_Hourly'};
Data = [Data, T]; clear T

Var = NaN * zeros(L, 1);
Var(1:length(TWL_DailyMax.TWL_DailyMax)) = TWL_DailyMax.TWL_DailyMax;
Var2 = NaN * zeros(L, 1);
Var2(1:length(Idx)) = Idx;
VarT = NaT(L, 1);
VarT(1:length(TWL_DailyMax.DateDays)) = TWL_DailyMax.DateDays;
T = table(Var2, VarT, Var);
T.Properties.VariableNames = {'IdxHourlyToDailyMax', 'DateDays', 'TWL_DailyMax'};
Data = [Data, T]; clear T Var2 VarT Var Idx

% fig = figure('visible', 'off');
% histogram(TWL)
% set(gca, 'FontSize', 20)
% xlabel('TWL (m)', 'FontSize', 20)
% ylabel('Counts', 'FontSize', 20)
% title('Daily Maximum TWL (m)', 'FontSize', 26)
% saveas(fig, [pwd '/Results/Plots/Daily_Max_TWL_Histogram.png'])
% close(fig)

prompt = '\n\nWhat range of thresholds to consider?  ';

Threshold = 0.4:0.1:1.4;
% Threshold = input(prompt);
% clear prompt

% Checking seasonality on the daily maximum TWL
Month = month(Date);

Cross = TWL - Threshold(1);
Cross(Cross <= 0) = 0;
M = Month(Cross > 0);
Cross = Cross(Cross > 0);
[M, Idx] = sort(M, 'ascend');
Cross = Cross(Idx);
NumElementsPerMonth = grpstats(Cross, num2str(M), 'numel');
MonthlyMean = grpstats(TWL, num2str(month(Date)), 'mean');

clear Month Cross M Idx

% fontSize = 10;
% 
% fig = figure('visible', 'off');
% subplot(1, 2, 1);
% plot(1:12, NumElementsPerMonth, '-', 'LineWidth', 2.5);
% set(gca, 'FontSize', fontSize, 'XTick', 1:12, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});
% xlabel('Month', 'FontSize', fontSize);
% ylabel('Number of days above threshold', 'FontSize', fontSize);
% title('Total number of days above given threshold', 'FontSize', fontSize + 1);

% subplot(1, 2, 2);
% plot(1:12, MonthlyMean, '-', 'LineWidth', 2.5);
% set(gca, 'FontSize', fontSize, 'XTick', 1:12, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});
% xlabel('Month', 'FontSize', fontSize);
% ylabel('Average TWL (m)', 'FontSize', fontSize);
% title('Monthly average of Daily Maximum TWL', 'FontSize', fontSize + 1);
% 
% % Adjusting the file path for saving the figure
% saveas(fig, fullfile(pwd, 'Results', 'Plots', 'Monthly_Stats_Comparison.png'));
% close(fig);




clear NumElementsPerMonth MonthlyMean

fprintf('\n\nTotal length of available time series is (days): %i \n', length(TWL));

% Plotting recurrence time of the Daily Maximum TWL
% [Cdf, q] = ecdf(TWL_DailyMax.TWL_DailyMax);
% ExProb = 1 - Cdf;
% RT = 1 ./ ExProb;
% RT(end) = RT(end-1);
% 
% fig = figure('visible', 'on');
% semilogx(RT, q, 'LineWidth', 3)
% grid on
% xlabel('Recurrence Time (days)', 'FontSize', 20);
% ylabel('Daily Maximum TWL (m)', 'FontSize', 20);
% title('Recurrence Time of Daily Maximum TWL', 'FontSize', 26);

%%
[Cdf, q] = ecdf(TWL_DailyMax.TWL_DailyMax);
ExProb = 1 - Cdf;
RT_days = 1 ./ ExProb; % Recurrence time in days
RT_days(end) = RT_days(end-1);
RT_years = RT_days / 365.25; % Convert to years

fig = figure('visible', 'on');
scatter(q, RT_years, 'LineWidth', 3)
set(gca, 'YScale', 'log') % Setting Y-axis to log scale
grid on
ylabel('Recurrence Time (years)', 'FontSize', 20); % Updated label to years
xlabel('Daily Maximum TWL (m)', 'FontSize', 20);
title('Recurrence Time of Daily Maximum TWL', 'FontSize', 26);
saveas(fig, [pwd '/Results/Plots/Recurrence_Time_TWL.png'])

%%
% Assuming TWL_DailyMax.TWL_DailyMax contains the daily maximum TWL values

% Convert daily data to weekly, monthly, and yearly maxima
dates = TWL_DailyMax.DateDays; % Assuming your data includes a datetime array named Date
TWL_values = TWL_DailyMax.TWL_DailyMax;

% Weekly Maxima
TWL_WeeklyMax = retime(timetable(dates, TWL_values), 'weekly', 'max');

% Monthly Maxima
TWL_MonthlyMax = retime(timetable(dates, TWL_values), 'monthly', 'max');

% Yearly Maxima
TWL_YearlyMax = retime(timetable(dates, TWL_values), 'yearly', 'max');

% Plotting
fig = figure('visible', 'on');
hold on;

% Daily
[Cdf_d, q_d] = ecdf(TWL_DailyMax.TWL_DailyMax);
ExProb_d = 1 - Cdf_d;
RT_days_d = 1 ./ ExProb_d; % Recurrence time in days
RT_days_d(end) = RT_days_d(end-1);
RT_years_d = RT_days_d / 365.25; % Convert to years
scatter(q_d, RT_years_d, 'd', 'LineWidth', 3, 'MarkerEdgeColor', 'black') % Daily, using diamond

% Weekly
[Cdf_w, q_w] = ecdf(TWL_WeeklyMax.TWL_values);
ExProb_w = 1 - Cdf_w;
RT_weeks = 1 ./ ExProb_w; % Recurrence time in weeks
RT_weeks(end) = RT_weeks(end-1);
RT_years_w = RT_weeks / (365.25/7); % Convert to years
scatter(q_w, RT_years_w, 'o', 'LineWidth', 3, 'MarkerEdgeColor', 'blue') % Weekly, using circle

% Monthly
[Cdf_m, q_m] = ecdf(TWL_MonthlyMax.TWL_values);
ExProb_m = 1 - Cdf_m;
RT_months = 1 ./ ExProb_m; % Recurrence time in months
RT_months(end) = RT_months(end-1);
RT_years_m = RT_months / (365.25/30); % Convert to years
scatter(q_m, RT_years_m, '^', 'LineWidth', 3, 'MarkerEdgeColor', 'red') % Monthly, using triangle up

% Yearly
[Cdf_y, q_y] = ecdf(TWL_YearlyMax.TWL_values);
ExProb_y = 1 - Cdf_y;
RT_years_y = 1 ./ ExProb_y; % Recurrence time in years
RT_years_y(end) = RT_years_y(end-1);
scatter(q_y, RT_years_y, 's', 'LineWidth', 3, 'MarkerEdgeColor', 'green') % Yearly, using square

set(gca, 'YScale', 'log') % Setting Y-axis to log scale
grid on
ylabel('Recurrence Time (years)', 'FontSize', 20);
xlabel('Maximum TWL (m)', 'FontSize', 20);
title('Recurrence Time of Maximum TWL', 'FontSize', 26);
legend('Daily Max', 'Weekly Max', 'Monthly Max', 'Yearly Max', 'Location', 'best');
set(gca, 'FontSize', 16); % Increase size of tick labels

% Save the figure with high resolution
print(fig, [pwd '/Results/Plots/Recurrence_Time_TWL_All.png'], '-dpng', '-r1200');

hold off;

%%
%%
% saveas(fig, [pwd '/Results/Plots/Recurrence_Time_TWL.png'])
% 
% close(fig);


% set(gca,'FontSize',20)

% User input for decision
% Analysis = input('\n\nChoose among the two options:\n\n 1 ---> Complete Series Analysis \n\n 2 ---> Seasonal Analysis\n\n');
Analysis = 1;
switch Analysis

    case 1 % Crossing Analysis -- Complete Series

        IntArr = f_IA(TWL, Date, Threshold, Slope);
        [MaxMarks, Nmc] = f_MandNmc(TWL, Date, Threshold, Slope);

        % Pre-allocation
        Lambda = zeros(1, numel(fieldnames(IntArr)));
        NumIA = zeros(1, numel(fieldnames(IntArr)));
        SumIA = zeros(1, numel(fieldnames(IntArr)));
        namesIA = char(fieldnames(IntArr));

        % Estimating Lambda when at least 20 events are present
        for i = 1:numel(fieldnames(IntArr))

            name = strcat('IntArr.', namesIA(i, :));
            var = eval(name);
            Lambda(i) = 1 / mean(var);
            NumIA(i) = length(var);
            SumIA(i) = sum(var);

            clear name var

        end

        clear i ColData namesIA


        % Pre-allocation
        Mu = zeros(1, numel(fieldnames(MaxMarks)));
        NumM = zeros(1, numel(fieldnames(MaxMarks)));
        SumM = zeros(1, numel(fieldnames(MaxMarks)));
        namesM = char(fieldnames(MaxMarks));
        Lambda2 = zeros(1, numel(fieldnames(MaxMarks)));

        % Estimating Mu & Lambda2 when at least 20 events are present
        for i = 1:numel(fieldnames(MaxMarks))

            name = strcat('MaxMarks.', namesM(i, :));
            var = eval(name);
            Mu(i) = mean(var);
            Lambda2(i) = length(var) / length(Date);
            NumM(i) = length(var);
            SumM(i) = sum(var);

            clear var

        end

        clear i namesM


        % Saving results IntArr
        % Pre-allocation
        namesIA = fieldnames(IntArr);
        ColData = size(Data, 2);
        ColToAdd = sum(structfun(@length, IntArr) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        Data = [Data, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesIA)

            name = strcat('IntArr.', namesIA{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            Data(:, ColData+Idx) = table(Var);
            Data.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesIA Idx

        % Saving results Max Marks
        % Pre-allocation
        namesM = fieldnames(MaxMarks);
        ColData = size(Data, 2);
        ColToAdd = sum(structfun(@length, MaxMarks) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        Data = [Data, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesM)

            name = strcat('MaxMarks.', namesM{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            Data(:, ColData+Idx) = table(Var);
            Data.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesM Idx

        % Saving results NumMarksPerClu
        % Pre-allocation
        namesNmc = fieldnames(Nmc);
        ColData = size(Data, 2);
        ColToAdd = sum(structfun(@length, Nmc) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        Data = [Data, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesNmc)

            name = strcat('Nmc.', namesNmc{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            Data(:, ColData+Idx) = table(Var);
            Data.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesNmc Idx


        % Results figures
        fig = figure('visible', 'off');
        plot(Threshold(Lambda > 0), Lambda(Lambda > 0)*30, '-', 'LineWidth', 2.5);
        title('Lambda Response to Threshold');
        xlabel('Threshold Value');
        ylabel('Lambda Value * 30');
        saveas(fig, [pwd '/Results/Plots/Lambda_Response_to_Threshold.png'])
        close(fig);

        fig = figure('visible', 'off');
        plot(Threshold(Mu > 0), Mu(Mu > 0), '-', 'LineWidth', 2.5);
        title('Average Mark Per Event (m)');
        xlabel('Threshold');
        ylabel('\mu (m)');
        saveas(fig, [pwd '/Results/Plots/Average_Mark_Per_Event.png'])
        close(fig);

        fig = figure('visible', 'off');
        plot(Threshold(Lambda2 > 0), Lambda2(Lambda2 > 0)*30, '-', 'LineWidth', 2.5);
        title('Lambda2 Response to Threshold');
        xlabel('Threshold Value');
        ylabel('Lambda2 Value * 30');
        saveas(fig, [pwd '/Results/Plots/Lambda2_Response_to_Threshold.png'])
        close(fig);


        % Saving results
        Var = NaN * zeros(L, 1);
        Var(1:length(Lambda(Lambda > 0))) = Lambda(Lambda > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Threshold)) = Threshold;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumIA)) = NumIA;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumIA)) = SumIA;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'HS_Threshold', 'HS_Lambda', 'HS_NumIA', 'HS_SumIA'};
        Data = [Data, T]; clear T


        Var = NaN * zeros(L, 1);
        Var(1:length(Mu(Mu > 0))) = Mu(Mu > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Lambda2(Lambda2 > 0))) = Lambda2(Lambda2 > 0);
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumM)) = NumM;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumM)) = SumM;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'HS_Lambda2', 'HS_Mu', 'HS_NumM', 'HS_SumM'};
        Data = [Data, T]; clear T

        clear NumIA NumM SumIA SumM

        % Test for exponential distribution

        % Marks Test
        namesM = fieldnames(MaxMarks);
        MarksTestResults = zeros(size(namesM));
        %         MarksADTestResults = zeros(size(namesM));
        MarksCMTestResults = zeros(size(namesM));

        for i = 1:numel(namesM)

            name = strcat('MaxMarks.', namesM{i, :});
            var = eval(name);

            %             % % Anderson Darling test
            %             [~,p] = adtest(var,'Distribution','exp');
            %             MarksADTestResults(i) = p;
            %             clear p

            % % % Cramer Von-mises test
            x = flip(sort(var'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var, 'CDF', [x, y]);
            MarksCMTestResults(i) = p;
            clear p x y
            % %Lilliefors test
            if numel(var) > 4

                [~, p, ~] = lillietest(var, 'Dist', 'exp', 'MCTol', 1e-2);
                MarksTestResults(i) = p;

            end

            clear var name p

        end

        clear i namesM

        % Inter-arrivals Test
        namesIA = fieldnames(IntArr);
        %         IATestResults = zeros(size(namesIA));
        %         IAADTestResults = zeros(size(namesIA));
        IALITestResults = zeros(size(namesIA));
        IACMTestResults = zeros(size(namesIA));

        for i = 1:numel(namesIA)

            name = strcat('IntArr.', namesIA{i, :});
            var = eval(name) - 2;

            %             if (length(var) < 40)
            %
            %                 N = floor(length(var)/5);
            %
            %             else
            %
            %                 N = 8;
            %
            %             end
            %             if(N>1)
            %                 H = histogram(var,N);
            %                 LamIA = 1/mean(var);
            %                 Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
            %                 Exp = Cdf*(length(var));
            %                 Obs = H.BinCounts;
            %
            %                 [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
            %
            %                 IATestResults(i) = p;
            %
            %                 clear p
            %             end
            % % %Anderson Darling test
            %              var2 = var + (0.98*rand(length(var),1) -0.49)';
            %              [~,p] = adtest(var2,'Distribution','exp');
            %
            %              IAADTestResults(i) = p;
            %              clear p var2

            % % %Cramer Von-mises test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            x = flip(sort(var2'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var2, 'CDF', [x, y]);
            IACMTestResults(i) = p;
            clear p var2 x y
            %  %Lilliefors test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            [~, p, ~] = lillietest(var2, 'Dist', 'exp', 'MCTol', 1e-2);
            IALITestResults(i) = p;


            clear var var2 var3 name name2 N H LamIA Cdf Exp Obs p

        end

        clear i namesIA namesM

        Var = NaN * zeros(L, 1);
        Var(1:length(MarksTestResults)) = MarksTestResults;
        %         Var2 = NaN*zeros(L,1); Var2(1:length(MarksADTestResults)) = MarksADTestResults;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(MarksCMTestResults)) = MarksCMTestResults;
        %         Var4 = NaN*zeros(L,1); Var4(1:length(IATestResults)) = IATestResults;
        %         Var5 = NaN*zeros(L,1); Var5(1:length(IAADTestResults)) = IAADTestResults;
        Var6 = NaN * zeros(L, 1);
        Var6(1:length(IALITestResults)) = IALITestResults;
        Var7 = NaN * zeros(L, 1);
        Var7(1:length(IACMTestResults)) = IACMTestResults;
        T = table(Var, Var3, Var6, Var7); clear Var Var2 Var3 Var4 Var5 Var6 Var7
        T.Properties.VariableNames = {'HS_MarksLITest', 'HS_MarksCMTest', 'HS_IntArrLITest', 'HS_IntArrCMTest'};
        Data = [Data, T]; clear T

        % % Removing extreme data before testing

        % Marks Test
        namesM = fieldnames(MaxMarks);
        MarksTestResults = zeros(size(namesM));
        %         MarksADTestResults = zeros(size(namesM));
        MarksCMTestResults = zeros(size(namesM));


        for i = 1:numel(namesM)

            name = strcat('MaxMarks.', namesM{i, :});
            var = eval(name);
            var = var(var <= mean(var)*log(10));

            %             % % Anderson Darling test
            %             [~,p] = adtest(var,'Distribution','exp');
            %             MarksADTestResults(i) = p;
            %             clear p

            % % % Cramer Von-mises test
            x = flip(sort(var'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var, 'CDF', [x, y]);
            MarksCMTestResults(i) = p;
            clear p x y
            % %Lilliefors test
            if numel(var) > 4

                [~, p, ~] = lillietest(var, 'Dist', 'exp', 'MCTol', 1e-2);
                MarksTestResults(i) = p;

            end

            clear var name p

        end

        clear i namesM

        % Inter-arrivals Test
        namesIA = fieldnames(IntArr);
        %         IATestResults = zeros(size(namesIA));
        %         IAADTestResults = zeros(size(namesIA));
        IALITestResults = zeros(size(namesIA));
        IACMTestResults = zeros(size(namesIA));

        for i = 1:numel(namesIA)

            name = strcat('IntArr.', namesIA{i, :});
            var = eval(name) - 2;
            var = var(var <= log(10)*mean(var));


            %             if (length(var) < 40)
            %
            %                 N = floor(length(var)/5);
            %
            %             else
            %
            %                 N = 8;
            %
            %             end
            %             if(N>1)
            %                 H = histogram(var,N);
            %                 LamIA = 1/mean(var);
            %                 Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
            %                 Exp = Cdf*(length(var));
            %                 Obs = H.BinCounts;
            %
            %                 [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
            %
            %                 IATestResults(i) = p;
            %
            %                 clear p
            %             end
            % % %Anderson Darling test
            %              var2 = var + (0.98*rand(length(var),1) -0.49)';
            %              [~,p] = adtest(var2,'Distribution','exp');
            %
            %              IAADTestResults(i) = p;
            %              clear p var2

            % % %Cramer Von-mises test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            x = flip(sort(var2'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var2, 'CDF', [x, y]);
            IACMTestResults(i) = p;
            clear p var2 x y
            %  %Lilliefors test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            [~, p, ~] = lillietest(var2, 'Dist', 'exp', 'MCTol', 1e-2);
            IALITestResults(i) = p;


            clear var var2 var3 name name2 N H LamIA Cdf Exp Obs p

        end

        clear i namesIA namesM

        Var = NaN * zeros(L, 1);
        Var(1:length(MarksTestResults)) = MarksTestResults;
        %         Var2 = NaN*zeros(L,1); Var2(1:length(MarksADTestResults)) = MarksADTestResults;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(MarksCMTestResults)) = MarksCMTestResults;
        %         Var4 = NaN*zeros(L,1); Var4(1:length(IATestResults)) = IATestResults;
        %         Var5 = NaN*zeros(L,1); Var5(1:length(IAADTestResults)) = IAADTestResults;
        Var6 = NaN * zeros(L, 1);
        Var6(1:length(IALITestResults)) = IALITestResults;
        Var7 = NaN * zeros(L, 1);
        Var7(1:length(IACMTestResults)) = IACMTestResults;
        T = table(Var, Var3, Var6, Var7); clear Var Var2 Var3 Var4 Var5 Var6 Var7
        T.Properties.VariableNames = {'HS_MarksTest2', 'HS_MarksCMTest2', 'HS_IntArrLITest2', 'HS_IntArrCMTest2'};
        Data = [Data, T]; clear T

        DailySWH = Data.SignificantWaveHeight(rmmissing(Data.IdxHourlyToDailyMax));
        DailyPP = Data.PeakPeriod(rmmissing(Data.IdxHourlyToDailyMax));

        Var = NaN * zeros(L, 1);
        Var(1:length(DailySWH)) = DailySWH;
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(DailyPP)) = DailyPP;

        T = table(Var, Var2); clear Var Var2
        T.Properties.VariableNames = {'DailySWH', 'DailyPP'};
        Data = [Data, T]; clear T

    case 2 % Crossing Analysis -- Season Series
        fprint('hey')

        prompt = {'High-Season starting month:', 'High-Season starting day:', 'High-Season ending month:', 'High-Season ending day:'};
        dlgtitle = 'Seasonal Analysis';
        dims = [1, 35; 1, 35; 1, 35; 1, 35];
        definput = {'8', '16', '5', '15'};
        answer = inputdlg(prompt, dlgtitle, dims, definput);

        clear prompt dlgtitle dims definput

        DataHS = Data;
        DataLS = Data;
        clear Data

        % Splitting in seasons
        [HighSeason, NumDaysHS, YHS, MonthHS, LowSeason, NumDaysLS, YLS, MonthLS] = f_SeasonSplit(Date, TWL_DailyMax, answer);


        % HIGH-SEASON
        % Inter-arrivals, Marks & Number of Marks per Cluster
        namesY = fieldnames(HighSeason);
        for i = 1:length(namesY)

            if (~isempty(eval(strcat('HighSeason.', namesY{i, :}))))

                TWL = eval(strcat('HighSeason.', namesY{i, :}, '.TWL_DailyMax'));
                Date = eval(strcat('HighSeason.', namesY{i, :}, '.DateDays'));
                IntArr = f_IA(TWL, Date, Threshold, Slope);
                [MaxMarks, Nmc] = f_MandNmc(TWL, Date, Threshold, Slope);

                namesIA = fieldnames(IntArr);

                for j = 1:length(namesIA)

                    VarName = strcat(namesY{i, :}, '_', namesIA{j, :}, '_HS');
                    InterArrHS.(VarName) = IntArr.(strcat(namesIA{j, :}));
                    clear VarName

                end

                clear j namesIA

                namesM = fieldnames(MaxMarks);

                for j = 1:length(namesM)

                    VarName = strcat(namesY{i, :}, '_', namesM{j, :}, '_HS');
                    MarksHS.(VarName) = MaxMarks.(strcat(namesM{j, :}));
                    NumMarksPerCluHS.(VarName) = Nmc.(strcat(namesM{j, :}));

                end

                clear j namesM
                clear TWL Date IntArr MaxMarks Nmc

            end


        end


        % LOW-SEASON
        % Inter-arrivals, Marks & Number of Marks per Cluster
        namesY = fieldnames(LowSeason);
        for i = 1:length(namesY)

            if (~isempty(eval(strcat('LowSeason.', namesY{i, :}))))

                TWL = eval(strcat('LowSeason.', namesY{i, :}, '.TWL_DailyMax'));
                Date = eval(strcat('LowSeason.', namesY{i, :}, '.DateDays'));
                IntArr = f_IA(TWL, Date, Threshold, Slope);
                [MaxMarks, Nmc] = f_MandNmc(TWL, Date, Threshold, Slope);

                namesIA = fieldnames(IntArr);

                for j = 1:length(namesIA)

                    VarName = strcat(namesY{i, :}, '_', namesIA{j, :}, '_LS');
                    InterArrLS.(VarName) = IntArr.(strcat(namesIA{j, :}));
                    clear VarName

                end

                clear j namesIA

                namesM = fieldnames(MaxMarks);

                for j = 1:length(namesM)

                    VarName = strcat(namesY{i, :}, '_', namesM{j, :}, '_LS');
                    MarksLS.(VarName) = MaxMarks.(strcat(namesM{j, :}));
                    NumMarksPerCluLS.(VarName) = Nmc.(strcat(namesM{j, :}));

                end

                clear j namesM
                clear TWL Date IntArr MaxMarks Nmc

            end

        end

        clear i namesY


        % HIGH-SEASON
        % Aggregating the data by year
        names = fieldnames(InterArrHS);
        Control = zeros(size(names));

        for i = 1:length(names)

            subStr = extractAfter(names{i}, strrep(strcat('Slope', num2str(Slope), '_'), '.', '_'));

            if (~ismember(str2num(extractAfter(strrep(extractBefore(subStr, '_HS'), '_', '.'), 'Thr')), Control))

                filteredStruct = rmfield(InterArrHS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                c = struct2cell(filteredStruct);
                VarName = strcat('Slope', extractAfter(names{i}, strcat('Slope')));
                IntArrHS.(VarName) = horzcat(c{:});

            end

            Control(i) = str2num(extractAfter(strrep(extractBefore(subStr, '_HS'), '_', '.'), 'Thr'));

            clear VarName subStr filteredStruct c

        end

        clear i names InterArrHS Control


        names = fieldnames(MarksHS);
        Control = zeros(size(names));

        for i = 1:length(names)

            subStr = extractAfter(names{i}, strrep(strcat('Slope', num2str(Slope), '_'), '.', '_'));

            if (~ismember(str2num(extractAfter(strrep(extractBefore(subStr, '_HS'), '_', '.'), 'Thr')), Control))

                filteredStruct = rmfield(MarksHS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                filteredStruct2 = rmfield(NumMarksPerCluHS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                c = struct2cell(filteredStruct);
                c2 = struct2cell(filteredStruct2);
                VarName = strcat('Slope', extractAfter(names{i}, strcat('Slope')));
                MaxMarksHS.(VarName) = horzcat(c{:});
                NmcHS.(VarName) = horzcat(c2{:});

            end

            Control(i) = str2num(extractAfter(strrep(extractBefore(subStr, '_HS'), '_', '.'), 'Thr'));

            clear VarName subStr filteredStruct filteredStruct2 c c2

        end

        clear i names MarksHS NumMarksPerCluHS Control

        % LOW-SEASON
        % Aggregating the data by year
        names = fieldnames(InterArrLS);
        Control = zeros(size(names));

        for i = 1:length(names)

            subStr = extractAfter(names{i}, strrep(strcat('Slope', num2str(Slope), '_'), '.', '_'));

            if (~ismember(str2num(extractAfter(strrep(extractBefore(subStr, '_LS'), '_', '.'), 'Thr')), Control))

                filteredStruct = rmfield(InterArrLS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                c = struct2cell(filteredStruct);
                VarName = strcat('Slope', extractAfter(names{i}, strcat('Slope')));
                IntArrLS.(VarName) = horzcat(c{:});

            end

            Control(i) = str2num(extractAfter(strrep(extractBefore(subStr, '_LS'), '_', '.'), 'Thr'));

            clear VarName subStr filteredStruct c

        end

        clear i names InterArrLS Control

        names = fieldnames(MarksLS);
        Control = zeros(size(names));

        for i = 1:length(names)

            subStr = extractAfter(names{i}, strrep(strcat('Slope', num2str(Slope), '_'), '.', '_'));

            if (~ismember(str2num(extractAfter(strrep(extractBefore(subStr, '_LS'), '_', '.'), 'Thr')), Control))

                filteredStruct = rmfield(MarksLS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                filteredStruct2 = rmfield(NumMarksPerCluLS, names(find(cellfun(@isempty, strfind(names, subStr)))));
                c = struct2cell(filteredStruct);
                c2 = struct2cell(filteredStruct2);
                VarName = strcat('Slope', extractAfter(names{i}, strcat('Slope')));
                MaxMarksLS.(VarName) = horzcat(c{:});
                NmcLS.(VarName) = horzcat(c2{:});

            end

            Control(i) = str2num(extractAfter(strrep(extractBefore(subStr, '_LS'), '_', '.'), 'Thr'));

            clear VarName subStr filteredStruct filteredStruct2 c c2

        end

        clear i names MarksLS NumMarksPerCluLS Control


        % HIGH-SEASON
        % Lambda
        % Pre-allocation
        namesIA = fieldnames(IntArrHS);
        LambdaHS = zeros(1, length(namesIA));
        NumIAHS = zeros(1, length(namesIA));
        SumIAHS = zeros(1, length(namesIA));

        % Estimating Lambda when at least 20 events are present -- Saving results
        for i = 1:length(namesIA)

            name = strcat('IntArrHS.', namesIA{i, :});
            var = eval(name);

            LambdaHS(i) = 1 / mean(var);
            NumIAHS(i) = length(var);
            SumIAHS(i) = sum(var);

            clear name var

        end

        clear i ColData namesIA

        % Lambda2 & Mu
        % Pre-allocation
        namesM = fieldnames(MaxMarksHS);
        MuHS = zeros(1, length(namesM));
        Lambda2HS = zeros(1, length(namesM));
        NumMHS = zeros(1, length(namesM));
        SumMHS = zeros(1, length(namesM));

        for i = 1:length(namesM)

            name = strcat('MaxMarksHS.', namesM{i, :});
            var = eval(name);

            MuHS(i) = mean(var);
            Lambda2HS(i) = length(var) / NumDaysHS;
            NumMHS(i) = length(var);
            SumMHS(i) = sum(var);

            clear var

        end

        clear i namesM

        % LOW-SEASON
        % Lambda
        % Pre-allocation
        namesIA = fieldnames(IntArrLS);
        LambdaLS = zeros(1, length(namesIA));
        NumIALS = zeros(1, length(namesIA));
        SumIALS = zeros(1, length(namesIA));


        % Estimating Lambda when at least 20 events are present -- Saving results
        for i = 1:length(namesIA)

            name = strcat('IntArrLS.', namesIA{i, :});
            var = eval(name);

            LambdaLS(i) = 1 / mean(var);
            NumIALS(i) = length(var);
            SumIALS(i) = length(var);

            clear name var

        end

        clear i ColData namesIA

        % Lambda2 & Mu
        % Pre-allocation
        namesM = fieldnames(MaxMarksLS);
        MuLS = zeros(1, length(namesM));
        Lambda2LS = zeros(1, length(namesM));
        NumMLS = zeros(1, length(namesM));
        SumMLS = zeros(1, length(namesM));

        for i = 1:length(namesM)

            name = strcat('MaxMarksLS.', namesM{i, :});
            var = eval(name);

            MuLS(i) = mean(var);
            Lambda2LS(i) = length(var) / NumDaysLS;
            NumMLS(i) = length(var);
            SumMLS(i) = length(var);

            clear var

        end

        clear i namesM


        % HIGH-SEASON
        % Saving results IntArrHS
        % Pre-allocation
        namesIA = fieldnames(IntArrHS);
        ColData = size(DataHS, 2);
        ColToAdd = sum(structfun(@length, IntArrHS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataHS = [DataHS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesIA)

            name = strcat('IntArrHS.', namesIA{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataHS(:, ColData+Idx) = table(Var);
            DataHS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesIA Idx

        % Saving results Max Marks
        % Pre-allocation
        namesM = fieldnames(MaxMarksHS);
        ColData = size(DataHS, 2);
        ColToAdd = sum(structfun(@length, MaxMarksHS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataHS = [DataHS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesM)

            name = strcat('MaxMarksHS.', namesM{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataHS(:, ColData+Idx) = table(Var);
            DataHS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesM Idx

        % Saving results NumMarksPerClu
        % Pre-allocation
        namesNmc = fieldnames(NmcHS);
        ColData = size(DataHS, 2);
        ColToAdd = sum(structfun(@length, NmcHS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataHS = [DataHS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesNmc)

            name = strcat('NmcHS.', namesNmc{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataHS(:, ColData+Idx) = table(Var);
            DataHS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('HS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesNmc Idx


        % LOW-SEASON
        % Saving results IntArr
        % Pre-allocation
        namesIA = fieldnames(IntArrLS);
        ColData = size(DataLS, 2);
        ColToAdd = sum(structfun(@length, IntArrLS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataLS = [DataLS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesIA)

            name = strcat('IntArrLS.', namesIA{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataLS(:, ColData+Idx) = table(Var);
            DataLS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('LS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesIA Idx

        % Saving results Max Marks
        % Pre-allocation
        namesM = fieldnames(MaxMarksLS);
        ColData = size(DataLS, 2);
        ColToAdd = sum(structfun(@length, MaxMarksLS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataLS = [DataLS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesM)

            name = strcat('MaxMarksLS.', namesM{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataLS(:, ColData+Idx) = table(Var);
            DataLS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('LS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesM Idx

        % Saving results NumMarksPerClu
        % Pre-allocation
        namesNmc = fieldnames(NmcLS);
        ColData = size(DataLS, 2);
        ColToAdd = sum(structfun(@length, NmcLS) > 20); % Number of columns to add
        Col = table(NaN*zeros(L, ColToAdd));
        Col = splitvars(Col);
        clear ColToAdd
        DataLS = [DataLS, Col]; clear Col
        Idx = 1;

        for i = 1:length(namesNmc)

            name = strcat('NmcLS.', namesNmc{i, :});
            var = eval(name);

            % Saving results
            Var = NaN * zeros(L, 1);
            Var(1:length(var)) = var;
            DataLS(:, ColData+Idx) = table(Var);
            DataLS.Properties.VariableNames(ColData+Idx) = {strrep(strcat('LS_', name), '.', '_')};

            Idx = Idx + 1;

            clear Var

            clear var name

        end

        clear i ColData namesNmc Idx


        % HIGH-SEASON
        % Saving results
        Var = NaN * zeros(L, 1);
        Var(1:length(LambdaHS(LambdaHS > 0))) = LambdaHS(LambdaHS > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Threshold)) = Threshold;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumIAHS)) = NumIAHS;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumIAHS)) = SumIAHS;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'HS_Threshold', 'HS_Lambda', 'HS_NumIA', 'HS_SumIA'};
        DataHS = [DataHS, T]; clear T


        Var = NaN * zeros(L, 1);
        Var(1:length(MuHS(MuHS > 0))) = MuHS(MuHS > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Lambda2HS(Lambda2HS > 0))) = Lambda2HS(Lambda2HS > 0);
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumMHS)) = NumMHS;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumMHS)) = SumMHS;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'HS_Lambda2', 'HS_Mu', 'HS_NumM', 'HS_SumM'};
        DataHS = [DataHS, T]; clear T


        % LOW-SEASON
        % Saving results
        Var = NaN * zeros(L, 1);
        Var(1:length(LambdaLS(LambdaLS > 0))) = LambdaLS(LambdaLS > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Threshold)) = Threshold;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumIALS)) = NumIALS;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumIALS)) = SumIALS;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'LS_Threshold', 'LS_Lambda', 'LS_NumIA', 'LS_SumIA'};
        DataLS = [DataLS, T]; clear T


        Var = NaN * zeros(L, 1);
        Var(1:length(MuLS(MuLS > 0))) = MuLS(MuLS > 0);
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(Lambda2LS(Lambda2LS > 0))) = Lambda2LS(Lambda2LS > 0);
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(NumMLS)) = NumMLS;
        Var4 = NaN * zeros(L, 1);
        Var4(1:length(SumMLS)) = SumMLS;
        T = table(Var2, Var, Var3, Var4); clear Var Var2 Var3 Var4
        T.Properties.VariableNames = {'LS_Lambda2', 'LS_Mu', 'LS_NumM', 'LS_SumM'};
        DataLS = [DataLS, T]; clear T


        % HIGH-SEASON
        % Test for exponential distribution

        % Marks Test
        namesM = fieldnames(MaxMarksHS);
        MarksTestResultsHS = zeros(size(namesM));
        MarksCMTestResultsHS = zeros(size(namesM));
        %         MarksADTestResultsHS = zeros(size(namesM));

        for i = 1:numel(namesM)

            name = strcat('MaxMarksHS.', namesM{i, :});
            var = eval(name);
            % % % Anderson Darling test
            %             [~,p] = adtest(var,'Distribution','exp');
            %             MarksADTestResultsHS(i) = p;
            %             clear p

            % % Cramer Von-mises test
            x = flip(sort(var'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var, 'CDF', [x, y]);
            MarksCMTestResultsHS(i) = p;
            clear p x y
            % % Lilliefors test
            if numel(var) > 4

                [~, p, ~] = lillietest(var, 'Dist', 'exp', 'McTol', 1e-2);
                MarksTestResultsHS(i) = p;

            end

            clear var name p

        end

        clear i namesM

        % Inter-arrivals Test
        namesIA = fieldnames(IntArrHS);
        %         IATestResultsHS = zeros(size(namesIA));
        %         IAADTestResultsHS = zeros(size(namesIA));
        IACMTestResultsHS = zeros(size(namesIA));
        IALITestResultsHS = zeros(size(namesIA));

        for i = 1:numel(namesIA)

            name = strcat('IntArrHS.', namesIA{i, :});
            var = eval(name) - 2;


            %             if (length(var) < 40)
            %
            %                 N = floor(length(var)/5);
            %
            %             else
            %
            %                 N = 8;
            %
            %             end
            %             if(N>1)
            %                 H = histogram(var,N);
            %                 Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
            %                 Exp = Cdf*(length(var));
            %                 Obs = H.BinCounts;
            %
            %                 [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
            %
            %                 IATestResultsHS(i) = p;
            %                 clear p
            %             end
            % % %Anderson Darling test
            %              var2 = var + (0.98*rand(length(var),1) -0.49)';
            %              [~,p] = adtest(var2,'Distribution','exp');
            %
            %              IAADTestResultsHS(i) = p;
            %              clear p var2

            % % %Cramer Von-mises test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            x = flip(sort(var2'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var2, 'CDF', [x, y]);
            IACMTestResultsHS(i) = p;
            clear p var2 x y
            %  %Lilliefors test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            [~, p, ~] = lillietest(var2, 'Dist', 'exp');
            IALITestResultsHS(i) = p;

            clear var var2 var3 name name2 N H LamIA Cdf Exp Obs p

        end

        clear i namesIA namsM


        %         % LOW-SEASON
        %         % Test for exponential distribution
        %
        %         % Marks Test
        %         namesM = fieldnames(MaxMarksLS);
        %         MarksTestResultsLS = zeros(size(namesM));
        %
        %         for i = 1:numel(namesM)
        %
        %             name = strcat('MaxMarksLS.',namesM{i,:});
        %             var = eval(name); var = unique(var);
        %
        %             if numel(var) > 4
        %
        %             [~,p,~] = lillietest(var,'Dist','exp','MCTol',1e-2);
        %             MarksTestResultsLS(i) = p;
        %
        %             end
        %
        %             clear var name p
        %
        %         end
        %
        %         clear i namesM
        %
        %         % Inter-arrivals Test
        %         namesIA = fieldnames(IntArrLS);
        %         IATestResultsLS = zeros(size(namesIA));
        %
        %         for i = 1:numel(namesIA)
        %
        %             name = strcat('IntArrLS.',namesIA{i,:});
        %             var = eval(name)-2;
        %             if (length(var) < 40)
        %
        %                 N = floor(length(var)/5);
        %
        %             else
        %
        %                 N = 8;
        %
        %             end
        %             H = histogram(var,N);
        %             LamIA = 1/mean(var);
        %             Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
        %             Exp = Cdf*(length(var));
        %             Obs = H.BinCounts;
        %
        %             [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
        %
        %             IATestResultsLS(i) = p;
        %
        %             clear var name N H LamIA Cdf Exp Obs p
        %
        %         end
        %
        %         clear i namesIA


        % Saving results
        Var = NaN * zeros(L, 1);
        Var(1:length(MarksTestResultsHS)) = MarksTestResultsHS;
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(MarksCMTestResultsHS)) = MarksCMTestResultsHS;
        %         Var3 = NaN*zeros(L,1); Var3(1:length(MarksADTestResultsHS)) = MarksADTestResultsHS;
        %        Var4 = NaN*zeros(L,1); Var4(1:length(IATestResultsHS)) = IATestResultsHS;
        %        Var5 = NaN*zeros(L,1); Var5(1:length(IAADTestResultsHS)) = IAADTestResultsHS;
        Var6 = NaN * zeros(L, 1);
        Var6(1:length(IALITestResultsHS)) = IALITestResultsHS;
        Var7 = NaN * zeros(L, 1);
        Var7(1:length(IACMTestResultsHS)) = IACMTestResultsHS;

        T = table(Var, Var2, Var6, Var7); clear Var Var2 Var 6 Var 7
        T.Properties.VariableNames = {'HS_MarksLITest', 'HS_MarksCMTest', 'HS_IntArrLITest', 'HS_IntArrCMTest'};
        DataHS = [DataHS, T]; clear T

        %         Var = NaN*zeros(L,1); Var(1:length(MarksTestResultsLS)) = MarksTestResultsLS;
        %         Var2 = NaN*zeros(L,1); Var2(1:length(IATestResultsLS)) = IATestResultsLS;
        %         T = table(Var, Var2); clear Var Var2
        %         T.Properties.VariableNames = {'LS_MarksTest', 'LS_IntArrTest'};
        %         DataLS = [DataLS, T]; clear T

        % Removing extreme data before testing
        % HIGH-SEASON
        % Test for exponential distribution

        % Marks Test
        namesM = fieldnames(MaxMarksHS);
        MarksTestResultsHS = zeros(size(namesM));
        %         MarksADTestResultsHS = zeros(size(namesM));
        MarksCMTestResultsHS = zeros(size(namesM));

        for i = 1:numel(namesM)

            name = strcat('MaxMarksHS.', namesM{i, :});
            var = eval(name);
            var = var(var <= mean(var)*log(10));

            % % % Anderson Darling test
            %             [~,p] = adtest(var,'Distribution','exp');
            %             MarksADTestResultsHS(i) = p;
            %             clear p

            % % Cramer Von-mises test
            x = flip(sort(var'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var, 'CDF', [x, y]);
            MarksCMTestResultsHS(i) = p;
            clear p x y
            % % Lilliefors test
            if numel(var) > 4

                [~, p, ~] = lillietest(var, 'Dist', 'exp', 'McTol', 1e-2);
                MarksTestResultsHS(i) = p;

            end

            clear var name p

        end

        clear i namesM

        % Inter-arrivals Test
        namesIA = fieldnames(IntArrHS);
        %         IATestResultsHS = zeros(size(namesIA));
        %         IAADTestResultsHS = zeros(size(namesIA));
        IACMTestResultsHS = zeros(size(namesIA));
        IALITestResultsHS = zeros(size(namesIA));

        for i = 1:numel(namesIA)

            name = strcat('IntArrHS.', namesIA{i, :});
            var = eval(name) - 2;

            var = var(var <= log(10)*mean(var));


            %             if (length(var) < 40)
            %
            %                 N = floor(length(var)/5);
            %
            %             else
            %
            %                 N = 8;
            %
            %             end
            %             if(N>1)
            %                 H = histogram(var,N);
            %                 LamIA = 1/mean(var);
            %                 Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
            %                 Exp = Cdf*(length(var));
            %                 Obs = H.BinCounts;
            %
            %                 [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
            %
            %                 IATestResultsHS(i) = p;
            %             clear p
            %             end
            % % %Anderson Darling test
            %              var2 = var + (0.98*rand(length(var),1) -0.49)';
            %              [~,p] = adtest(var2,'Distribution','exp');
            %
            %              IAADTestResultsHS(i) = p;
            %              clear p var2

            % % %Cramer Von-mises test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            x = flip(sort(var2'));
            y = expcdf(x, mean(x));
            [~, p] = cmtest(var2, 'CDF', [x, y]);
            IACMTestResultsHS(i) = p;
            clear p var2 x y
            %  %Lilliefors test
            var2 = var + (0.98 * rand(length(var), 1) - 0.49)';
            [~, p, ~] = lillietest(var2, 'Dist', 'exp');
            IALITestResultsHS(i) = p;

            clear var var2 var 3 name name2 N H LamIA Cdf Exp Obs p

        end

        clear i namesIA namesM


        %         % LOW-SEASON
        %         % Test for exponential distribution
        %
        %         % Marks Test
        %         namesM = fieldnames(MaxMarksLS);
        %         MarksTestResultsLS = zeros(size(namesM));
        %
        %         for i = 1:numel(namesM)
        %
        %             name = strcat('MaxMarksLS.',namesM{i,:});
        %             var = eval(name); var = unique(var);
        %
        %             if numel(var) > 4
        %
        %             [~,p,~] = lillietest(var,'Dist','exp','MCTol',1e-2);
        %             MarksTestResultsLS(i) = p;
        %
        %             end
        %
        %             clear var name p
        %
        %         end
        %
        %         clear i namesM
        %
        %         % Inter-arrivals Test
        %         namesIA = fieldnames(IntArrLS);
        %         IATestResultsLS = zeros(size(namesIA));
        %
        %         for i = 1:numel(namesIA)
        %
        %             name = strcat('IntArrLS.',namesIA{i,:});
        %             var = eval(name)-2;
        %             if (length(var) < 40)
        %
        %                 N = floor(length(var)/5);
        %
        %             else
        %
        %                 N = 8;
        %
        %             end
        %             H = histogram(var,N);
        %             LamIA = 1/mean(var);
        %             Cdf = 1 - exp(-LamIA.*H.BinEdges); Cdf = Cdf(2:end)-Cdf(1:(end-1));
        %             Exp = Cdf*(length(var));
        %             Obs = H.BinCounts;
        %
        %             [~,p,~] = chi2gof(H.BinEdges(2:end),'Ctrs',H.BinEdges(2:end),'Frequency',Obs,'Expected',Exp,'NParams',1);
        %
        %             IATestResultsLS(i) = p;
        %
        %             clear var name N H LamIA Cdf Exp Obs p
        %
        %         end
        %
        %         clear i namesIA


        % Saving results
        Var = NaN * zeros(L, 1);
        Var(1:length(MarksTestResultsHS)) = MarksTestResultsHS;
        %         Var2 = NaN*zeros(L,1); Var2(1:length(MarksADTestResultsHS)) = MarksADTestResultsHS;
        Var3 = NaN * zeros(L, 1);
        Var3(1:length(MarksCMTestResultsHS)) = MarksCMTestResultsHS;
        %         Var4 = NaN*zeros(L,1); Var4(1:length(IATestResultsHS)) = IATestResultsHS;
        %         Var5 = NaN*zeros(L,1); Var5(1:length(IAADTestResultsHS)) = IAADTestResultsHS;
        Var6 = NaN * zeros(L, 1);
        Var6(1:length(IALITestResultsHS)) = IALITestResultsHS;
        Var7 = NaN * zeros(L, 1);
        Var7(1:length(IACMTestResultsHS)) = IACMTestResultsHS;

        T = table(Var, Var3, Var6, Var7); clear Var Var2 Var3 Var4 Var5 Var 6 Var 7
        T.Properties.VariableNames = {'HS_MarksLITest2', 'HS_MarksCMTest2', 'HS_IntArrLITest2', 'HS_IntArrCMTest2'};
        DataHS = [DataHS, T]; clear T

        DailySWH = DataHS.SignificantWaveHeight(rmmissing(DataHS.IdxHourlyToDailyMax));
        DailyPP = DataHS.PeakPeriod(rmmissing(DataHS.IdxHourlyToDailyMax));

        Var = NaN * zeros(L, 1);
        Var(1:length(DailySWH)) = DailySWH;
        Var2 = NaN * zeros(L, 1);
        Var2(1:length(DailyPP)) = DailyPP;

        T = table(Var, Var2); clear Var Var2
        T.Properties.VariableNames = {'DailySWH', 'DailyPP'};
        DataHS = [DataHS, T]; clear T


    otherwise

        disp('Wrong choice -- Hello World');

end


% Saving all results
%  save('NC_BaldHead_HS.mat','DataHS');
save('CedarLakes.mat', 'Data');
