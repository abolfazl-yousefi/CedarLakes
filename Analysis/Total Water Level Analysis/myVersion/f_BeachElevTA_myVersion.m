sz = 12;
lwd = 1.5;

figure
hold on

for i = 1:numel(islandNames)
    islandName = islandNames{i};
    h(i) = errorbar(TA.(islandName), Beach.(islandName), BeachLb.(islandName), BeachUb.(islandName), ...
        '*', 'color', Colors.(islandName), 'MarkerSize', 20, 'LineWidth', 2.5, 'DisplayName', strrep(islandName, '_', '\_'));
end

ylabel('Reference beach elevation $Z_r$ (m)', 'Interpreter', 'latex', 'FontSize', 20)
xlabel('Tidal Amplitude $A_{t}$ (m)', 'Interpreter', 'latex', 'FontSize', 20)
set(gca, 'FontSize', 22)
set(gcf, 'Position', get(0, 'Screensize'));

% Only include legend for specific indices
legendIndices = 13:22;
legend(h(legendIndices), 'NumColumns', 2, 'Location', 'southeast', 'FontSize', 22)

hold off
clear h
