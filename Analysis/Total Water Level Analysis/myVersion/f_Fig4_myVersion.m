lwd = 1.5; % Line Width
sz1 = 8;   % Marker Size

%% Frequency - Lambda -- Fig4A
figure
hold on
h = zeros(1, numel(islandNames));
for i = 1:numel(islandNames)
    islandName = islandNames{i};
    displayName = strrep(islandName, '_', '\_'); % Convert underscores for LaTeX interpreter
    color = Colors.(islandName);
    
    % Plot lines
    plot(Threshold.(islandName) - Beach.(islandName), Lambda2.(islandName), ...
        'color', color, 'LineWidth', lwd, 'DisplayName', displayName);

    % Plot error bars
    h(i) = errorbar(Threshold.(islandName) - Beach.(islandName), Lambda2.(islandName), ...
        IA_Lb.(islandName), IA_Ub.(islandName), 'o', 'color', color, ...
        'MarkerEdgeColor', 'k', 'MarkerFaceColor', color, 'MarkerSize', sz1, 'DisplayName', displayName);
end

% Additional plot settings
x = -1:0.01:1;
y = 18*exp(-x/0.3);
plot(x, y, '--', 'Color', 'k', 'LineWidth', 1.5)
xlabel('$Z - Z_r$ (m)', 'Interpreter', 'latex', 'FontSize', 20);
ylabel('$\lambda$ (events per year)', 'Interpreter', 'latex', 'FontSize', 20);
title('Number of events per year', 'FontSize', 26);
legend(h, 'NumColumns', 2, 'Location', 'southwest', 'FontSize', 22, 'Interpreter', 'latex')
axis([-2 1 0.1 100])
set(gca, 'FontSize', 22, 'YScale', 'log')
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h

%% Intensity - Mu -- Fig4B
figure
hold on
h = zeros(1, numel(islandNames));
for i = 1:numel(islandNames)
    islandName = islandNames{i};
    displayName = strrep(islandName, '_', '\_'); % Convert underscores for LaTeX interpreter
    color = Colors.(islandName);
    
    % Plot lines
    plot(Threshold.(islandName) - Beach.(islandName), Mu.(islandName), ...
        'color', color, 'LineWidth', lwd, 'DisplayName', displayName);

    % Plot error bars
    h(i) = errorbar(Threshold.(islandName) - Beach.(islandName), Mu.(islandName), ...
        Mu_Lb.(islandName), Mu_Ub.(islandName), 'o', 'color', color, ...
        'MarkerEdgeColor', 'k', 'MarkerFaceColor', color, 'MarkerSize', sz1, 'DisplayName', displayName);
end

% Additional plot settings
yline(0.3, '--', 'Color', 'k', 'LineWidth', 1.5)
xlabel('$Z - Z_r$ (m)', 'Interpreter', 'latex', 'FontSize', 20);
ylabel('$\overline{S}$ (m)', 'Interpreter', 'latex', 'FontSize', 20);
title('Average mark per event', 'FontSize', 26);
legend(h, 'NumColumns', 2, 'Location', 'northeast', 'FontSize', 22, 'Interpreter', 'latex')
axis([-1 1 0 1.9])
set(gca, 'FontSize', 22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h
clear lwd sz1
