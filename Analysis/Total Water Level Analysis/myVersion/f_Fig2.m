% Significant wave height vs Tidal amplitude
sz = 12; lwd = 1.5;

figure
for i = 1:numel(islandNames)
    islandName = islandNames{i};
    h(i) = 
h = zeros(1,22);
h(1) = errorbar(TA.VA,Hs.VA,HsSD.VA,HsSD.VA,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA');
hold on
h(2) = errorbar(TA.TX_GV,Hs.TX_GV,HsSD.TX_GV,HsSD.TX_GV,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX GV');
h(3) = errorbar(TA.TX_CC,Hs.TX_CC,HsSD.TX_CC,HsSD.TX_CC,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX CC');
h(4) = errorbar(TA.OR_SB,Hs.OR_SB,HsSD.OR_SB,HsSD.OR_SB,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','OR SB');
h(5) = errorbar(TA.CA,Hs.CA,HsSD.CA,HsSD.CA,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','CA');
h(6) = errorbar(TA.FL,Hs.FL,HsSD.FL,HsSD.FL,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL');
h(7) = errorbar(TA.FL_SP,Hs.FL_SP,HsSD.FL_SP,HsSD.FL_SP,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL SP');
h(8) = errorbar(TA.AUS_NSW,Hs.AUS_NSW,HsSD.AUS_NSW,HsSD.AUS_NSW,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AUS NSW');
h(9) = errorbar(TA.HI,Hs.HI,HsSD.HI,HsSD.HI,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','HI');
h(10) = errorbar(TA.IT,Hs.IT,HsSD.IT,HsSD.IT,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','IT');
h(11) = errorbar(TA.AK,Hs.AK,HsSD.AK,HsSD.AK,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AK');
h(12) = errorbar(TA.MA,Hs.MA,HsSD.MA,HsSD.MA,'.','color',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA');
h(13) = errorbar(TA.AL_Dauphin,Hs.AL_Dauphin,HsSD.AL_Dauphin,HsSD.AL_Dauphin,'.','color',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AL Dauphin');
h(14) = errorbar(TA.FL_Shell,Hs.FL_Shell,HsSD.FL_Shell,HsSD.FL_Shell,'.','color',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL Shell');
% h(15) = errorbar(TA.GA_LittleTybee,Hs.GA_LittleTybee,HsSD.GA_LittleTybee,HsSD.GA_LittleTybee,'.','color',Colors.GA_LittleTybee,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','GA LittleTybee');
h(15) = errorbar(TA.MA_Plum,Hs.MA_Plum,HsSD.MA_Plum,HsSD.MA_Plum,'.','color',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA Plum');
h(16) = errorbar(TA.NC_BaldHead,Hs.NC_BaldHead,HsSD.NC_BaldHead,HsSD.NC_BaldHead,'.','color',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC BaldHead');
h(17) = errorbar(TA.NC_Masonboro,Hs.NC_Masonboro,HsSD.NC_Masonboro,HsSD.NC_Masonboro,'.','color',Colors.NC_Masonboro,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Masonboro');
h(18) = errorbar(TA.NC_Portsmouth,Hs.NC_Portsmouth,HsSD.NC_Portsmouth,HsSD.NC_Portsmouth,'.','color',Colors.NC_Portsmouth,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Portsmouth');
% h(20) = errorbar(TA.SC_Lighthouse,Hs.SC_Lighthouse,HsSD.SC_Lighthouse,HsSD.SC_Lighthouse,'.','color',Colors.SC_Lighthouse,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Lighthouse');
% h(21) = errorbar(TA.SC_Pockoy,Hs.SC_Pockoy,HsSD.SC_Pockoy,HsSD.SC_Pockoy,'.','color',Colors.SC_Pockoy,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','SC Pockoy');
h(19) = errorbar(TA.TX_Follets,Hs.TX_Follets,HsSD.TX_Follets,HsSD.TX_Follets,'.','color',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Follets');
h(20) = errorbar(TA.TX_Hog,Hs.TX_Hog,HsSD.TX_Hog,HsSD.TX_Hog,'.','color',Colors.TX_Hog,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Hog');
h(21) = errorbar(TA.TX_MatagordaPeninsula,Hs.TX_MatagordaPeninsula,HsSD.TX_MatagordaPeninsula,HsSD.TX_MatagordaPeninsula,'.','color',Colors.TX_MatagordaPeninsula,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX MatagordaPeninsula');
% h(22) = errorbar(TA.TX_Padre,Hs.TX_Padre,HsSD.TX_Padre,HsSD.TX_Padre,'.','color',Colors.TX_Padre,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Padre');
h(22) = errorbar(TA.VA_Assateague,Hs.VA_Assateague,HsSD.VA_Assateague,HsSD.VA_Assateague,'.','color',Colors.VA_Assateague,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA Assateague');
plot(TA.VA,Hs.VA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.TX_GV,Hs.TX_GV,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.TX_CC,Hs.TX_CC,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.OR_SB,Hs.OR_SB,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.CA,Hs.CA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.FL,Hs.FL,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.FL_SP,Hs.FL_SP,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.AUS_NSW,Hs.AUS_NSW,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.HI,Hs.HI,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.IT,Hs.IT,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.AK,Hs.AK,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.MA,Hs.MA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.Gray,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.AL_Dauphin,Hs.AL_Dauphin,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.FL_Shell,Hs.FL_Shell,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.GA_LittleTybee,Hs.GA_LittleTybee,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.GA_LittleTybee,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.MA_Plum,Hs.MA_Plum,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.NC_BaldHead,Hs.NC_BaldHead,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.NC_Masonboro,Hs.NC_Masonboro,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Masonboro,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.NC_Portsmouth,Hs.NC_Portsmouth,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_Portsmouth,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.SC_Lighthouse,Hs.SC_Lighthouse,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Lighthouse,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.SC_Pockoy,Hs.SC_Pockoy,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.SC_Pockoy,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.TX_Follets,Hs.TX_Follets,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.TX_Hog,Hs.TX_Hog,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Hog,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.TX_MatagordaPeninsula,Hs.TX_MatagordaPeninsula,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_MatagordaPeninsula,'MarkerSize',sz,'LineWidth',lwd)
plot(TA.VA_Assateague,Hs.VA_Assateague,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.VA_Assateague,'MarkerSize',sz,'LineWidth',lwd)
axis([0 2 0 4])
xline(1,'--','Color','k','LineWidth',1.5)
legend(h(13:22),'NumColumns',2,'Location','northwest','FontSize',22)
xlabel('Tidal Amplitude $A_{t}$ (m)','Interpreter','latex','FontSize',20)
ylabel('Mean significant wave height $H_{s}$ (m)','Interpreter','latex','FontSize',20)
% legend('boxoff')
set(gca,'FontSize',20)
set(gcf, 'Position', get(0, 'Screensize'));


%%% NEEDS UPDATES!!
% % Same figure but for the Thesis 
% figure
% h = zeros(1,6);
% h(1) = errorbar(TA.AL_Dauphin,Hs.AL_Dauphin,HsSD.AL_Dauphin,HsSD.AL_Dauphin,'.','color',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','AL Dauphin');
% hold on
% h(2) = errorbar(TA.FL_Shell,Hs.FL_Shell,HsSD.FL_Shell,HsSD.FL_Shell,'.','color',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','FL Shell');
% h(3) = errorbar(TA.MA_Plum,Hs.MA_Plum,HsSD.MA_Plum,HsSD.MA_Plum,'.','color',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','MA Plum');
% h(4) = errorbar(TA.NC_BaldHead,Hs.NC_BaldHead,HsSD.NC_BaldHead,HsSD.NC_BaldHead,'.','color',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','NC Bald Head');
% h(5) = errorbar(TA.TX_Follets,Hs.TX_Follets,HsSD.TX_Follets,HsSD.TX_Follets,'.','color',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','TX Follets');
% h(6) = errorbar(TA.VA,Hs.VA,HsSD.VA,HsSD.VA,'.','color',Colors.VA,'MarkerSize',sz,'LineWidth',lwd,'DisplayName','VA');
% plot(TA.AL_Dauphin,Hs.AL_Dauphin,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.AL_Dauphin,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.FL_Shell,Hs.FL_Shell,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.FL_Shell,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.MA_Plum,Hs.MA_Plum,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.MA_Plum,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.NC_BaldHead,Hs.NC_BaldHead,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.NC_BaldHead,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.TX_Follets,Hs.TX_Follets,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.TX_Follets,'MarkerSize',sz,'LineWidth',lwd)
% plot(TA.VA,Hs.VA,'o','MarkerEdgeColor','k','MarkerFaceColor',Colors.VA,'MarkerSize',sz,'LineWidth',lwd)
% axis([0 2 0 3])
% xline(1,'--','Color','k','LineWidth',1.5)
% legend(h,'NumColumns',2,'Location','northwest','FontSize',14)
% % xlabel('Tidal Amplitude $A_{t}$ (m)','Interpreter','latex','FontSize',20)
% % ylabel('Mean significant wave height $H_{s}$ (m)','Interpreter','latex','FontSize',20)
% % legend('boxoff')
% set(gca,'FontSize',14)
% % set(gcf, 'InnerPosition', [0 0 430 430]);
% set(gcf, 'InnerPosition', [0 0 430 287]);
% 
% clear sz lwd