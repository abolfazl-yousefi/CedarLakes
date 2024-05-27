% Define the corrected path to the Excel file
excelFilePath = '../MSL_Wave_Data/Offshore_Wave_42019.xlsx';

% Read the entire Excel file into a table
OffshoreWaveData = readtable(excelFilePath, 'VariableNamingRule', 'preserve');

% Select only the specified columns
columnNames = {'date', 'wave_height', 'dominant_wave_period'};
WaveData = OffshoreWaveData(:, columnNames);

% Rename the columns in OffshoreWaveDataSubset
newColumnNames = {'DateTime', 'SignificantWaveHeight', 'PeakPeriod'};
WaveData.Properties.VariableNames = newColumnNames;
