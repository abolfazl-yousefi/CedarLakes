function [IdxCS,IdxHS] = DailyMaxIdx(TWL_Hourly,TWL_DailyMax)





% Index relating hourly data to daily maximums (for complete series only)
% Pre-allocation and inizialing variables
D = TWL_Hourly.DateHours; D.Format = 'dd-MMM-yyyy';
D = cellstr(D); D = datetime(D,'InputFormat','dd-MMM-yyyy');
IdxCS = zeros(1,length(TWL_DailyMax.TWL_DailyMax));
IdxHS = zeros(1,length(TWL_DailyMax.TWL_DailyMax));

for i=1:length(TWL_DailyMax.TWL_DailyMax)
    
    IdxPos = find(datenum(D)==datenum(TWL_DailyMax.DateDays(i)));
    MaxWLPos = find(TWL_Hourly.TWL_Hourly(IdxPos) == TWL_DailyMax.TWL_DailyMax(i)); 
    MaxWLPos = MaxWLPos(1);
    
    IdxCS(i) = IdxPos(MaxWLPos);
    
    Y = year(TWL_DailyMax.DateDays(i));
    B = datetime(strcat(num2str(Y),'-5-15'),'InputFormat','yyyy-MM-dd');
    E = datetime(strcat(num2str(Y),'-8-16'),'InputFormat','yyyy-MM-dd');
    if (TWL_DailyMax.DateDays(i) > B && TWL_DailyMax.DateDays(i) < E)
       
        IdxHS(i) = 0; 
        
    else
       
        IdxHS(i) = IdxCS(i);
        
    end

    clear IdxPos MaxWL
    
end

clear D

% IdxHS = IdxHS(IdxHS~=0);

end

