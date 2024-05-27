function h = ff_exprobplot(x,dx,Name,Color,sz)

    x = x-dx;
    x = x(x <= mean(x)*log(10));
    x = x/mean(x);
    [ExProb,qi] = ecdf(x,'function','survivor');
    h = scatter(qi,ExProb,sz,'o','filled','MarkerEdgeColor','k','MarkerFaceColor', Color,'DisplayName',Name);
    
    clear x dx Name Colo ExProb qi


return