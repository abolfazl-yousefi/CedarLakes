

%%% EXPONENTIAL DISTRIBUTION PARAMETERS VS THRESHOLDS - BEACH ElEVATION
%%% (with error bars)

lwd = 1.5; % Line Width
sz1 = 8;   % Marker Size

%% Frequency - Lambda -- Fig4A
figure
h = zeros(1,22);
plot(Threshold.VA - Beach.VA, Lambda2.VA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','VA');
hold on
plot(Threshold.TX_GV - Beach.TX_GV, Lambda2.TX_GV, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','TX GV');
plot(Threshold.TX_CC - Beach.TX_CC, Lambda2.TX_CC, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','TX CC');
plot(Threshold.OR_SB - Beach.OR_SB, Lambda2.OR_SB, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','OR SB');
plot(Threshold.CA - Beach.CA, Lambda2.CA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','CA');
plot(Threshold.FL - Beach.FL, Lambda2.FL, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','FL ');
plot(Threshold.FL_SP - Beach.FL_SP, Lambda2.FL_SP, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','FL SP');
plot(Threshold.AUS_NSW - Beach.AUS_NSW, Lambda2.AUS_NSW, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','AUS NSW');
plot(Threshold.HI - Beach.HI, Lambda2.HI, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','HI');
plot(Threshold.IT - Beach.IT, Lambda2.IT, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','IT');
plot(Threshold.AK - Beach.AK, Lambda2.AK, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','AK');
plot(Threshold.MA - Beach.MA, Lambda2.MA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','MA');
h(1) = errorbar(Threshold.VA - Beach.VA, Lambda2.VA, IA_Lb.VA, IA_Ub.VA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize',sz1,'DisplayName','VA');
h(2) = errorbar(Threshold.TX_GV - Beach.TX_GV, Lambda2.TX_GV, IA_Lb.TX_GV, IA_Ub.TX_GV, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','TX GV');
h(3) = errorbar(Threshold.TX_CC - Beach.TX_CC, Lambda2.TX_CC, IA_Lb.TX_CC, IA_Ub.TX_CC, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','TX CC');
h(4) = errorbar(Threshold.OR_SB - Beach.OR_SB, Lambda2.OR_SB, IA_Lb.OR_SB, IA_Ub.OR_SB, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','OR SB');
h(5) = errorbar(Threshold.CA - Beach.CA, Lambda2.CA, IA_Lb.CA, IA_Ub.CA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','CA');
h(6) = errorbar(Threshold.FL - Beach.FL, Lambda2.FL, IA_Lb.FL, IA_Ub.FL, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','FL ');
h(7) = errorbar(Threshold.FL_SP - Beach.FL_SP, Lambda2.FL_SP, IA_Lb.FL_SP, IA_Ub.FL_SP, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','FL SP');
h(8) = errorbar(Threshold.AUS_NSW - Beach.AUS_NSW, Lambda2.AUS_NSW, IA_Lb.AUS_NSW, IA_Ub.AUS_NSW, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','AUS NSW');
h(9) = errorbar(Threshold.HI - Beach.HI, Lambda2.HI, IA_Lb.HI, IA_Ub.HI, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','HI');
h(10) = errorbar(Threshold.IT - Beach.IT, Lambda2.IT, IA_Lb.IT, IA_Ub.IT, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','IT');
h(11) = errorbar(Threshold.AK - Beach.AK, Lambda2.AK, IA_Lb.AK, IA_Ub.AK, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','AK');
h(12) = errorbar(Threshold.MA - Beach.MA, Lambda2.MA, IA_Lb.MA, IA_Ub.MA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','MA');
plot(Threshold.AL_Dauphin - Beach.AL_Dauphin, Lambda2.AL_Dauphin, 'color', Colors.AL_Dauphin,'LineWidth',lwd,'DisplayName','AL Dauphin');
plot(Threshold.FL_Shell - Beach.FL_Shell, Lambda2.FL_Shell,'color', Colors.FL_Shell, 'LineWidth',lwd,'DisplayName','FL Shell');
% plot(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Lambda2.GA_LittleTybee, 'color', Colors.GA_LittleTybee, 'LineWidth',lwd,'DisplayName','GA LittleTybee');
plot(Threshold.MA_Plum - Beach.MA_Plum, Lambda2.MA_Plum, 'color', Colors.MA_Plum, 'LineWidth',lwd,'DisplayName','MA Plum');
plot(Threshold.NC_BaldHead - Beach.NC_BaldHead, Lambda2.NC_BaldHead, 'color', Colors.NC_BaldHead, 'LineWidth',lwd,'DisplayName','NC BaldHead');
plot(Threshold.NC_Masonboro - Beach.NC_Masonboro, Lambda2.NC_Masonboro, 'color', Colors.NC_Masonboro, 'LineWidth',lwd,'DisplayName','NC Masonboro');
plot(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Lambda2.NC_Portsmouth, 'color', Colors.NC_Portsmouth, 'LineWidth',lwd,'DisplayName','NC Portsmouth');
% plot(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Lambda2.SC_Lighthouse, 'color', Colors.SC_Lighthouse, 'LineWidth',lwd,'DisplayName','SC Lighthouse');
% plot(Threshold.SC_Pockoy - Beach.SC_Pockoy, Lambda2.SC_Pockoy, 'color', Colors.SC_Pockoy, 'LineWidth',lwd,'DisplayName','SC Pockoy');
plot(Threshold.TX_Follets - Beach.TX_Follets, Lambda2.TX_Follets, 'color', Colors.TX_Follets, 'LineWidth',lwd,'DisplayName','TX Follets');
plot(Threshold.TX_Hog - Beach.TX_Hog, Lambda2.TX_Hog, 'color', Colors.TX_Hog, 'LineWidth',lwd,'DisplayName','TX Hog');
plot(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Lambda2.TX_MatagordaPeninsula, 'color', Colors.TX_MatagordaPeninsula, 'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% plot(Threshold.TX_Padre - Beach.TX_Padre, Lambda2.TX_Padre, 'color', Colors.TX_Padre, 'LineWidth',lwd,'DisplayName','TX Padre');
plot(Threshold.VA_Assateague - Beach.VA_Assateague, Lambda2.VA_Assateague, 'color', Colors.VA_Assateague, 'LineWidth',lwd,'DisplayName','VA Assateague');
h(13) = errorbar(Threshold.AL_Dauphin - Beach.AL_Dauphin, Lambda2.AL_Dauphin, IA_Lb.AL_Dauphin, IA_Ub.AL_Dauphin, 'o', 'color', Colors.AL_Dauphin,'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.AL_Dauphin,'MarkerSize', sz1,'DisplayName','AL Dauphin');
h(14) = errorbar(Threshold.FL_Shell - Beach.FL_Shell, Lambda2.FL_Shell, IA_Lb.FL_Shell, IA_Ub.FL_Shell, 'o', 'color', Colors.FL_Shell, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.FL_Shell,'MarkerSize', sz1,'DisplayName','FL Shell');
% h(15) = errorbar(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Lambda2.GA_LittleTybee, IA_Lb.GA_LittleTybee, IA_Ub.GA_LittleTybee, 'o', 'color', Colors.GA_LittleTybee, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.GA_LittleTybee,'MarkerSize', sz1,'DisplayName','GA LittleTybee');
h(15) = errorbar(Threshold.MA_Plum - Beach.MA_Plum, Lambda2.MA_Plum, IA_Lb.MA_Plum, IA_Ub.MA_Plum, 'o', 'color', Colors.MA_Plum, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.MA_Plum,'MarkerSize', sz1,'DisplayName','MA Plum');
h(16) = errorbar(Threshold.NC_BaldHead - Beach.NC_BaldHead, Lambda2.NC_BaldHead, IA_Lb.NC_BaldHead, IA_Ub.NC_BaldHead, 'o', 'color', Colors.NC_BaldHead, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_BaldHead,'MarkerSize', sz1,'DisplayName','NC BaldHead');
h(17) = errorbar(Threshold.NC_Masonboro - Beach.NC_Masonboro, Lambda2.NC_Masonboro, IA_Lb.NC_Masonboro, IA_Ub.NC_Masonboro, 'o', 'color', Colors.NC_Masonboro, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Masonboro,'MarkerSize', sz1,'DisplayName','NC Masonboro');
h(18) = errorbar(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Lambda2.NC_Portsmouth, IA_Lb.NC_Portsmouth, IA_Ub.NC_Portsmouth, 'o', 'color', Colors.NC_Portsmouth, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Portsmouth,'MarkerSize', sz1,'DisplayName','NC Portsmouth');
% h(20) = errorbar(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Lambda2.SC_Lighthouse, IA_Lb.SC_Lighthouse, IA_Ub.SC_Lighthouse, 'o', 'color', Colors.SC_Lighthouse, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.SC_Lighthouse,'MarkerSize', sz1,'DisplayName','SC Lighthouse');
% h(21) = errorbar(Threshold.SC_Pockoy - Beach.SC_Pockoy, Lambda2.SC_Pockoy, IA_Lb.SC_Pockoy, IA_Ub.SC_Pockoy, 'o', 'color', Colors.SC_Pockoy, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.SC_Pockoy,'MarkerSize', sz1,'DisplayName','SC Pockoy');
h(19) = errorbar(Threshold.TX_Follets - Beach.TX_Follets, Lambda2.TX_Follets, IA_Lb.TX_Follets, IA_Ub.TX_Follets, 'o', 'color', Colors.TX_Follets, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Follets,'MarkerSize', sz1,'DisplayName','TX Follets');
h(20) = errorbar(Threshold.TX_Hog - Beach.TX_Hog, Lambda2.TX_Hog, IA_Lb.TX_Hog, IA_Ub.TX_Hog, 'o', 'color', Colors.TX_Hog, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Hog,'MarkerSize', sz1,'DisplayName','TX Hog');
h(21) = errorbar(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Lambda2.TX_MatagordaPeninsula, IA_Lb.TX_MatagordaPeninsula, IA_Ub.TX_MatagordaPeninsula, 'o', 'color', Colors.TX_MatagordaPeninsula, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_MatagordaPeninsula,'MarkerSize', sz1,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(Threshold.TX_Padre - Beach.TX_Padre, Lambda2.TX_Padre, IA_Lb.TX_Padre, IA_Ub.TX_Padre, 'o', 'color', Colors.TX_Padre, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Padre,'MarkerSize', sz1,'DisplayName','TX Padre');
h(22) = errorbar(Threshold.VA_Assateague - Beach.VA_Assateague, Lambda2.VA_Assateague, IA_Lb.VA_Assateague, IA_Ub.VA_Assateague, 'o', 'color', Colors.VA_Assateague, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.VA_Assateague, 'MarkerSize', sz1,'DisplayName','VA Assateague');
% plot(0:0.01:0.5, 2.5*exp(-(0:0.01:0.5)/0.4),'k-.','LineWidth',2.5)
axis([-2 1 0.1 100])
x = (-1:0.01:1);
y = 18*exp(-x/0.3);
plot(x,y,'--','Color','k','LineWidth',1.5)
xlabel('$Z - Z_r$ (m)','Interpreter','latex','FontSize',20);
ylabel('$\lambda$ (events per year)','Interpreter','latex','FontSize',20);
title('Number of events per year','FontSize',26);
legend(h(13:22),'NumColumns',2,'Location','southwest','FontSize',22)
set(gca,'FontSize',22,'YScale','log')
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h

%% Intensity - Mu -- Fig4B
figure
h = zeros(1,22);
plot(Threshold.VA - Beach.VA, Mu.VA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','VA');
hold on
plot(Threshold.TX_GV - Beach.TX_GV, Mu.TX_GV, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','TX GV');
plot(Threshold.TX_CC - Beach.TX_CC, Mu.TX_CC, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','TX CC');
plot(Threshold.OR_SB - Beach.OR_SB, Mu.OR_SB, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','OR SB');
plot(Threshold.CA - Beach.CA, Mu.CA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','CA');
plot(Threshold.FL - Beach.FL, Mu.FL, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','FL ');
plot(Threshold.FL_SP - Beach.FL_SP, Mu.FL_SP, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','FL SP');
plot(Threshold.AUS_NSW - Beach.AUS_NSW, Mu.AUS_NSW, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','AUS NSW');
plot(Threshold.HI - Beach.HI, Mu.HI, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','HI');
plot(Threshold.IT - Beach.IT, Mu.IT, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','IT');
plot(Threshold.AK - Beach.AK, Mu.AK, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','AK');
plot(Threshold.MA - Beach.MA, Mu.MA, 'color', Colors.Gray, 'LineWidth',lwd,'DisplayName','MA');
h(1) = errorbar(Threshold.VA - Beach.VA, Mu.VA, Mu_Lb.VA, Mu_Ub.VA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize',sz1,'DisplayName','VA');
h(2) = errorbar(Threshold.TX_GV - Beach.TX_GV, Mu.TX_GV, Mu_Lb.TX_GV, Mu_Ub.TX_GV, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','TX GV');
h(3) = errorbar(Threshold.TX_CC - Beach.TX_CC, Mu.TX_CC, Mu_Lb.TX_CC, Mu_Ub.TX_CC, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','TX CC');
h(4) = errorbar(Threshold.OR_SB - Beach.OR_SB, Mu.OR_SB, Mu_Lb.OR_SB, Mu_Ub.OR_SB, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','OR SB');
h(5) = errorbar(Threshold.CA - Beach.CA, Mu.CA, Mu_Lb.CA, Mu_Ub.CA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','CA');
h(6) = errorbar(Threshold.FL - Beach.FL, Mu.FL, Mu_Lb.FL, Mu_Ub.FL, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','FL ');
h(7) = errorbar(Threshold.FL_SP - Beach.FL_SP, Mu.FL_SP, Mu_Lb.FL_SP, Mu_Ub.FL_SP, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','FL SP');
h(8) = errorbar(Threshold.AUS_NSW - Beach.AUS_NSW, Mu.AUS_NSW, Mu_Lb.AUS_NSW, Mu_Ub.AUS_NSW, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','AUS NSW');
h(9) = errorbar(Threshold.HI - Beach.HI, Mu.HI, Mu_Lb.HI, Mu_Ub.HI, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','HI');
h(10) = errorbar(Threshold.IT - Beach.IT, Mu.IT, Mu_Lb.IT, Mu_Ub.IT, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','IT');
h(11) = errorbar(Threshold.AK - Beach.AK, Mu.AK, Mu_Lb.AK, Mu_Ub.AK, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','AK');
h(12) = errorbar(Threshold.MA - Beach.MA, Mu.MA, Mu_Lb.MA, Mu_Ub.MA, 'o', 'color', Colors.Gray, 'MarkerEdgeColor',Colors.Gray, 'MarkerFaceColor', Colors.Gray,'MarkerSize', sz1,'DisplayName','MA');
plot(Threshold.AL_Dauphin - Beach.AL_Dauphin, Mu.AL_Dauphin, 'color', Colors.AL_Dauphin,'LineWidth',lwd,'DisplayName','AL Dauphin');
plot(Threshold.FL_Shell - Beach.FL_Shell, Mu.FL_Shell,'color', Colors.FL_Shell, 'LineWidth',lwd,'DisplayName','FL Shell');
% plot(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Mu.GA_LittleTybee, 'color', Colors.GA_LittleTybee, 'LineWidth',lwd,'DisplayName','GA LittleTybee');
plot(Threshold.MA_Plum - Beach.MA_Plum, Mu.MA_Plum, 'color', Colors.MA_Plum, 'LineWidth',lwd,'DisplayName','MA Plum');
plot(Threshold.NC_BaldHead - Beach.NC_BaldHead, Mu.NC_BaldHead, 'color', Colors.NC_BaldHead, 'LineWidth',lwd,'DisplayName','NC BaldHead');
plot(Threshold.NC_Masonboro - Beach.NC_Masonboro, Mu.NC_Masonboro, 'color', Colors.NC_Masonboro, 'LineWidth',lwd,'DisplayName','NC Masonboro');
plot(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Mu.NC_Portsmouth, 'color', Colors.NC_Portsmouth, 'LineWidth',lwd,'DisplayName','NC Portsmouth');
% plot(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Mu.SC_Lighthouse, 'color', Colors.SC_Lighthouse, 'LineWidth',lwd,'DisplayName','SC Lighthouse');
% plot(Threshold.SC_Pockoy - Beach.SC_Pockoy, Mu.SC_Pockoy, 'color', Colors.SC_Pockoy, 'LineWidth',lwd,'DisplayName','SC Pockoy');
plot(Threshold.TX_Follets - Beach.TX_Follets, Mu.TX_Follets, 'color', Colors.TX_Follets, 'LineWidth',lwd,'DisplayName','TX Follets');
plot(Threshold.TX_Hog - Beach.TX_Hog, Mu.TX_Hog, 'color', Colors.TX_Hog, 'LineWidth',lwd,'DisplayName','TX Hog');
plot(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Mu.TX_MatagordaPeninsula, 'color', Colors.TX_MatagordaPeninsula, 'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% plot(Threshold.TX_Padre - Beach.TX_Padre, Mu.TX_Padre, 'color', Colors.TX_Padre, 'LineWidth',lwd,'DisplayName','TX Padre');
plot(Threshold.VA_Assateague - Beach.VA_Assateague, Mu.VA_Assateague, 'color', Colors.VA_Assateague, 'LineWidth',lwd,'DisplayName','VA Assateague');
h(13) = errorbar(Threshold.AL_Dauphin - Beach.AL_Dauphin, Mu.AL_Dauphin, Mu_Lb.AL_Dauphin, Mu_Ub.AL_Dauphin, 'o', 'color', Colors.AL_Dauphin,'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.AL_Dauphin,'MarkerSize', sz1,'DisplayName','AL Dauphin');
h(14) = errorbar(Threshold.FL_Shell - Beach.FL_Shell, Mu.FL_Shell, Mu_Lb.FL_Shell, Mu_Ub.FL_Shell, 'o', 'color', Colors.FL_Shell, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.FL_Shell,'MarkerSize', sz1,'DisplayName','FL Shell');
% h(15) = errorbar(Threshold.GA_LittleTybee - Beach.GA_LittleTybee, Mu.GA_LittleTybee, Mu_Lb.GA_LittleTybee, Mu_Ub.GA_LittleTybee, 'o', 'color', Colors.GA_LittleTybee, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.GA_LittleTybee,'MarkerSize', sz1,'DisplayName','GA LittleTybee');
h(15) = errorbar(Threshold.MA_Plum - Beach.MA_Plum, Mu.MA_Plum, Mu_Lb.MA_Plum, Mu_Ub.MA_Plum, 'o', 'color', Colors.MA_Plum, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.MA_Plum,'MarkerSize', sz1,'DisplayName','MA Plum');
h(16) = errorbar(Threshold.NC_BaldHead - Beach.NC_BaldHead, Mu.NC_BaldHead, Mu_Lb.NC_BaldHead, Mu_Ub.NC_BaldHead, 'o', 'color', Colors.NC_BaldHead, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_BaldHead,'MarkerSize', sz1,'DisplayName','NC BaldHead');
h(17) = errorbar(Threshold.NC_Masonboro - Beach.NC_Masonboro, Mu.NC_Masonboro, Mu_Lb.NC_Masonboro, Mu_Ub.NC_Masonboro, 'o', 'color', Colors.NC_Masonboro, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Masonboro,'MarkerSize', sz1,'DisplayName','NC Masonboro');
h(18) = errorbar(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Mu.NC_Portsmouth, Mu_Lb.NC_Portsmouth, Mu_Ub.NC_Portsmouth, 'o', 'color', Colors.NC_Portsmouth, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Portsmouth,'MarkerSize', sz1,'DisplayName','NC Portsmouth');
% h(20) = errorbar(Threshold.SC_Lighthouse - Beach.SC_Lighthouse, Mu.SC_Lighthouse, Mu_Lb.SC_Lighthouse, Mu_Ub.SC_Lighthouse, 'o', 'color', Colors.SC_Lighthouse, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.SC_Lighthouse,'MarkerSize', sz1,'DisplayName','SC Lighthouse');
% h(21) = errorbar(Threshold.SC_Pockoy - Beach.SC_Pockoy, Mu.SC_Pockoy, Mu_Lb.SC_Pockoy, Mu_Ub.SC_Pockoy, 'o', 'color', Colors.SC_Pockoy, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.SC_Pockoy,'MarkerSize', sz1,'DisplayName','SC Pockoy');
h(19) = errorbar(Threshold.TX_Follets - Beach.TX_Follets, Mu.TX_Follets, Mu_Lb.TX_Follets, Mu_Ub.TX_Follets, 'o', 'color', Colors.TX_Follets, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Follets,'MarkerSize', sz1,'DisplayName','TX Follets');
h(20) = errorbar(Threshold.TX_Hog - Beach.TX_Hog, Mu.TX_Hog, Mu_Lb.TX_Hog, Mu_Ub.TX_Hog, 'o', 'color', Colors.TX_Hog, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Hog,'MarkerSize', sz1,'DisplayName','TX Hog');
h(21) = errorbar(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Mu.TX_MatagordaPeninsula, Mu_Lb.TX_MatagordaPeninsula, Mu_Ub.TX_MatagordaPeninsula, 'o', 'color', Colors.TX_MatagordaPeninsula, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_MatagordaPeninsula,'MarkerSize', sz1,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(Threshold.TX_Padre - Beach.TX_Padre, Mu.TX_Padre, Mu_Lb.TX_Padre, Mu_Ub.TX_Padre, 'o', 'color', Colors.TX_Padre, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Padre,'MarkerSize', sz1,'DisplayName','TX Padre');
h(22) = errorbar(Threshold.VA_Assateague - Beach.VA_Assateague, Mu.VA_Assateague, Mu_Lb.VA_Assateague, Mu_Ub.VA_Assateague, 'o', 'color', Colors.VA_Assateague, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.VA_Assateague, 'MarkerSize', sz1,'DisplayName','VA Assateague');
axis([-1 1 0 1.9])
yline(0.3,'--','Color','k','LineWidth',1.5)
xlabel('$Z - Z_r$ (m)','Interpreter','latex','FontSize',20);
ylabel('$\overline{S}$ (m)','Interpreter','latex','FontSize',20);
title('Average mark per event','FontSize',26);
legend(h(13:22),'NumColumns',2,'Location','northeast','FontSize',22)
set(gca,'FontSize',22)
set(gcf, 'Position', get(0, 'Screensize'));

hold off
clear h

clear lwd sz1

% %%% Figure for thesis
% 
% lwd = 1.5; % Line Width
% sz1 = 8;   % Marker Size
% 
% %% Frequency - Lambda -- Fig4A
% figure
% h = zeros(1,11);
% plot(Threshold.AL_Dauphin - Beach.AL_Dauphin, Lambda2.AL_Dauphin, 'color', Colors.AL_Dauphin,'LineWidth',lwd,'DisplayName','AL Dauphin');
% hold on
% plot(Threshold.FL_Shell - Beach.FL_Shell, Lambda2.FL_Shell,'color', Colors.FL_Shell, 'LineWidth',lwd,'DisplayName','FL Shell');
% plot(Threshold.MA_Plum - Beach.MA_Plum, Lambda2.MA_Plum, 'color', Colors.MA_Plum, 'LineWidth',lwd,'DisplayName','MA Plum');
% plot(Threshold.NC_BaldHead - Beach.NC_BaldHead, Lambda2.NC_BaldHead, 'color', Colors.NC_BaldHead, 'LineWidth',lwd,'DisplayName','NC BaldHead');
% plot(Threshold.NC_Masonboro - Beach.NC_Masonboro, Lambda2.NC_Masonboro, 'color', Colors.NC_Masonboro, 'LineWidth',lwd,'DisplayName','NC Masonboro');
% plot(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Lambda2.NC_Portsmouth, 'color', Colors.NC_Portsmouth, 'LineWidth',lwd,'DisplayName','NC Portsmouth');
% plot(Threshold.TX_Follets - Beach.TX_Follets, Lambda2.TX_Follets, 'color', Colors.TX_Follets, 'LineWidth',lwd,'DisplayName','TX Follets');
% plot(Threshold.TX_Hog - Beach.TX_Hog, Lambda2.TX_Hog, 'color', Colors.TX_Hog, 'LineWidth',lwd,'DisplayName','TX Hog');
% plot(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Lambda2.TX_MatagordaPeninsula, 'color', Colors.TX_MatagordaPeninsula, 'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% plot(Threshold.VA_Assateague - Beach.VA_Assateague, Lambda2.VA_Assateague, 'color', Colors.VA_Assateague, 'LineWidth',lwd,'DisplayName','VA Assateague');
% plot(Threshold.VA - Beach.VA, Lambda2.VA, 'color', [0 0.4470 0.7410], 'LineWidth',lwd,'DisplayName','VA (all other)');
% h(1) = errorbar(Threshold.AL_Dauphin - Beach.AL_Dauphin, Lambda2.AL_Dauphin, IA_Lb.AL_Dauphin, IA_Ub.AL_Dauphin, 'o', 'color', Colors.AL_Dauphin,'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.AL_Dauphin,'MarkerSize', sz1,'DisplayName','AL Dauphin');
% h(2) = errorbar(Threshold.FL_Shell - Beach.FL_Shell, Lambda2.FL_Shell, IA_Lb.FL_Shell, IA_Ub.FL_Shell, 'o', 'color', Colors.FL_Shell, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.FL_Shell,'MarkerSize', sz1,'DisplayName','FL Shell');
% h(3) = errorbar(Threshold.MA_Plum - Beach.MA_Plum, Lambda2.MA_Plum, IA_Lb.MA_Plum, IA_Ub.MA_Plum, 'o', 'color', Colors.MA_Plum, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.MA_Plum,'MarkerSize', sz1,'DisplayName','MA Plum');
% h(4) = errorbar(Threshold.NC_BaldHead - Beach.NC_BaldHead, Lambda2.NC_BaldHead, IA_Lb.NC_BaldHead, IA_Ub.NC_BaldHead, 'o', 'color', Colors.NC_BaldHead, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_BaldHead,'MarkerSize', sz1,'DisplayName','NC BaldHead');
% h(5) = errorbar(Threshold.NC_Masonboro - Beach.NC_Masonboro, Lambda2.NC_Masonboro, IA_Lb.NC_Masonboro, IA_Ub.NC_Masonboro, 'o', 'color', Colors.NC_Masonboro, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Masonboro,'MarkerSize', sz1,'DisplayName','NC Masonboro');
% h(6) = errorbar(Threshold.NC_Portsmouth - Beach.NC_Portsmouth, Lambda2.NC_Portsmouth, IA_Lb.NC_Portsmouth, IA_Ub.NC_Portsmouth, 'o', 'color', Colors.NC_Portsmouth, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.NC_Portsmouth,'MarkerSize', sz1,'DisplayName','NC Portsmouth');
% h(7) = errorbar(Threshold.TX_Follets - Beach.TX_Follets, Lambda2.TX_Follets, IA_Lb.TX_Follets, IA_Ub.TX_Follets, 'o', 'color', Colors.TX_Follets, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Follets,'MarkerSize', sz1,'DisplayName','TX Follets');
% h(8) = errorbar(Threshold.TX_Hog - Beach.TX_Hog, Lambda2.TX_Hog, IA_Lb.TX_Hog, IA_Ub.TX_Hog, 'o', 'color', Colors.TX_Hog, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_Hog,'MarkerSize', sz1,'DisplayName','TX Hog');
% h(9) = errorbar(Threshold.TX_MatagordaPeninsula - Beach.TX_MatagordaPeninsula, Lambda2.TX_MatagordaPeninsula, IA_Lb.TX_MatagordaPeninsula, IA_Ub.TX_MatagordaPeninsula, 'o', 'color', Colors.TX_MatagordaPeninsula, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.TX_MatagordaPeninsula,'MarkerSize', sz1,'DisplayName','TX MatagordaPeninsula');
% h(10) = errorbar(Threshold.VA_Assateague - Beach.VA_Assateague, Lambda2.VA_Assateague, IA_Lb.VA_Assateague, IA_Ub.VA_Assateague, 'o', 'color', Colors.VA_Assateague, 'MarkerEdgeColor','k', 'MarkerFaceColor', Colors.VA_Assateague, 'MarkerSize', sz1,'DisplayName','VA Assateague');
% h(11) = errorbar(Threshold.VA - Beach.VA, Lambda2.VA, IA_Lb.VA, IA_Ub.VA, 'o', 'color', [0 0.4470 0.7410], 'MarkerEdgeColor','k', 'MarkerFaceColor', [0 0.4470 0.7410],'MarkerSize',sz1,'DisplayName','VA (all other)');
% % plot(0:0.01:0.5, 2.5*exp(-(0:0.01:0.5)/0.4),'k-.','LineWidth',2.5)
% axis([-1.2 1 0.1 100])
% x = (-1:0.01:1);
% y = 18*exp(-x/0.3);
% plot(x,y,'--','Color','k','LineWidth',1.5)
% % xlabel('$Z - Z_r$ (m)','Interpreter','latex','FontSize',18);
% % ylabel('$\lambda$ (events per year)','Interpreter','latex','FontSize',18);
% % title('Number of events per year','FontSize',26);
% legend(h,'NumColumns',2,'Location','southwest','FontSize',10)
% set(gca,'FontSize',14,'YScale','log')
% % set(gcf, 'Position', get(0, 'Screensize'));
% set(gcf, 'InnerPosition', [0 0 430 430]);
% 
% hold off
% clear h