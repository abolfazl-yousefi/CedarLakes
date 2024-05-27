%%% TWL Analysis plots

%% Locations results upload
% UploadingLocationData;
VA_HS = load('VirginiaMetompkin/VA_HS.mat'); %Slope = 0.02
% VA_HS = VA_HS.DataHS;
VA_HS = VA_HS.Data;


%% Uploading variables from each location
% LocationVariables;
%%% References to MSL
RefVA = rmmissing(VA_HS.Reference);
%%% Number of events per month -- Lambda
LambdaVA = rmmissing(VA_HS.HS_Lambda) * 365;
%%% Number of events per month -- Lambda
Lambda2VA = rmmissing(VA_HS.HS_Lambda2) * 365;
%%% Mark per event -- Mu
MuVA = rmmissing(VA_HS.HS_Mu);
%%% Thresholds
%%% Check if thresholds are of the same lengths as lambda & mu values
ThresholdVA = rmmissing(VA_HS.HS_Threshold);
%%% Wave Runup Parameter
WRP_VA = sqrt(VA_HS.DailySWH.*(9.80665 / (2 * pi)).*(VA_HS.DailyPP.^2));
%%% Average Significant wave height
SWH_VA = mean(rmmissing(VA_HS.DailySWH));
%%% Standard deviation of Significant wave height
SWHsd_VA = std(rmmissing(VA_HS.DailySWH));
%%% Average deep wavelength
DWL_VA = (9.80665 / (2 * pi)) * mean(rmmissing(VA_HS.DailyPP.^2));
%%% Standard deviation deep wavelength
DWLsd_VA = (9.80665 / (2 * pi)) * std(rmmissing(VA_HS.DailyPP.^2));
%%% Tidal amplitude from mean(peaks)-mean(valleys) (using Verified Tide)
VerTA_VA = 0.7922;
%%% Tidal amplitude from mean(peaks) - mean(valleys) (using Predicted Tide)
TA_VA = 0.6587;
%%% Position of positive tests for both inter-arrivals and marks combined
PosVA = 9:14;
RightTailVA = NaN;
% No. of inter-arrival data associated to each threshold
NumdataVA = rmmissing(VA_HS.HS_NumIA);

%% Beach definition
% BeachDefinition;
% Beach elevation definition
BeachElevVA = (1. + RefVA);

%% Errorbar definition
% ErrorBars;


%%% Method 1 - Confidence intervals estimate from exponential [muhat muci] = expfit(variablename);

%%% Lower bound for lambda
IA_Lb_VA = abs(Lambda2VA-chi2inv(0.025, 2*rmmissing(VA_HS.HS_NumIA))./(2 * rmmissing(VA_HS.HS_NumIA)).*Lambda2VA); %NumDays = 1350, NumMonths = 9, NumYears =5
%%% Upper bound for lambda
IA_Ub_VA = abs(Lambda2VA-chi2inv(0.975, 2*rmmissing(VA_HS.HS_NumIA))./(2 * rmmissing(VA_HS.HS_NumIA)).*Lambda2VA); %NumDays = 1350, NumMonths = 9, NumYears =5
%%% Lower bound for mu
Mu_Lb_VA = abs(MuVA-2*rmmissing(VA_HS.HS_SumM)./chi2inv(0.975, 2*rmmissing(VA_HS.HS_NumM)));
%%% Upper bound for mu
Mu_Ub_VA = abs(MuVA-2*rmmissing(VA_HS.HS_SumM)./chi2inv(0.025, 2*rmmissing(VA_HS.HS_NumM)));
% Lower bound for beach elevation
BeachLb_VA = IA_Lb_VA .* MuVA ./ Lambda2VA;
BeachLb_VA = BeachLb_VA(find(round(ThresholdVA-BeachElevVA, 1) == 0));
% Upper bound for beach elevation
BeachUb_VA = IA_Ub_VA .* MuVA ./ Lambda2VA;
BeachUb_VA = BeachUb_VA(find(round(ThresholdVA-BeachElevVA, 1) == 0));

%% % Lambda & Mu plots with No Error Bars
% ExpParam;

