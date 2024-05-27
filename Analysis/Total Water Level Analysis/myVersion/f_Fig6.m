
%%% Figure 6A

sz = 12;    % Marker Size
lwd = 2;    % Line Width


figure
h = zeros(1,22);
h(1) = errorbar(WRmean.VA, Beach.VA-TA.VA, BeachLb.VA, BeachUb.VA, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA');
hold on
h(2) = errorbar(WRmean.TX_GV, Beach.TX_GV-TA.TX_GV, BeachLb.TX_GV, BeachUb.TX_GV,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX GV');
h(3) = errorbar(WRmean.TX_CC, Beach.TX_CC - TA.TX_CC, BeachLb.TX_CC, BeachUb.TX_CC,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX CC');
h(4) = errorbar(WRmean.OR_SB, Beach.OR_SB-TA.OR_SB, BeachLb.OR_SB, BeachUb.OR_SB, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','OR SB');
h(5) = errorbar(WRmean.CA, Beach.CA-TA.CA, BeachLb.CA, BeachUb.CA,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','CA');
h(6) = errorbar(WRmean.FL, Beach.FL-TA.FL, BeachLb.FL, BeachUb.FL,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL');
h(7) = errorbar(WRmean.FL_SP, Beach.FL_SP-TA.FL_SP, BeachLb.FL_SP, BeachUb.FL_SP,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL SP');
h(8) = errorbar(WRmean.AUS_NSW, Beach.AUS_NSW-TA.AUS_NSW, BeachLb.AUS_NSW,BeachUb.AUS_NSW,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AUS NSW');
h(9) = errorbar(WRmean.HI, Beach.HI-TA.HI, BeachLb.HI, BeachUb.HI,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','HI');
h(10) = errorbar(WRmean.IT, Beach.IT-TA.IT, BeachLb.IT, BeachUb.IT, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','IT');
h(11) = errorbar(WRmean.AK, Beach.AK-TA.AK, BeachLb.AK, BeachUb.AK,  '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AK');
h(12) = errorbar(WRmean.MA, Beach.MA-TA.MA, BeachLb.MA, BeachUb.MA, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA');
h(13) = errorbar(WRmean.AL_Dauphin, Beach.AL_Dauphin-TA.AL_Dauphin, BeachLb.AL_Dauphin, BeachUb.AL_Dauphin, '.', 'color', Colors.AL_Dauphin, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AL Dauphin');
h(14) = errorbar(WRmean.FL_Shell, Beach.FL_Shell-TA.FL_Shell, BeachLb.FL_Shell, BeachUb.FL_Shell, '.', 'color', Colors.FL_Shell, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL Shell');
% h(15) = errorbar(WRmean.GA_LittleTybee, Beach.GA_LittleTybee-TA.GA_LittleTybee, BeachLb.GA_LittleTybee, BeachUb.GA_LittleTybee, '.', 'color', Colors.GA_LittleTybee, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','GA LittleTybee');
h(15) = errorbar(WRmean.MA_Plum, Beach.MA_Plum-TA.MA_Plum, BeachLb.MA_Plum, BeachUb.MA_Plum, '.', 'color', Colors.MA_Plum, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA Plum');
h(16) = errorbar(WRmean.NC_BaldHead, Beach.NC_BaldHead-TA.NC_BaldHead, BeachLb.NC_BaldHead, BeachUb.NC_BaldHead, '.', 'color', Colors.NC_BaldHead, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC BaldHead');
h(17) = errorbar(WRmean.NC_Masonboro, Beach.NC_Masonboro-TA.NC_Masonboro, BeachLb.NC_Masonboro, BeachUb.NC_Masonboro, '.', 'color', Colors.NC_Masonboro, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Masonboro');
h(18) = errorbar(WRmean.NC_Portsmouth, Beach.NC_Portsmouth-TA.NC_Portsmouth, BeachLb.NC_Portsmouth, BeachUb.NC_Portsmouth, '.', 'color', Colors.NC_Portsmouth, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Portsmouth');
% h(20) = errorbar(WRmean.SC_Lighthouse, Beach.SC_Lighthouse-TA.SC_Lighthouse, BeachLb.SC_Lighthouse, BeachUb.SC_Lighthouse, '.', 'color', Colors.SC_Lighthouse, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Lighthouse');
% h(21) = errorbar(WRmean.SC_Pockoy, Beach.SC_Pockoy-TA.SC_Pockoy, BeachLb.SC_Pockoy, BeachUb.SC_Pockoy, '.', 'color', Colors.SC_Pockoy, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Pockoy');
h(19) = errorbar(WRmean.TX_Follets, Beach.TX_Follets-TA.TX_Follets, BeachLb.TX_Follets, BeachUb.TX_Follets, '.', 'color', Colors.TX_Follets, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Follets');
h(20) = errorbar(WRmean.TX_Hog, Beach.TX_Hog-TA.TX_Hog, BeachLb.TX_Hog, BeachUb.TX_Hog, '.', 'color', Colors.TX_Hog, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Hog');
h(21) = errorbar(WRmean.TX_MatagordaPeninsula, Beach.TX_MatagordaPeninsula-TA.TX_MatagordaPeninsula, BeachLb.TX_MatagordaPeninsula, BeachUb.TX_MatagordaPeninsula, '.', 'color', Colors.TX_MatagordaPeninsula, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(WRmean.TX_Padre, Beach.TX_Padre-TA.TX_Padre, BeachLb.TX_Padre, BeachUb.TX_Padre, '.', 'color', Colors.TX_Padre, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Padre');
h(22) = errorbar(WRmean.VA_Assateague, Beach.VA_Assateague-TA.VA_Assateague, BeachLb.VA_Assateague, BeachUb.VA_Assateague, '.', 'color', Colors.VA_Assateague, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA Assateague');
plot(WRmean.VA, Beach.VA-TA.VA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_GV, Beach.TX_GV-TA.TX_GV,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_CC, Beach.TX_CC - TA.TX_CC,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.OR_SB, Beach.OR_SB-TA.OR_SB,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.CA, Beach.CA-TA.CA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL, Beach.FL-TA.FL,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL_SP, Beach.FL_SP-TA.FL_SP,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AUS_NSW, Beach.AUS_NSW-TA.AUS_NSW,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.HI, Beach.HI-TA.HI,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.IT, Beach.IT-TA.IT,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AK, Beach.AK-TA.AK,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.MA, Beach.MA-TA.MA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AL_Dauphin, Beach.AL_Dauphin-TA.AL_Dauphin,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL_Shell, Beach.FL_Shell-TA.FL_Shell,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.GA_LittleTybee, Beach.GA_LittleTybee-TA.GA_LittleTybee,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.GA_LittleTybee,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.MA_Plum, Beach.MA_Plum-TA.MA_Plum,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_BaldHead, Beach.NC_BaldHead-TA.NC_BaldHead,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_Masonboro, Beach.NC_Masonboro-TA.NC_Masonboro,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Masonboro,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_Portsmouth, Beach.NC_Portsmouth-TA.NC_Portsmouth,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Portsmouth,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.SC_Lighthouse, Beach.SC_Lighthouse-TA.SC_Lighthouse,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Lighthouse,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.SC_Pockoy, Beach.SC_Pockoy-TA.SC_Pockoy,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Pockoy,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_Follets, Beach.TX_Follets-TA.TX_Follets,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_Hog, Beach.TX_Hog-TA.TX_Hog,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Hog,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_MatagordaPeninsula, Beach.TX_MatagordaPeninsula-TA.TX_MatagordaPeninsula,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_MatagordaPeninsula,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.TX_Padre, Beach.TX_Padre-TA.TX_Padre,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Padre,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.VA_Assateague, Beach.VA_Assateague-TA.VA_Assateague,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.VA_Assateague,'MarkerSize',sz,'LineWidth',lwd)
x = struct2array(WRmean);
y = struct2array(Beach) - struct2array(TA);
slope = x'\y';
x = 0:0.01:2; 
yfit = slope*x;
plot(x,yfit,'--','Color','k','LineWidth',1.5)
xlabel('$\overline{\eta_w}$ (m)','Interpreter','latex','FontSize',20)
ylabel('$Z_r - A_t$ (m)','Interpreter','latex','FontSize',20)
% title('Zr - At vs Average Wave Runup','FontSize',26)
legend(h(13:22),'NumColumns',2,'Location','north','FontSize',24)
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h x y slope yfit


%%% Figure 6B
figure
h = zeros(1,22);
h(1) = errorbar(WRmean.VA, M.VA, M_Lb.VA, M_Ub.VA, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA');
hold on
h(2) = errorbar(WRmean.TX_GV, M.TX_GV, M_Lb.TX_GV, M_Ub.TX_GV, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX GV');
h(3) = errorbar(WRmean.TX_CC, M.TX_CC, M_Lb.TX_CC, M_Ub.TX_CC, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX CC');
h(4) = errorbar(WRmean.OR_SB, M.OR_SB, M_Lb.OR_SB, M_Ub.OR_SB, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','OR SB');
h(5) = errorbar(WRmean.CA, M.CA, M_Lb.CA, M_Ub.CA, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','CA');
h(6) = errorbar(WRmean.FL, M.FL, M_Lb.FL, M_Ub.FL, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL');
h(7) = errorbar(WRmean.FL_SP, M.FL_SP, M_Lb.FL_SP, M_Ub.FL_SP, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL SP');
h(8) = errorbar(WRmean.AUS_NSW, M.AUS_NSW, M_Lb.AUS_NSW, M_Ub.AUS_NSW, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AUS NSW');
h(9) = errorbar(WRmean.HI, M.HI, M_Lb.HI, M_Ub.HI, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','HI');
h(10) = errorbar(WRmean.IT, M.IT, M_Lb.IT, M_Ub.IT, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','IT');
h(11) = errorbar(WRmean.AK, M.AK, M_Lb.AK, M_Ub.AK, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AK');
h(12) = errorbar(WRmean.MA, M.MA, M_Lb.MA, M_Ub.MA, '.', 'color', Colors.Gray, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA');
h(13) = errorbar(WRmean.AL_Dauphin, M.AL_Dauphin, M_Lb.AL_Dauphin, M_Ub.AL_Dauphin, '.', 'color', Colors.AL_Dauphin, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AL Dauphin');
h(14) = errorbar(WRmean.FL_Shell, M.FL_Shell, M_Lb.FL_Shell, M_Ub.FL_Shell, '.', 'color', Colors.FL_Shell, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL Shell');
% h(15) = errorbar(WRmean.GA_LittleTybee, M.GA_LittleTybee, M_Lb.GA_LittleTybee, M_Ub.GA_LittleTybee, '.', 'color', Colors.GA_LittleTybee, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','GA LittleTybee');
h(15) = errorbar(WRmean.MA_Plum, M.MA_Plum, M_Lb.MA_Plum, M_Ub.MA_Plum, '.', 'color', Colors.MA_Plum, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA Plum');
h(16) = errorbar(WRmean.NC_BaldHead, M.NC_BaldHead, M_Lb.NC_BaldHead, M_Ub.NC_BaldHead, '.', 'color', Colors.NC_BaldHead, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC BaldHead');
h(17) = errorbar(WRmean.NC_Masonboro, M.NC_Masonboro, M_Lb.NC_Masonboro, M_Ub.NC_Masonboro, '.', 'color', Colors.NC_Masonboro, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Masonboro');
h(18) = errorbar(WRmean.NC_Portsmouth, M.NC_Portsmouth, M_Lb.NC_Portsmouth, M_Ub.NC_Portsmouth, '.', 'color', Colors.NC_Portsmouth, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Portsmouth');
% h(20) = errorbar(WRmean.SC_Lighthouse, M.SC_Lighthouse, M_Lb.SC_Lighthouse, M_Ub.SC_Lighthouse, '.', 'color', Colors.SC_Lighthouse, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Lighthouse');
% h(21) = errorbar(WRmean.SC_Pockoy, M.SC_Pockoy, M_Lb.SC_Pockoy, M_Ub.SC_Pockoy, '.', 'color', Colors.SC_Pockoy, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Pockoy');
h(19) = errorbar(WRmean.TX_Follets, M.TX_Follets, M_Lb.TX_Follets, M_Ub.TX_Follets, '.', 'color', Colors.TX_Follets, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Follets');
h(20) = errorbar(WRmean.TX_Hog, M.TX_Hog, M_Lb.TX_Hog, M_Ub.TX_Hog, '.', 'color', Colors.TX_Hog, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Hog');
h(21) = errorbar(WRmean.TX_MatagordaPeninsula, M.TX_MatagordaPeninsula, M_Lb.TX_MatagordaPeninsula, M_Ub.TX_MatagordaPeninsula, '.', 'color', Colors.TX_MatagordaPeninsula, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(WRmean.TX_Padre, M.TX_Padre, M_Lb.TX_Padre, M_Ub.TX_Padre, '.', 'color', Colors.TX_Padre, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Padre');
h(22) = errorbar(WRmean.VA_Assateague, M.VA_Assateague, M_Lb.VA_Assateague, M_Ub.VA_Assateague, '.', 'color', Colors.VA_Assateague, 'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA Assateague');
plot(WRmean.VA, M.VA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_GV, M.TX_GV,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_CC, M.TX_CC,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.OR_SB, M.OR_SB,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.CA, M.CA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL, M.FL,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL_SP, M.FL_SP,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AUS_NSW, M.AUS_NSW,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.HI, M.HI,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.IT, M.IT,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AK, M.AK,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.MA, M.MA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.AL_Dauphin, M.AL_Dauphin,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.FL_Shell, M.FL_Shell,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.GA_LittleTybee, M.GA_LittleTybee,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.GA_LittleTybee,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.MA_Plum, M.MA_Plum,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_BaldHead, M.NC_BaldHead,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_Masonboro, M.NC_Masonboro,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Masonboro,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.NC_Portsmouth, M.NC_Portsmouth,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Portsmouth,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.SC_Lighthouse, M.SC_Lighthouse,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Lighthouse,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.SC_Pockoy, M.SC_Pockoy,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Pockoy,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_Follets, M.TX_Follets,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_Hog, M.TX_Hog,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Hog,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.TX_MatagordaPeninsula, M.TX_MatagordaPeninsula,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_MatagordaPeninsula,'MarkerSize',sz,'LineWidth',lwd)
% plot(WRmean.TX_Padre, M.TX_Padre,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Padre,'MarkerSize',sz,'LineWidth',lwd)
plot(WRmean.VA_Assateague, M.VA_Assateague,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.VA_Assateague,'MarkerSize',sz,'LineWidth',lwd)
yline(0.3,'k--','LineWidth',2)
% axis([0 2.5 0 0.65])
xlabel('$\overline{\eta_w}$ (m)','Interpreter','latex','FontSize',20);
ylabel('$\overline{S_r}$ (m)','Interpreter','latex','FontSize',20);
legend(h(13:22),'NumColumns',2,'Location','north','FontSize',20)
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h

clear sz lwd
