%%% Exceedance probability plot Marks
sz = [20 60];

BeachIA = struct();
BeachM = struct();

for i = 1:numel(islandNames)
    islandName = islandNames{i};
    data = evalin('base', islandName);
    
    % Process IntArrSlope/IntArr_Slope for BeachIA
    if ismember('Threshold', data.Properties.VariableNames)
        fields = data.Properties.VariableNames;
        Idx = find(contains(fields, 'IntArrSlope') | contains(fields, 'IntArr_Slope'));
        VarNames = fields(Idx);
        PosBeach = round(rmmissing(data.Threshold) - Beach.(islandName), 1) == 0;

        if any(PosBeach)
            selectedVarName = VarNames{PosBeach};
            BeachIA.(islandName) = rmmissing(data.(selectedVarName));
        else
            warning('No matching Beach position found for %s', islandName);
            BeachIA.(islandName) = [];
        end
    else
        warning('Threshold variable not found in %s', islandName);
        BeachIA.(islandName) = [];
    end
    
    % Process MaxMarks for BeachM
    if ismember('Threshold', data.Properties.VariableNames)
        Idx = find(contains(fields, 'MaxMarks'));
        VarNames = fields(Idx);
        PosBeach = round(rmmissing(data.Threshold) - Beach.(islandName), 1) == 0;

        if any(PosBeach)
            selectedVarName = VarNames{PosBeach};
            BeachM.(islandName) = rmmissing(data.(selectedVarName));
        else
            warning('No matching Beach position found for %s', islandName);
            BeachM.(islandName) = [];
        end
    else
        warning('Threshold variable not found in %s', islandName);
        BeachM.(islandName) = [];
    end
    
    clear VarNames PosBeach Idx
end

% Plotting for IntArrSlope/IntArr_Slope
dx = 2;

figure
hold on
h = []; % Initialize an empty array to store handles
for i = 1:numel(islandNames)
    islandName = islandNames{i};
    if isempty(BeachIA.(islandName))
        continue;
    end
    h(end+1) = ff_exprobplot_myVersion(BeachIA.(islandName), dx, Names.(islandName), Colors.(islandName), sz(2));
end

x = 0:0.01:4;
y = exp(-x);
plot(x, y, '--', 'Color', 'k', 'LineWidth', 1.5, 'DisplayName', '')
if ~isempty(h)
    legend(h, 'NumColumns', 2, 'Location', 'northeast', 'FontSize', sz(1))
end
axis([0 3.6 0.03 1])
xlabel('Normalized Inter-arrival ($\lambda$ $\Delta$t)', 'Interpreter', 'latex', 'FontSize', sz(1))
ylabel('Complementary CDF ($1 - CDF$)', 'Interpreter', 'latex', 'FontSize', sz(1))
set(gca, 'FontSize', sz(1), 'YScale', 'log')
set(gcf, 'Position', get(0, 'Screensize'));
hold off

clear x y h

% Plotting for MaxMarks
dx = 0;

figure
hold on
h = []; % Initialize an empty array to store handles
for i = 1:numel(islandNames)
    islandName = islandNames{i};
    if isempty(BeachM.(islandName))
        continue;
    end
    h(end+1) = ff_exprobplot_myVersion(BeachM.(islandName), dx, Names.(islandName), Colors.(islandName), sz(2));
end

x = 0:0.01:3;
y = exp(-x);
plot(x, y, '--', 'Color', 'k', 'LineWidth', 1.5)
if ~isempty(h)
    legend(h, 'NumColumns', 2, 'Location', 'northeast', 'FontSize', sz(1))
end
axis([0 3 0.03 1])
xlabel('Normalized mark ($\frac{s}{\bar s}$)', 'Interpreter', 'latex', 'FontSize', sz(1))
ylabel('Complementary CDF ($1 - CDF$)', 'Interpreter', 'latex', 'FontSize', sz(1))
set(gca, 'FontSize', sz(1), 'YScale', 'log')
set(gcf, 'Position', get(0, 'Screensize'));
hold off

clear x y dx h
