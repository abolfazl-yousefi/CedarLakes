
function h = ff_exprobplot_myVersion(x, dx, Name, Color, sz)
    % Adjust the x data
    x = x - dx;
    x = x(x <= mean(x) * log(10));
    x = x / mean(x);
    
    % Check if x is a vector
    if ~isvector(x)
        error('The variable x must be a vector.');
    end
    
    % Ensure x is not empty
    if isempty(x)
        warning('The variable x is empty after processing.');
        h = [];
        return;
    end
    
    % Calculate the empirical CDF
    [ExProb, qi] = ecdf(x, 'function', 'survivor');
    
    % Plot the data
    h = scatter(qi, ExProb, sz, 'o', 'filled', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', Color, 'DisplayName', Name);
    
    clear x dx Name Color ExProb qi
    return
end