% Array of standardized island names (assumed already present)

% Structures to hold results
IA_Lb = struct();
IA_Ub = struct();
Mu_Lb = struct();
Mu_Ub = struct();
BeachLb = struct();
BeachUb = struct();

for i = 1:length(islandNames)
    islandName = islandNames{i};
    
    % Directly access the relevant variable, assuming it follows a standard naming scheme
    data = evalin('base', islandName);
    
    % Check if the current variable is a structure containing the necessary fields
    % Extract relevant fields for calculations
    NumIA = rmmissing(data.NumIA);
    SumM = rmmissing(data.SumM);
    Lambda2_ = rmmissing(data.Lambda2);

    % Calculate confidence intervals and other parameters
    IA_Lb.(islandName) = abs(Lambda2_ - chi2inv(0.025, 2*NumIA) ./ (2*NumIA) .* Lambda2_);
    IA_Ub.(islandName) = abs(Lambda2_ - chi2inv(0.975, 2*NumIA) ./ (2*NumIA) .* Lambda2_);

    % Assuming 'Mu' structure is already defined in the workspace or previously in the code
    Mu_Lb.(islandName) = abs(Mu.(islandName) - 2*SumM ./ chi2inv(0.975, 2*NumIA));
    Mu_Ub.(islandName) = abs(Mu.(islandName) - 2*SumM ./ chi2inv(0.025, 2*NumIA));

 % Lower bound for beach elevation
    BeachLb.(islandName) = IA_Lb.(islandName) .* Mu.(islandName) ./ Lambda2.(islandName);
    BeachLb.(islandName) = BeachLb.(islandName)(find(round(Threshold.(islandName) - Beach.(islandName), 1) == 0));
    
    % Upper bound for beach elevation
    BeachUb.(islandName) = IA_Ub.(islandName) .* Mu.(islandName) ./ Lambda2.(islandName);
    BeachUb.(islandName) = BeachUb.(islandName)(find(round(Threshold.(islandName) - Beach.(islandName), 1) == 0));
end

clear i islandName Lambda2_ NumIA SumM

% You might need to adjust the code to ensure it fits the exact structure and data format you're working with.
