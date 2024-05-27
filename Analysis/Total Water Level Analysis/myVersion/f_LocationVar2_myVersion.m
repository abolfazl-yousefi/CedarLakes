
% Initialize result structures
WRP = struct();
WRmean = struct();
WRsd = struct();
M = struct();
M_Lb = struct();
M_Ub = struct();

for i = 1:length(islandNames)
    islandName = islandNames{i};
    
    data = evalin('base', islandName);
        
    % Calculate Wave Runup Parameter
    WRP.(islandName) = calculateWRP(data);
    
    % Calculate mean and std for Wave Runup
    WRmean.(islandName) = calculateWRmean(Slopes.(islandName), WRP.(islandName));
    WRsd.(islandName) = calculateWRsd(Slopes.(islandName), WRP.(islandName));
    
    
    [M.(islandName), M_Lb.(islandName), M_Ub.(islandName)] = ...
    aggregateMarksAboveBeach(data, Threshold.(islandName), ...
    Beach.(islandName), Mu.(islandName), Mu_Lb.(islandName), ...
    Mu_Ub.(islandName));
    
    M_Beach.(islandName) = calculateM_Beach(Mu.(islandName), ...
    Threshold.(islandName), Beach.(islandName));

    [SWH.(islandName), SWHsd.(islandName)] = calculateSWHandSWHsd(data);
    [DWL.(islandName), DWLsd.(islandName)] = calculateDWLandDWLsd(data);
    
    [ Hs.(islandName), HsSD.(islandName), Lo.(islandName), LoSD.(islandName)] = ...
        calculateWaveCharacteristics(data);
    TA.(islandName) = f_TADef(data,1,1);
end

clear i islandName textPos legendName legenEntries lessVibrantColor


function WRP = calculateWRP(data)
    % Calculate Wave Runup Parameter
    WRP = sqrt(data.DailySWH .* (9.80665 / (2 * pi)) .* (data.DailyPP .^ 2));
end

function theta = ftheta(Slope)
    % Calculates the theta value for a given slope
    theta = 1.1 * 0.35 .* Slope + 1.1 / 2 * sqrt(0.563 .* Slope.^2 + 0.004);
end


function WRmean = calculateWRmean(slope, WRP)
    WRmean = ftheta(slope) * mean(rmmissing(WRP));
end



function WRsd = calculateWRsd(slope, WRP)
    WRsd = std(ftheta(slope) .* rmmissing(WRP));
end

function [SWH, SWHsd] = calculateSWHandSWHsd(data)
    % Calculate Average and Standard Deviation of Significant Wave Height
    SWH = mean(rmmissing(data.DailySWH));
    SWHsd = std(rmmissing(data.DailySWH));
end

function [DWL, DWLsd] = calculateDWLandDWLsd(data)
    % Calculate Average and Standard Deviation of Deep Wavelength
    DWL = (9.80665 / (2 * pi)) * mean(rmmissing(data.DailyPP .^ 2));
    DWLsd = (9.80665 / (2 * pi)) * std(rmmissing(data.DailyPP .^ 2));
end




function [M, M_Lb, M_Ub] = aggregateMarksAboveBeach(data, Threshold, Beach, Mu, Mu_Lb, Mu_Ub)

    % Outputs:
    % M - Mean aggregated mark value above beach elevation
    % M_Lb - Lower bound of aggregated mark value
    % M_Ub - Upper bound of aggregated mark value

    % Calculate the condition mask for values above beach elevation within a tolerance
    conditionMask = (Threshold - Beach) > -0.05;

    % Calculate the number of values and the probability of marks
    NumValues = sum(data.NumM(conditionMask));
    ProbM = data.NumM(conditionMask) / NumValues;

    % Calculate mean mark value
    M = sum(Mu(conditionMask) .* ProbM);

    % Calculate lower bound of mean mark value
    M_Lb = M - sum((Mu(conditionMask) - Mu_Lb(conditionMask)) .* ProbM);

    % Calculate upper bound of mean mark value
    M_Ub = sum((Mu(conditionMask) + Mu_Ub(conditionMask)) .* ProbM) - M;

end


function M_Beach = calculateM_Beach(Mu, Threshold, Beach)
 
    condition = (Threshold - Beach > -0.05) & ...
                (Threshold - Beach < 0.05);
    
    M_Beach = Mu(condition);
end



function [ Hs, HsSD, Lo, LoSD] = calculateWaveCharacteristics(data)
    % calculateWaveCharacteristics - Calculates wave characteristics for a given dataset
    %
    % Inputs:
    %   data - A structure containing the dataset with fields `PeakPeriodWithGaps` and 
    %          `SignificantWaveHeightWithGaps`
    %
    % Outputs:
    %   Lo - Mean wave length
    %   Hs - Mean significant wave height
    %   HsSD - Standard deviation of significant wave height
    %   LoSD - Standard deviation of wave length

    

    % Calculate mean significant wave height (Hs)
    Hs = mean(rmmissing(data.SignificantWaveHeightWithGaps));

    % Calculate standard deviation of significant wave height (HsSD)
    HsSD = std(rmmissing(data.SignificantWaveHeightWithGaps));
    
    % Calculate mean wave length (Lo)
    Lo = mean(1.56 .* rmmissing(data.PeakPeriodWithGaps).^2);

    % Calculate standard deviation of wave length (LoSD)
    LoSD = std(1.56 .* rmmissing(data.PeakPeriodWithGaps).^2);
end