%%% EXPONENTIAL DISTRIBUTION PARAMETERS VS THRESHOLDS - BEACH ElEVATION
figure
plot(ThresholdVA - BeachElevVA, Lambda2VA, 'color', [0, 0.4470, 0.7410], 'LineWidth',3)
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','northeast','FontSize',24)
set(gca,'FontSize',22)


% Plot Mu
figure
plot(ThresholdVA - BeachElevVA, MuVA, 'color', [0, 0.4470, 0.7410], 'LineWidth',3)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event (m)','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','northeast','FontSize',24)
set(gca,'FontSize',22)



%% Lambda & Mu plots with Error Bars
% ExpParamWithErrBars;

% Plot of all Lambdas against threshold - beach elevation (with error bars)
figure
errorbar(ThresholdVA - BeachElevVA, LambdaVA, IA_Lb_VA, IA_Ub_VA, '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',35)
axis([-2 1 0.1 10])
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','Location','southwest','FontSize',24)
set(gca,'FontSize',22,'YScale','log')


% Plot of all Mus against threshold - beach elevation (with error bars)
figure
errorbar(ThresholdVA - BeachElevVA, MuVA, Mu_Lb_VA, Mu_Ub_VA, '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',35)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','Location','northeast','FontSize',24)
set(gca,'FontSize',22)


%% Lambda & Mu plots with Error Bars with test results
% ExpParamWithErrBarsTests;


