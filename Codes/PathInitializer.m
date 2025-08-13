%% Initialize codes running from Github to get required directories

% --- Set Path Variables ---
% Get the primary reading directory
rdDir = uigetdir([], "Choose Reading Directory");
if rdDir == 0, error("No reading folder selected."); end
rdDir = string(rdDir) + filesep;

% Get the raw data directory, starting the search in the reading directory
rawDataDir = uigetdir(rdDir, "Choose Raw Data Directory");
if rawDataDir == 0, error("No raw data folder selected."); end
rawDataDir = string(rawDataDir) + filesep;

% Get the writing directory, starting the search in the reading directory
wrDir = uigetdir(rdDir, "Choose Writing Directory");
if wrDir == 0, error("No writing folder selected."); end
wrDir = string(wrDir) + filesep;

% --- Ask user for toolbox name ---
toolboxName = input('Enter the name of the toolbox to check: ', 's');

% --- Check if the toolbox is in the MATLAB path ---
if isempty(which(toolboxName))
    fprintf('%s toolbox not found in the path.\n', toolboxName);
    folderPath = uigetdir(pwd, sprintf('Select the %s toolbox folder', toolboxName));
    if folderPath ~= 0
        addpath(genpath(folderPath));
        savepath;
        fprintf('%s toolbox added to the path.\n', toolboxName);
    else
        fprintf('%s toolbox not added. Please ensure it is accessible.\n', toolboxName);
    end
else
    fprintf('%s toolbox is already in the path.\n', toolboxName);
end
