Threshold = 0.4:0.1:1.4;
fontSize = 10;
Month = month(Date);

fig1 = figure('visible', 'off');
hold on;

for i = 1:length(Threshold)
    Cross = TWL - Threshold(i);
    Cross(Cross <= 0) = 0;
    M = Month(Cross > 0);
    Cross = Cross(Cross > 0);
    [M, Idx] = sort(M, 'ascend');
    Cross = Cross(Idx);
    
    NumElementsPerMonthFull = zeros(1, 12);
    [UniqueMonths, ~, SubIdx] = unique(M);
    NumElementsPerMonth = accumarray(SubIdx, Cross, [], @numel);
    NumElementsPerMonthFull(UniqueMonths) = NumElementsPerMonth;
    
    p = plot(1:12, NumElementsPerMonthFull, '-', 'LineWidth', 2.5);
    
    % Calculate the position for the text
    textX = length(NumElementsPerMonthFull); % Last x-position (December)
    textY = NumElementsPerMonthFull(end); % Corresponding y-value
    
    % Adjust text position slightly for visibility
    textXOffset = 0.2; 
    textYOffset = 0.02 * range(get(gca, 'ylim'));
    text(textX + textXOffset, textY + textYOffset, sprintf('%.1f', Threshold(i)), 'FontSize', fontSize, 'Color', p.Color);
end

hold off;
set(gca, 'FontSize', fontSize, 'XTick', 1:12, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});
xlabel('Month', 'FontSize', fontSize);
ylabel('Number of days above threshold', 'FontSize', fontSize);
title('Total number of days above given threshold', 'FontSize', fontSize + 1);

saveas(fig1, fullfile(pwd, 'Results', 'Plots', 'Days_Above_Threshold_Per_Month.png'));
close(fig1);

MonthlyMean = grpstats(TWL, num2str(month(Date)), 'mean');

fig2 = figure('visible', 'off');
plot(1:12, MonthlyMean, '-', 'LineWidth', 2.5);
set(gca, 'FontSize', fontSize, 'XTick', 1:12, 'XTickLabel', {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});
xlabel('Month', 'FontSize', fontSize);
ylabel('Average TWL (m)', 'FontSize', fontSize);
title('Monthly average of Daily Maximum TWL', 'FontSize', fontSize + 1);

saveas(fig2, fullfile(pwd, 'Results', 'Plots', 'Monthly_Average_Daily_Maximum_TWL.png'));
close(fig2);



