function [MaxMarks, Nmc] = f_MandNmc(TWL,Date,Threshold,Slope)

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
%   Marks = marks of the event for all thresholds
%   Nmc = number of marks per cluster for all thresholds
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for k=1:length(Threshold)

    Thr = Threshold(k);

    %%% Inter-arrivals
    Cross = TWL - Thr;
    Cross(Cross<=0) = 0;
    
    if (length(Cross(Cross>0))>1)

        Start = Date(Cross>0); Start = Start(1:(end-1));
        End = Date(Cross>0); End = End(2:end);
        Duration = daysact(Start,End);
        Events = [Date(1), Start(Duration~=1)',End(end)]; 

        clear Start End

        MarksMax = zeros(1,length(Events)-1);
        NumMarksPerClu = zeros(1,length(Events)-1);

        for j=1:(length(Events)-1)

            if (j ~= 1)

                if (Events(j) == Events(j+1))

                    MarksMax(j) = Cross(Date == Events(j));
                    NumMarksPerClu(j) = length(Cross(Date == Events(j)));

                else

                    ControlMarks = Cross(Date>Events(j) & Date<=Events(j+1));
                    MarksMax(j) = max(ControlMarks(ControlMarks>0));
                    NumMarksPerClu(j) = length(ControlMarks(ControlMarks>0));

                    clear ControlMarks

                end

            else

                if (Events(j) == Events(j+1))

                    MarksMax(j) = Cross(Date==Events(j));
                    NumMarksPerClu(j) = length(Cross(Date==Events(j)));

                else

                    ControlMarks = Cross(Date>=Events(j) & Date<=Events(j+1));
                    MarksMax(j) = max(ControlMarks(ControlMarks>0));
                    NumMarksPerClu(j) = length(ControlMarks(ControlMarks>0));

                    clear ControlMarks

                end

            end


        end

        clear j Events

        VarName = strrep(strcat('Slope',num2str(Slope),'_Thr',num2str(Thr)),'.','_');
        MaxMarks.(VarName) = MarksMax;
        Nmc.(VarName) = NumMarksPerClu;

        clear MarksMax NumMarksPerClu VarName Duration\

    else
       
        VarName = strrep(strcat('Slope',num2str(Slope),'_Thr',num2str(Thr)),'.','_');
        MaxMarks.(VarName) = [];
        Nmc.(VarName) = []; 
        
    end

    clear Cross


end

clear k Thr


return