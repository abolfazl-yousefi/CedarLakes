%%% Figure 6A

sz = 12;    % Marker Size
lwd = 2;    % Line Width

figure
hold on

for i = 1:numel(islandNames)
    islandName = islandNames{i};
    h(i) = errorbar(WRmean.(islandName), Beach.(islandName) - TA.(islandName), BeachLb.(islandName), BeachUb.(islandName), ...
        '.', 'color', Colors.(islandName), 'MarkerSize', sz, 'LineWidth', lwd, 'DisplayName', strrep(islandName, '_', '\_'));
    plot(WRmean.(islandName), Beach.(islandName) - TA.(islandName), 'o', 'MarkerEdgeColor', 'k', ...
        'MarkerFaceColor', Colors.(islandName), 'MarkerSize', sz, 'LineWidth', lwd);
end

x = struct2array(WRmean);
y = struct2array(Beach) - struct2array(TA);
slope = x'\y';
x_fit = 0:0.01:2; 
yfit = slope * x_fit;
plot(x_fit, yfit, '--', 'Color', 'k', 'LineWidth', 1.5)

xlabel('$\overline{\eta_w}$ (m)', 'Interpreter', 'latex', 'FontSize', 20)
ylabel('$Z_r - A_t$ (m)', 'Interpreter', 'latex', 'FontSize', 20)
legend(h(13:22), 'NumColumns', 2, 'Location', 'north', 'FontSize', 24)
set(gca, 'FontSize', 22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h x y slope yfit

%%% Figure 6B

figure
hold on

for i = 1:numel(islandNames)
    islandName = islandNames{i};
    h(i) = errorbar(WRmean.(islandName), M.(islandName), M_Lb.(islandName), M_Ub.(islandName), ...
        '.', 'color', Colors.(islandName), 'MarkerSize', sz, 'LineWidth', lwd, 'DisplayName', strrep(islandName, '_', '\_'));
    plot(WRmean.(islandName), M.(islandName), 'o', 'MarkerEdgeColor', 'k', ...
        'MarkerFaceColor', Colors.(islandName), 'MarkerSize', sz, 'LineWidth', lwd);
end

yline(0.3, 'k--', 'LineWidth', 2)

xlabel('$\overline{\eta_w}$ (m)', 'Interpreter', 'latex', 'FontSize', 20);
ylabel('$\overline{S_r}$ (m)', 'Interpreter', 'latex', 'FontSize', 20);
legend(h(13:22), 'NumColumns', 2, 'Location', 'north', 'FontSize', 20)
set(gca, 'FontSize', 22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h

clear sz lwd
