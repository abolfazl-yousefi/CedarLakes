function ff_retperclustboundsplot(D,Type,VarName,Beach,Color,Name,lwd)

    Idx = ff_VarIdx(D,Type,VarName);
    VarNames = D.Properties.VariableNames(Idx);
    PosBeach = round(rmmissing(D.CS_Threshold) - Beach,1)==0;
    M = rmmissing(D.(char(VarNames(PosBeach))));
    
    N = length(M);
    
    Param = length(rmmissing(D.TWL_DailyMax))/length(rmmissing(M));
    
    [ExProb,q,LB,UB] = ecdf(M,'function','survivor','Alpha',0.05,'Bounds','on');
    LB = 1./LB*Param; 
    UB = 1./UB*Param;

    plot(1./ExProb*Param, q, 'LineWidth', lwd, 'Color', Color, 'DisplayName', Name)
    hold on
    plot(LB,q,'--','Color','r','LineWidth',lwd)
    plot(UB,q,'--','Color','r','LineWidth',lwd)
    clear VarNames PosBeach Idx
    
return