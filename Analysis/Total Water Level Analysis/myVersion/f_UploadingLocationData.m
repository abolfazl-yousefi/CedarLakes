% Define the list of file names
% islandDataFiles = {
%     'TX_CedarLakes', 'AL_Dauphin_CS', 'FL_Shell_CS', 'MA_Plum_CS', 'NC_BaldHead_CS', ...
%     'NC_Masonboro_CS', 'NC_Portsmouth_CS', 'TX_Follets_CS', 'TX_Hog_CS', ...
%     'TX_MatagordaPeninsula_CS', 'VA_Assateague_HS', 'VA_HS', 'TX_GV_CS', 'TX_CC_CS', ...
%     'OR_SB_HS', 'CA_HS', 'FL_CS', 'FL_SP_CS', 'AUS_NSW_CS', 'HI_CS', 'IT_CS', 'AK_HS', ...
%     'MA_CS'
% };


islandDataFiles = {
    'AL_Dauphin_CS', 'FL_Shell_CS', 'MA_Plum_CS', 'NC_BaldHead_CS', ...
    'NC_Masonboro_CS', 'NC_Portsmouth_CS', 'TX_Follets_CS', 'TX_Hog_CS', ...
    'TX_MatagordaPeninsula_CS', 'VA_Assateague_HS', 'VA_HS', 'TX_GV_CS', 'TX_CC_CS', ...
    'OR_SB_HS', 'CA_HS', 'FL_CS', 'FL_SP_CS', 'AUS_NSW_CS', 'HI_CS', 'IT_CS', 'AK_HS', ...
    'MA_CS'
};


% Load the data and assign it to variables in the base workspace
for i = 1:length(islandDataFiles)
    fileName = islandDataFiles{i};
    data = loadData(fileName); % Load the data
    assignin('base', fileName, data); % Assign the data to a variable in the base workspace
end

function data = loadData(fileName)
    filePath = ['Data/', fileName, '.mat']; % Adjusted file path
    loadedData = load(filePath); % Load the .mat file
    if isfield(loadedData, 'Data')
        data = loadedData.Data; % If 'Data' field exists, use it
    else
        data = loadedData.DataHS; % Use 'DataHS' if 'Data' does not exist
    end
end
