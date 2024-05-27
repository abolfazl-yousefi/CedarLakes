figure(1);
hold on;
legendEntries = []; % To keep track of entries for the legend
% Plot all islands except TX_CedarLakes first
for i = 1:length(islandNames)
    islandName = islandNames{i};
    if ~strcmp(islandName, "TX_CedarLakes") % Skip TX_CedarLakes in this loop
        legendName = Names.(islandName);
        colorField = islandName; % Adjust if your Colors struct uses different naming
        xData = Threshold.(islandName) - Beach.(islandName);
        yData = Lambda2.(islandName);
        lessVibrantColor = Colors.(colorField) + 0.6 * (1 - Colors.(colorField)); % Blend with white
        p = plot(xData, yData, 'color', lessVibrantColor, 'LineWidth', 3, 'DisplayName', legendName);
        legendEntries = [legendEntries, p]; % Add plot handle for legend
    end
end
% Plot TX_CedarLakes last
for i = 1:length(islandNames)
    islandName = islandNames{i};
    if strcmp(islandName, "TX_CedarLakes")
        legendName = Names.(islandName);
        colorField = islandName;
        xData = Threshold.(islandName) - Beach.(islandName);
        yData = Lambda2.(islandName);
        p = plot(xData, yData, 'color', Colors.(colorField), 'LineWidth', 6, 'DisplayName', legendName);
        text(xData(end), yData(end), Names.(islandName), 'FontSize', 20, 'color', Colors.(colorField), 'HorizontalAlignment', 'right');
        legendEntries = [legendEntries, p]; % Ensure TX_CedarLakes is also in the legend
    end
end
xlabel('Threshold', 'FontSize', 20);
ylabel('\lambda (#events per year)', 'FontSize', 20);
title('Number of events per year', 'FontSize', 26);
legend(legendEntries, 'NumColumns', 2, 'Location', 'northeast', 'FontSize', 14);
set(gca, 'FontSize', 22);
set(gcf, 'Position', get(0, 'Screensize'));
hold off;



figure(2);
hold on;
legendEntries = []; % To keep track of entries for the legend

% Plot all islands except TX_CedarLakes first
for i = 1:length(islandNames)
    islandName = islandNames{i};
    if ~strcmp(islandName, "TX_CedarLakes") % Skip TX_CedarLakes in this loop
        legendName = Names.(islandName);
        colorField = islandName; % Adjust if your Colors struct uses different naming
        xData = Threshold.(islandName) - Beach.(islandName);
        yData = Mu.(islandName);
        lessVibrantColor = Colors.(colorField) + 0.6 * (1 - Colors.(colorField)); % Blend with white, more transparent
        p = plot(xData, yData, 'color', lessVibrantColor, 'LineWidth', 3, 'DisplayName', legendName);
        legendEntries = [legendEntries, p]; % Add plot handle for legend
    end
end

% Plot TX_CedarLakes last
for i = 1:length(islandNames)
    islandName = islandNames{i};
    if strcmp(islandName, "TX_CedarLakes")
        legendName = Names.(islandName);
        colorField = islandName;
        xData = Threshold.(islandName) - Beach.(islandName);
        yData = Mu.(islandName);
        p = plot(xData, yData, 'color', Colors.(colorField), 'LineWidth', 6, 'DisplayName', legendName);
        text(xData(end), yData(end), Names.(islandName), 'FontSize', 14, 'color', Colors.(colorField), 'HorizontalAlignment', 'right');
        legendEntries = [legendEntries, p]; % Ensure TX_CedarLakes is also in the legend
    end
end

xlabel('Threshold', 'FontSize', 20);
ylabel('\mu (m)', 'FontSize', 20);
title('Average mark per event (m)', 'FontSize', 26);
legend(legendEntries, 'NumColumns', 2, 'Location', 'northeast', 'FontSize', 14);
set(gca, 'FontSize', 22);
set(gcf, 'Position', get(0, 'Screensize'));
hold off;

clear textPos legendName legenEntries lessVibrantColor

