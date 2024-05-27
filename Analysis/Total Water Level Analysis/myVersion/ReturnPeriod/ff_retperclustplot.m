function ff_retperclustplot(D,Type,VarName,Beach,Color,Name,lwd)

    Idx = ff_VarIdx(D,Type,VarName);
    VarNames = D.Properties.VariableNames(Idx);
    PosBeach = round(rmmissing(D.CS_Threshold) - Beach,1)==0;
    M = rmmissing(D.(char(VarNames(PosBeach))));
    
    
    Param = length(rmmissing(D.TWL_DailyMax))/(length(rmmissing(M))-1);
    
    [ExProb,q] = ecdf(M,'function','survivor');

    plot(1./ExProb*Param/365, q, 'LineWidth', lwd, 'Color', Color, 'DisplayName', Name)
%     plot(1./ExProb, q, 'LineWidth', lwd, 'Color', Color, 'DisplayName', Name)

    clear VarNames PosBeach Idx
    
return