
%% Frequency - Lambda Plot
figure(1);
hold on;
for i = 1:length(islandNames)
    islandName = islandNames{i};
    colorField = islandName; % Adjust if your Colors struct uses different naming
    legendName = Names.(islandName);
    plot(Threshold.(islandName) - Beach.(islandName), Lambda2.(islandName), 'color', Colors.(colorField), 'LineWidth', 3, 'DisplayName', legendName);
end
xlabel('Threshold', 'FontSize', 20);
ylabel('\lambda (#events per year)', 'FontSize', 20);
title('Number of events per year', 'FontSize', 26);
legend('NumColumns', 2, 'Location', 'northeast', 'FontSize', 22);
set(gca, 'FontSize', 22);
set(gcf, 'Position', get(0, 'Screensize'));
hold off;

%% Intensity - Mu Plot
figure(2);
hold on;
for i = 1:length(islandNames)
    islandName = islandNames{i};
    legendName = Names.(islandName);
    colorField = islandName; % Adjust if your Colors struct uses different naming
    plot(Threshold.(islandName) - Beach.(islandName), Mu.(islandName), 'color', Colors.(colorField), 'LineWidth', 3, 'DisplayName', legendName);
end
xlabel('Threshold', 'FontSize', 20);
ylabel('\mu (m)', 'FontSize', 20);
title('Average mark per event (m)', 'FontSize', 26);
legend('NumColumns', 2, 'Location', 'northeast', 'FontSize', 22);
set(gca, 'FontSize', 22);
set(gcf, 'Position', get(0, 'Screensize'));
hold off;

clear h; % If h is used or just to clear the last plot handle
