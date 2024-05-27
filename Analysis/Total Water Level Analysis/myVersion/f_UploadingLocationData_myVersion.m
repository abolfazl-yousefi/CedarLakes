islandDataFiles = {'TX_CedarLakes', 'AL_Dauphin_CS', 'FL_Shell_CS', 'MA_Plum_CS', 'NC_BaldHead_CS', ...
    'NC_Masonboro_CS', 'NC_Portsmouth_CS', 'TX_Follets_CS', 'TX_Hog_CS', ...
    'TX_MatagordaPeninsula_CS', 'VA_Assateague_HS', 'VA_HS', 'TX_GV_CS', 'TX_CC_CS', ...
    'OR_SB_HS', 'CA_HS', 'FL_CS', 'FL_SP_CS', 'AUS_NSW_CS', 'HI_CS', 'IT_CS', 'AK_HS', ...
    'MA_CS'};

% islandDataFiles = {'AL_Dauphin_CS', 'FL_Shell_CS', 'MA_Plum_CS', 'NC_BaldHead_CS', ...
%     'NC_Masonboro_CS', 'NC_Portsmouth_CS', 'TX_Follets_CS', 'TX_Hog_CS', ...
%     'TX_MatagordaPeninsula_CS', 'VA_Assateague_HS', 'VA_HS', 'TX_GV_CS', 'TX_CC_CS', ...
%     'OR_SB_HS', 'CA_HS', 'FL_CS', 'FL_SP_CS', 'AUS_NSW_CS', 'HI_CS', 'IT_CS', 'AK_HS', ...
%     'MA_CS'};

% Initialize an empty cell array to store processed file names
islandNames = {};

% Load the data and assign it to variables in the base workspace without prefixes
for i = 1:length(islandDataFiles)
    fileNameWithPrefix = islandDataFiles{i};
    % Remove CS or HS prefixes for variable names
    fileNameWithoutPrefix = regexprep(fileNameWithPrefix, '_(CS|HS)$', '');
    data = loadData(fileNameWithPrefix); % Load the data with the original name (with prefix)
    
    % If the loaded data is a table, rename its columns to remove specified substrings
    if istable(data)
        columnNames = data.Properties.VariableNames;
        newColumnNames = cellfun(@(x) replace(x, {'CS_', 'HS_', 'CS', 'HS', '_CS', '_HS'}, ''), columnNames, 'UniformOutput', false);
        data.Properties.VariableNames = newColumnNames;
    end
    
    assignin('base', fileNameWithoutPrefix, data); % Assign the data to a variable without the prefix
    
    % Append the processed file name to the islandDataFilesProcessed array
    islandNames{end+1} = fileNameWithoutPrefix;
end

clear i fileNameWithPrefix fileNameWithoutPrefix data columnNames newColumnNames

function data = loadData(fileName)
    filePath = ['Data/', fileName, '.mat']; % Use the file name with prefix to build the file path
    loadedData = load(filePath); % Load the .mat file
    if isfield(loadedData, 'Data')
        data = loadedData.Data; % If 'Data' field exists, use it
    else
        data = loadedData.DataHS; % Use 'DataHS' if 'Data' does not exist
    end
end
