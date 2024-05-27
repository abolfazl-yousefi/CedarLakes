
%%% Beach elevation comparison 
sz = 12; lwd =1.5;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];

figure
axis([0 5 0 4.5])
hline = refline([1 0]);
hline.Color = 'r';
hold on
errorbar(BDEM(1),B1(1),BLB1(1),BUB1(1),BDemSD(1),BDemSD(1),'o','MarkerFaceColor',c(1,:), 'color', c(1,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(2),B1(2),BLB1(2),BUB1(2),BDemSD(2),BDemSD(2),'o','MarkerFaceColor',c(2,:), 'color', c(2,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(3),B1(3),BLB1(3),BUB1(3),BDemSD(3),BDemSD(3),'o','MarkerFaceColor',c(3,:), 'color', c(3,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(4),B1(4),BLB1(4),BUB1(4),BDemSD(4),BDemSD(4),'o','MarkerFaceColor',c(4,:), 'color', c(4,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(5),B1(5),BLB1(5),BUB1(5),BDemSD(5),BDemSD(5),'o','MarkerFaceColor',c(5,:), 'color', c(5,:), 'MarkerSize',sz,'LineWidth',lwd)
% errorbar(BDEM(6),B1(6),BLB1(6),BUB1(6),BDemSD(6),BDemSD(6),'o','MarkerFaceColor',c(6,:), 'color', c(6,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(7),B1(7),BLB1(7),BUB1(7),BDemSD(7),BDemSD(7),'o','MarkerFaceColor',c(7,:), 'color', c(7,:), 'MarkerSize',sz,'LineWidth',lwd)
%errorbar(BDEM(8),B1(8),BLB1(8),BUB1(8),BDemSD(8),BDemSD(8),'o','MarkerFaceColor',c(8,:), 'color', c(8,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(9),B1(9),BLB1(9),BUB1(9),BDemSD(9),BDemSD(9),'o','MarkerFaceColor',c(9,:), 'color', c(9,:), 'MarkerSize',sz,'LineWidth',lwd)
%errorbar(BDEM(10),B1(10),BLB1(10),BUB1(10),BDemSD(10),BDemSD(10),'o','MarkerFaceColor',c(10,:), 'color', c(10,:), 'MarkerSize',sz,'LineWidth',lwd)
%errorbar(BDEM(11),B1(11),BLB1(11),BUB1(11),BDemSD(11),BDemSD(11),'o','MarkerFaceColor',c(11,:), 'color', c(11,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(BDEM(12),B1(12),BLB1(12),BUB1(12),BDemSD(12),BDemSD(12),'o','MarkerFaceColor',c(12,:), 'color', c(12,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(1),B1(1),'o','MarkerEdgeColor','k','MarkerFaceColor',c(1,:), 'color', c(1,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(2),B1(2),'o','MarkerEdgeColor','k','MarkerFaceColor',c(2,:), 'color', c(2,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(3),B1(3),'o','MarkerEdgeColor','k','MarkerFaceColor',c(3,:), 'color', c(3,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(4),B1(4),'o','MarkerEdgeColor','k','MarkerFaceColor',c(4,:), 'color', c(4,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(5),B1(5),'o','MarkerEdgeColor','k','MarkerFaceColor',c(5,:), 'color', c(5,:), 'MarkerSize',sz,'LineWidth',lwd)
% plot(BDEM(6),B1(6),'o','MarkerEdgeColor','k','MarkerFaceColor',c(6,:), 'color', c(6,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(7),B1(7),'o','MarkerEdgeColor','k','MarkerFaceColor',c(7,:), 'color', c(7,:), 'MarkerSize',sz,'LineWidth',lwd)
%plot(BDEM(8),B1(8),'o','MarkerEdgeColor','k','MarkerFaceColor',c(8,:), 'color', c(8,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(9),B1(9),'o','MarkerEdgeColor','k','MarkerFaceColor',c(9,:), 'color', c(9,:), 'MarkerSize',sz,'LineWidth',lwd)
%plot(BDEM(10),B1(10),'o','MarkerEdgeColor','k','MarkerFaceColor',c(10,:), 'color', c(10,:), 'MarkerSize',sz,'LineWidth',lwd)
%plot(BDEM(11),B1(11),'o','MarkerEdgeColor','k','MarkerFaceColor',c(11,:), 'color', c(11,:), 'MarkerSize',sz,'LineWidth',lwd)
plot(BDEM(12),B1(12),'o','MarkerEdgeColor','k','MarkerFaceColor',c(12,:), 'color', c(12,:), 'MarkerSize',sz,'LineWidth',lwd)
box on
% xlabel('Measured beach elevation ($z_{b}$) (m)','Interpreter','latex','FontSize',20)
% ylabel('Reference beach elevation ($z_{r}$)(m)','Interpreter','latex','FontSize',20)
% title('Reference beach elevation vs Measured beach elevation','Interpreter','latex','FontSize',26)
%legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',15)
% legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida-SP','Hawaii','Massachusetts','NumColumns',2,'Location','southeast','FontSize',9)
% legend("boxoff")
set(gca,'FontSize',13)
set(gcf,"Units","Centimeters","Position",[0,0,17.4,17.4],"PaperUnits","Centimeters","PaperSize",[17.4,17.4])
