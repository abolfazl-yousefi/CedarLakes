function [TWL_DailyMax, TWL_Hourly] = f_TWL(WaveData, MeanSeaLevelData, Slope, Ref)

%%%%%%%%%%%%%

%   Input:
%
%   WaveData = time table of the wave data
%   MeanSeaLevelData = time table of the MSL data 
%   Slope = foreshore slope
%   Ref = Reference value for a specific datum
% 
%   Output:
%
%   TWL_DailyMax = daily maximum TWL
%   Date = reference date for TWL_DailyMax
%   TWL_Hourly = hourly TWL

%%%%%%%%%%%%%

L_0 = 9.80665*(WaveData.PeakPeriod.^2)/(2*pi);          % Wave-length

SetupComponent = 1.1 * 0.35 * Slope;                        % Wave setup component
SwashComponent = 1.1/2 * sqrt(0.563 * Slope^2 + 0.004);     % Wave swash component

Waves = sqrt(WaveData.SignificantWaveHeight .* L_0) * (SetupComponent + SwashComponent);
Tide = MeanSeaLevelData.VerifiedTide + Ref;

TWL_Hourly = Tide + Waves;  % Total Water Level

TWL_Hourly = timetable(WaveData.DateTime,TWL_Hourly);
TWL_Hourly.Properties.DimensionNames{1} = 'DateHours';
TWL_Hourly.Properties.VariableNames = {'TWL_Hourly'};
TWL_DailyMax = retime(TWL_Hourly,'daily','max');
TWL_DailyMax.Properties.DimensionNames{1} = 'DateDays';
TWL_DailyMax.Properties.VariableNames = {'TWL_DailyMax'};

return