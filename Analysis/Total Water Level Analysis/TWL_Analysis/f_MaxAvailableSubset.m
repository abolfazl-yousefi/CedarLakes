function [SubsetTT1, SubsetTT2, RefDate] =  f_MaxAvailableSubset(TT1, TT2, MaxGap)

%%%%%%%%%%%%%

%   Input:
%
%   TT1 = first time table to subset
%   TT2 = second time table to subset 
%   MaxGap = maximum allowed gap of consecutive missing values
% 
%   Output:
%
%   Subset1 = first timetable subset with at most MaxGap of consecutive missing
%   values
%   Subset2 = second timetable subset with at most MaxGap of consecutive missing
%   values
%   RefDate = reference date of subsetted time tables

%%%%%%%%%%%%%

TT1.Properties.DimensionNames{1} = 'DateTime';
TT2.Properties.DimensionNames{1} = 'DateTime';

VarNamesTT1 = TT1.Properties.VariableNames;
VarNamesTT2 = TT2.Properties.VariableNames;
VarNames = {'Var1','Var2','Var3','Var4'};
TT1.Properties.VariableNames = VarNames(1:length(VarNamesTT1))';
TT2.Properties.VariableNames = VarNames(1:length(VarNamesTT2))';

clear VarNames

% Time range of available data for wave and MSL -- data subset
B = max(TT1.DateTime(1),TT2.DateTime(1));
E = min(TT1.DateTime(end),TT2.DateTime(end));
TR = timerange(B,E,'closed');
TT1 = TT1(TR,:);
TT2 = TT2(TR,:);

% Creating reference date
RefDate = B:hours(1):E;

% Inserting rows where missing data occurs
TT1 = retime(TT1,'hourly');
TT2 = retime(TT2,'hourly');

clear B E TR

% Analysis of the missing data for TT1
% Miss = RefDate(isnan(TT1.Var1) == 1); % Missing data
% Tdiff = hours(Miss(2:end) - Miss(1:(end-1)));    % time (in hours) difference between NaN values
% NaTimes = [Miss(1), Miss(Tdiff~=1) + Tdiff(Tdiff~=1)];  % times at which we have consecutive missing hours greater than 1 

ConsVal = regionprops(logical(~isnan(TT1.Var1)), 'Area'); ConsVal = [ConsVal.Area];
ConsMiss = regionprops(logical(isnan(TT1.Var1)), 'Area'); ConsMiss = [ConsMiss.Area];

% Maximum allowed gap of consecutive missing values

Idx = find(ConsMiss>MaxGap);

TREnd = zeros(1,length(Idx)+1);

for i=1:(length(Idx)) 
   
    TREnd(i) = sum(ConsVal(1:(Idx(i)))) + sum(ConsMiss(1:(Idx(i)-1)));
    
end
clear i

TREnd(end) = length(TT1.Var1);

TRBeg = [1,TREnd(1:(end-1)) + ConsMiss(Idx) + 1];

LengthTT1 = TREnd-TRBeg; LengthTT1(1) = LengthTT1(1)+1;
% Pos = find(Length==max(Length));

DatesBegTT1 = RefDate(TRBeg(1:length(LengthTT1)));
DatesEndTT1 = RefDate(TREnd(1:length(LengthTT1)));

clear ConsVal ConsMiss Idx TREnd TRBeg


% Analysis of the missing data for TT2
% Miss = RefDate(isnan(TT2.Var2) == 1); % Missing data
% Tdiff = hours(Miss(2:end) - Miss(1:(end-1)));    % time (in hours) difference between NaN values
% NaTimes = [Miss(1), Miss(Tdiff~=1) + Tdiff(Tdiff~=1)];  % times at which we have consecutive missing hours greater than 1 

ConsVal = regionprops(logical(~isnan(TT2.Var2)), 'Area'); ConsVal = [ConsVal.Area];
ConsMiss = regionprops(logical(isnan(TT2.Var2)), 'Area'); ConsMiss = [ConsMiss.Area];

% Maximum allowed gap of consecutive missing values
MaxGap = 100;

Idx = find(ConsMiss>MaxGap);

TREnd = zeros(1,length(Idx)+1);

for i=1:(length(Idx)) 
   
    TREnd(i) = sum(ConsVal(1:(Idx(i)))) + sum(ConsMiss(1:(Idx(i)-1)));
    
end

TREnd(end) = length(TT2.Var2);

TRBeg = [1,TREnd(1:(end-1)) + ConsMiss(Idx) + 1];

LengthTT2 = TREnd-TRBeg; LengthTT2(1) = LengthTT2(1)+1;


DatesBegTT2 = RefDate(TRBeg(1:length(LengthTT2)));
DatesEndTT2 = RefDate(TREnd(1:length(LengthTT2)));

Lengths1 = zeros(size(DatesBegTT1));
Pos2 = zeros(size(DatesBegTT1));

% Now compare subset of the two datasets
for  i=1:length(DatesBegTT1)
   
    TR = timerange(DatesBegTT1(i),DatesEndTT1(i),'closed');
    TT_1 = TT1(TR,:);
    
    clear TR
    
    Lengths2 = zeros(size(DatesBegTT2));
    
    for j=1:length(DatesBegTT2)
       
        if (isbetween(DatesBegTT2(j),TT_1.DateTime(1),TT_1.DateTime(end)) || isbetween(DatesEndTT2(j),TT_1.DateTime(1),TT_1.DateTime(end)))
        
            TR2 = timerange(DatesBegTT2(j),DatesEndTT2(j),'closed');
            TT_2 = TT_1(TR2,:);
            Lengths2(j) = length(TT_2.DateTime);
            
            clear TR2 TT_2
            
        elseif (isbetween(TT_1.DateTime(1), DatesBegTT2(j), DatesEndTT2(j)) && isbetween(TT_1.DateTime(end), DatesBegTT2(j), DatesEndTT2(j)))
            
            TR2 = timerange(TT_1.DateTime(1),TT_1.DateTime(end),'closed');
            TT_2 = TT_1(TR2,:);
            Lengths2(j) = length(TT_2.DateTime);
            
            clear TR2 TT_2

        end
        
    end
    clear j
    
    if (any(Lengths2) ~= 0)
        Pos2(i) = find(Lengths2 == max(Lengths2));
        TR = timerange(DatesBegTT2(Pos2(i)),DatesEndTT2(Pos2(i)),'closed');
        TT_1 = TT_1(TR,:);
        Lengths1(i) = length(TT_1.DateTime);
        
    else 
        
        Pos2(i) = NaN;
        Lengths1(i) = NaN;
        
    end
    
    clear TR TT_1 Lengths2
    
end
clear i

Pos = find(Lengths1 == max(Lengths1));
Pos2 = Pos2(Pos);
TR = timerange(max(DatesBegTT1(Pos),DatesBegTT2(Pos2)),min(DatesEndTT1(Pos),DatesEndTT2(Pos2)),'closed');

SubsetTT1 = TT1(TR,:);
SubsetTT1.Properties.VariableNames = VarNamesTT1;
SubsetTT2 = TT2(TR,:);
SubsetTT2.Properties.VariableNames = VarNamesTT2;
RefDate = SubsetTT1.DateTime;


return