function [HighSeason, NumDaysHS, YHS, MonthHS, LowSeason, NumDaysLS, YLS, MonthLS] = f_SeasonSplit(Date,TWL_DailyMax,answer)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Input:
% 
%   Date = reference date of TWL series
%   TWL_DailyMax = time table of daily maximum TWL
%   answer = user input dates for beginning and ending of High-Season
%
%   Output:
%
%   HighSeason = struct containing the split of high-season TWL
%   NumDaysHS = total number of days of high-season present in the series
%   YHS = years of high-season data available
%   MonthHS = average amount of months available
%   LowSeason = struct containing the split of low-season TWL
%   NumDaysLS = total number of days of low-season present in the series
%   YLS = years of low-seasin data available
%   MonhtLS = average amount of months available
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M = month(Date);
Y = year(Date);

% Splitting in Seasons
BegHS = strcat('-',answer{1},'-',answer{2});

if (str2num(answer{1}) < str2num(answer{3}))      
    EndHS = strcat('-',answer{3},'-',answer{4});
    NewYear = 0;         
else
    EndHS = strcat('-',answer{3},'-',answer{4});
    NewYear = 1;     
end

if (NewYear==0)

    % Initializing variables
    NumDaysHS = 0; NumDaysLS = 0;
    YHS = 0; YLS = 0;
    MonthHS = zeros(1,length(unique(Y))); MonthLS = zeros(1,length(unique(Y))+1);


    % High-Season
    for i=Y(1):Y(end)

        B = datetime(strcat(num2str(i),BegHS));
        E = datetime(strcat(num2str(i),EndHS));
        TR = timerange(B,E,'closed');
        TT = TWL_DailyMax(TR,:);

        VarName = strcat('HighSeason', num2str(i));
        HighSeason.(VarName) = TT;

        NumDaysHS = NumDaysHS + length(TT.DateDays);

        if (length(TT.DateDays)>=1) 
            YHS = YHS+1; 
            MonthHS(i-Y(1)+1) = length(TT.DateDays); 
        end

        clear B E TR TT VarName

    end

    clear i

    MonthHS = mean(MonthHS(MonthHS>0))/30;

    % Low-Season
    for i=(Y(1)-1):Y(end)

        B = datetime(strcat(num2str(i),EndHS)) + day(1);
        E = datetime(strcat(num2str(i+1),BegHS)) - day(1);
        TR = timerange(B,E,'closed');
        TT = TWL_DailyMax(TR,:);

        VarName = strcat('LowSeason', num2str(i),'_', num2str(i+1)); 
        LowSeason.(VarName) = TT;

        NumDaysLS = NumDaysLS + length(TT.DateDays);

        if (length(TT.DateDays)>=1) 
            YLS = YLS+1; 
            MonthLS(i-Y(1)+2) = length(TT.DateDays); 
        end

        clear B E TR TT VarName

    end

    clear i

    MonthLS = mean(MonthLS(MonthLS>0))/30;

elseif (NewYear==1)

    % Initializing variables
    NumDaysHS = 0; NumDaysLS = 0;
    YHS = 0; YLS = 0;
    MonthHS = zeros(1,length(unique(Y))+1); MonthLS = zeros(1,length(unique(Y)));


   % High-Season
    for i=(Y(1)-1):Y(end)

        B = datetime(strcat(num2str(i),BegHS));
        E = datetime(strcat(num2str(i+1),EndHS));
        TR = timerange(B,E,'closed');
        TT = TWL_DailyMax(TR,:);

        VarName = strcat('HighSeason', num2str(i),'_', num2str(i+1)); 
        HighSeason.(VarName) = TT;

        NumDaysHS = NumDaysHS + length(TT.DateDays);

        if (length(TT.DateDays)>=1) 
            YHS = YHS+1; 
            MonthHS(i-Y(1)+2) = length(TT.DateDays); 
        end

        clear B E TR TT VarName

    end

    clear i

    MonthHS = mean(MonthHS(MonthHS>0))/30;


    % Low-Season
    for i=Y(1):Y(end)

        B = datetime(strcat(num2str(i),EndHS)) + day(1);
        E = datetime(strcat(num2str(i),BegHS)) - day(1);
        TR = timerange(B,E,'closed');
        TT = TWL_DailyMax(TR,:);

        VarName = strcat('LowSeason', num2str(i));
        LowSeason.(VarName) = TT;

        NumDaysLS = NumDaysLS + length(TT.DateDays);

        if (length(TT.DateDays)>=1) 
            YLS = YLS+1; 
            MonthLS(i-Y(1)+1) = length(TT.DateDays); 
        end

        clear B E TR TT VarName

    end

    clear i

    MonthLS = mean(MonthLS(MonthLS>0))/30;

end





return