% Plot of all Lambdas against threshold - beach elevation (with error bars)
figure
errorbar(ThresholdVA(PosVA) - BeachElevVA, LambdaVA(PosVA), IA_Lb_VA(PosVA), IA_Ub_VA(PosVA), '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',40,'LineWidth',2)
hold on
% errorbar(ThresholdVA(RightTailVA) - BeachElevVA, LambdaVA(RightTailVA), IA_Lb_VA(RightTailVA), IA_Ub_VA(RightTailVA), 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',15,'LineWidth',2)
axis([-0.5 0.5 0.1 10])
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
% legend('Virginia - Pos','Virginia - Neg','Texas-GV - Pos','Texas-GV - Neg','Texas-CC - Pos','Texas-CC - Neg','Oregon-SB - Pos','Oregon-SB - Neg','California - Pos','California - Neg','Florida - Pos','Florida -Neg','Florida SP - Pos','Florida SP -Neg','Aus-NSW - Pos','Aus-NSW - Neg','Hawaii - Pos','Hawaii - Neg','Italy - Pos','Italy - Neg','Alaska - Pos','Alaska - Neg','Massachusetts - Pos','Massachusetts - Neg','NumColumns',2,'Location','southwest','FontSize',20)
legend('Virginia - Pos','Texas-GV - Pos','Texas-CC - Pos','Oregon-SB - Pos','California - Pos','Florida - Pos','Florida SP - Pos','Aus-NSW - Pos','Hawaii - Pos','Italy - Pos','Alaska - Pos','Massachusetts - Pos','NumColumns',2,'Location','southwest','FontSize',20)
set(gca,'FontSize',22,'YScale','log')

% Plot of all Mus against threshold - beach elevation (with error bars)
figure
errorbar(ThresholdVA(PosVA) - BeachElevVA, MuVA(PosVA), Mu_Lb_VA(PosVA), Mu_Ub_VA(PosVA), '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',40,'LineWidth',2)
hold on
% errorbar(ThresholdVA(RightTailVA) - BeachElevVA, MuVA(RightTailVA), Mu_Lb_VA(RightTailVA), Mu_Ub_VA(RightTailVA), 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',15,'LineWidth',2)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event','FontSize',26);
% legend('Virginia - Pos','Virginia - Neg','Texas-GV - Pos','Texas-GV - Neg','Texas-CC - Pos','Texas-CC - Neg','Oregon-SB - Pos','Oregon-SB - Neg','California - Pos','California - Neg','Florida - Pos','Florida -Neg','Florida SP - Pos','Florida SP -Neg','Aus-NSW - Pos','Aus-NSW - Neg','Hawaii - Pos','Hawaii - Neg','Italy - Pos','Italy - Neg','Alaska - Pos','Alaska - Neg','Massachusetts - Pos','Massachusetts - Neg','NumColumns',2,'Location','southwest','FontSize',20)
legend('Virginia - Pos','Texas-GV - Pos','Texas-CC - Pos','Oregon-SB - Pos','California - Pos','Florida - Pos','Florida SP - Pos','Aus-NSW - Pos','Hawaii - Pos','Italy - Pos','Alaska - Pos','Massachusetts - Pos','NumColumns',2,'Location','southwest','FontSize',20)
set(gca,'FontSize',22)
 


%% Beach Elevation vs Tidal Amplitude & Beach Elevation vs Average Wave
% Runup Parameter
% BeachElevationPlots;


%%% Beach Elevation vs Tidal amplitude & vs Wave Runup Parameter
figure
errorbar(TA_VA, BeachElevVA, BeachLb_VA, BeachUb_VA, '*', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)
hold on
axis([0 2 0 5])
ylabel('Beach Elevation (m)','FontSize',20)
xlabel('Tidal amplitude (m)','FontSize',20)
title('Beach Elevation vs Tidal Amplitude','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts - BO','NumColumns',2,'Location','northwest','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_VA), BeachElevVA-TA_VA, BeachLb_VA, BeachUb_VA, 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)
hold on
axis([0 33 0 5])
xlabel('$\sqrt{H_0 L_0}$ (m)','Interpreter','latex','FontSize',20)
ylabel('Beach Elevation above tide (m)','FontSize',20)
title('Beach Elevation vs Wave Runup Parameter','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

%%% Aggregating mark values above beach elevation
NumValues = sum(VA_HS.HS_NumM((ThresholdVA - BeachElevVA)>-0.05)); ProbM = VA_HS.HS_NumM((ThresholdVA - BeachElevVA)>-0.05)/NumValues;
M_VA = sum(MuVA((ThresholdVA - BeachElevVA)>-0.05).*ProbM);
M_Lb_VA = M_VA - sum((MuVA((ThresholdVA - BeachElevVA)>-0.05) - Mu_Lb_VA((ThresholdVA - BeachElevVA)>-0.05)).*ProbM);
M_Ub_VA = sum((MuVA((ThresholdVA - BeachElevVA)>-0.05) + Mu_Ub_VA((ThresholdVA - BeachElevVA)>-0.05)).*ProbM) - M_VA; clear NumValues ProbM




%%% Mu vs Tidal Amplitude & Mu vs Wave Runup Parameter
figure
errorbar(TA_VA, M_VA, M_Lb_VA, M_Ub_VA, '*', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)
axis([0 2.5 0 0.65])
xlabel('Tidal Amplitude (m)','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Tidal AMplitude}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_VA), M_VA, M_Lb_VA, M_Ub_VA,  'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)

axis([0 33 0 0.65])
xlabel('$\sqrt{H_0 L_0}$ (m)','Interpreter','latex','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Wave Runup Parameter}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)



Slope = [0.02];
a_beta = 1.1 * 0.35 * Slope + 1.1/2 * sqrt(0.563 * Slope.^2 + 0.004); 
a_beta = struct('Virginia',num2cell(a_beta(1)));

%%% Extra plots
figure
errorbar(nanmean(WRP_VA)*a_beta.Virginia, BeachElevVA-TA_VA, BeachLb_VA, BeachUb_VA,  'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)

axis([0 2 0 5])
xlabel('Wave runup (m)','Interpreter','latex','FontSize',20)
ylabel('Beach Elevation above tide (m)','FontSize',20)
title('Beach Elevation vs Wave Runup','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_VA)*a_beta.Virginia, M_VA, M_Lb_VA, M_Ub_VA, 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)
axis([0 2 0 0.65])
xlabel('Wave runup (m)','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Wave Runup Slope varying}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Massachusetts-BO','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)




%% % Exceedance Probability Plots
% IntArrExProbPlots;

%%% Inter-arrivals: Exceedance probability plots

%%% VA

VarNames = VA_HS.Properties.VariableNames(15:28);
Legend = rmmissing(VA_HS.HS_Threshold) - BeachElevVA;
Legend = round(Legend,1);
Legend = Legend(find(Legend==0):end);
VarNames = VarNames((end-length(Legend)+1):end);
Legend = num2str(Legend);
Legend = strcat(Legend,' m');

figure
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(VA_HS.(x)); var = var-2;
    var = var(var <= mean(var)*log(10));
    [ExProb,qi] = ecdf(var,'function','survivor');
    semilogy(qi,ExProb,'.','MarkerSize',20)
    hold on
    clear x var ExProb qi 
    
end

% xx = 0:0.01:3; For normalized inter-arrivals(qi/mean(var))
% plot(xx,exp(-xx),'k-.','LineWidth',2)
title("Exceedance probability of inter-arrivals - Virginia")
xlabel("Inter-arrival duration (days)")
ylabel("Exceedance probability")
legend(Legend,'Interpreter', 'none')



% MarkExProbPlots;


%%% Marks : Exceedance probability plots

%%% VA 

VarNames = VA_HS.Properties.VariableNames(29:42);
Legend = rmmissing(VA_HS.HS_Threshold) - BeachElevVA;
Legend = round(Legend,1);
Legend = Legend(find(Legend==0):end);
VarNames = VarNames((end-length(Legend)+1):end);
Legend = num2str(Legend);
Legend = strcat(Legend,' m');

figure
for i=1:length(VarNames)
    
    x = strtrim(char(VarNames(i)));
    var = rmmissing(VA_HS.(x));
    var = var(var <= mean(var)*log(10));
    [ExProb,qi] = ecdf(var,'function','survivor');
    semilogy(qi,ExProb,'.','MarkerSize',20)
    hold on
    clear x var ExProb qi 
    
end

% xx = 0:0.01:3; For normalized marks(qi/mean(var))
% plot(xx,exp(-xx),'k-.','LineWidth',2)
title("Exceedance probability of marks - Virginia")
xlabel("Marks (m)")
ylabel("Exceedance probability")
legend(Legend,'Interpreter', 'none')
%% % p-value statistical testing plots
% IntArrpValuePlots;

%%% Inter-arrivals: p-value plots

%%% VA 

VarNames = VA_HS.Properties.VariableNames(76:78);
Thr = VA_HS.Properties.VariableNames(57);
Legend = ["Anderson Darling", "Lilliefors", "Cramer Von-Mises"];

x = strtrim(char(Thr));
x = rmmissing(VA_HS.(x)) - BeachElevVA;
x = round(x,1);
sz = NumdataVA(find(x==-0.5):length(x));
x = x(x>=-0.5);
figure
for i=1:length(VarNames)
    
    y = strtrim(char(VarNames(i)));
    var = VA_HS.(y)(find(x==-0.5):length(x));
    scatter(x,var*100,'filled')
    hold on
    clear y var
    
end
axis([-0.6 0.6 0 100])
ylabel("p-value (%)")
yline(5,'col','r')
yyaxis right
plot(x,sz,'LineWidth',2)
ylabel("Number of data")
title("p-value of Inter-arrival tests - Virginia")
xlabel("Threshold above beach (m)")
legend(Legend,'Interpreter', 'none','Location','northeast')
clear x i sz

MarkpValuePlots;

%%% Marks: p-value plots

%%% VA 

VarNames = VA_HS.Properties.VariableNames(72:74);
Thr = VA_HS.Properties.VariableNames(57);
Legend = ["Lilliefors", "Anderson Darling", "Cramer Von-Mises"];

x = strtrim(char(Thr));
x = rmmissing(VA_HS.(x)) - BeachElevVA;
x = round(x,1);
sz = NumdataVA(find(x>=-0.5):length(x));
x = x(x>=-0.5);
   
figure
for i=1:length(VarNames)
    
    y = strtrim(char(VarNames(i)));
    var = VA_HS.(y)(find(x>=-0.5):length(x));
    scatter(x,var*100,'filled')
    hold on
    clear y var
    
end
axis([-0.6 0.6 0 100])
ylabel("p-value (%)")
yline(5,'col','r')
yyaxis right
plot(x,sz,'LineWidth',2)
ylabel("Number of data")
title("p-value of Mark tests - Virginia")
xlabel("Threshold above beach (m)")
legend(Legend,'Interpreter', 'none','Location','northeast')
clear x i sz

%%
close all
% % Saving Results to Compare
% Results;
