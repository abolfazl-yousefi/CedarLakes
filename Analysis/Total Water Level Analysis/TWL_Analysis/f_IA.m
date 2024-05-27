function IntArr = f_IA(TWL,Date,Threshold,Slope)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Input:
%
%   TWL = Total water level
%   Date = TWL reference date
%   Threshold = threshold for crossing analysis
%
%   Output: 
%   
%   IntArr = inter-arrival time of events for all threshold
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


for k=1:length(Threshold)

    Thr = Threshold(k);

    %%% Inter-arrivals
    Cross = TWL - Thr;
    Cross(Cross<=0) = 0;

    if (any(Cross>0)) 

        Start = Date(Cross>0); Start = Start(1:(end-1));
        End = Date(Cross>0); End = End(2:end);
        Duration = daysact(Start,End);

        if (any(Duration>1))

            Events = [Start(1), End(Duration~=1)'];
            Start = Events(1:(end-1));
            End = Events(2:end);
            Duration = daysact(Start,End);
            VarName = strrep(strcat('Slope',num2str(Slope),'_Thr',num2str(Thr)),'.','_');
            IntArr.(VarName) = Duration;

            clear Events VarName

        else 
            
            VarName = strrep(strcat('Slope',num2str(Slope),'_Thr',num2str(Thr)),'.','_');
            IntArr.(VarName) = [];
            
        end

        clear Start End Duration

    else
        
        VarName = strrep(strcat('Slope',num2str(Slope),'_Thr',num2str(Thr)),'.','_');
     	IntArr.(VarName) = [];
        
    end
    
    clear Cross
    
end

clear k Thr

return 