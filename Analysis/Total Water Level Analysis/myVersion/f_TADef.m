
function [TA] = f_TADef(Data,N,D)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This function calculates the Tidal Amplitude using peak to valley (N=1) 
% or Spectral Analysis (N=2), by using either Verified Tide (D=1) or
% Predicted Tide (D=2) datasets
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



switch N 
        
    case 1
        
        switch D
            case 1
                x = timetable(Data.DateHours,Data.VerifiedTideWithGaps);
            case 2
                x = timetable(Data.DateHours,Data.PredictedTideWithGaps);
        end
        
        % [pks,locs]=findpeaks(x.Var1,x.Time,'MinPeakDistance',5);
        % locs2=islocalmin(x.Var1, 'MinSeparation',hours(5),'SamplePoints',x.Time);
        %
        % plot(x.Time,x.Var1)
        % hold on
        % plot(locs,pks,'x')
        % plot(x.Time(locs2),x.Var1(locs2),'*')
        % 
        % TR = (mean(pks)-mean(x.Var1(locs2)));
        % TA = TR/2


        [pks,locs]=findpeaks(x.Var1,x.Time,'MinPeakDistance',5);
        [lows,locs2]=findpeaks(-x.Var1,x.Time,'MinPeakDistance',5);
        lows = -lows;
%         plot(x.Time,x.Var1)
%         hold on
%         plot(locs,pks,'x')
%         plot(locs2,lows,'*')

        TR = (mean(pks)-mean(lows));
        TA = TR/2;

        % TR = pks - lows(1:length(pks));
        % TA = mean(TR/2)
            

        clear x pks lows locs locs2 TR
    
    case 2
        
        switch D
            case 1 
                x = rmmissing(Data.VerifiedTideWithGaps)+rmmissing(Data.Reference);
            case 2
                x = rmmissing(Data.PredictedTideWithGaps)+rmmissing(Data.Reference);     
        end
            
        L = length(x);
        Y = fft(x);
        P2 = abs(Y/L);

        if (rem(L,2) == 0) 
    
            P1 = P2(1:L/2+1); %even
    
        else
    
            P1 = P2(1:(L+1)/2); %odd
            
        end

        P1(2:end-1) = 2*P1(2:end-1);

        Fs=1; %Sampling frequency
        f = (Fs*(0:(L/2))/L)/3600;
        % T = (1./f);
        % figure
        % plot(f,P1)
        % title('Single-Sided Amplitude Spectrum of the Tidal Amplitude')
        % xlabel('Frequency (Hz)')
        % ylabel('Tidal amplitude (m)')

        % figure
        % pspectrum(VA_HS.VerifiedTideWithGaps+RefVA)

        PosMax = find(P1==max(P1));
        T = (1/f(PosMax))/3600; %hours
        TA = P1(PosMax); %amplitude (m)


        clear x L Y P2 P1 Fs f PosMax T
    
end

return 