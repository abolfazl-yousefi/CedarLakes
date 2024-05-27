
function ff_retperplot(x,Color,Name,lwd)

[ExProb,q] = ecdf(x,'function','survivor');

plot(1./ExProb/365, q, 'LineWidth', lwd, 'Color', Color, 'DisplayName', Name)

return