% SWH vs DWL

sz = 35;lwd =2.5;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];

figure
errorbar(DWL(1),SWH(1),SWHsd(1),SWHsd(1),DWLsd(1),DWLsd(1),'.', 'color', c(1,:), 'MarkerSize',sz,'LineWidth',lwd)
hold on
errorbar(DWL(2),SWH(2),SWHsd(2),SWHsd(2),DWLsd(2),DWLsd(2),'.', 'color', c(2,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(3),SWH(3),SWHsd(3),SWHsd(3),DWLsd(3),DWLsd(3),'.', 'color', c(3,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(4),SWH(4),SWHsd(4),SWHsd(4),DWLsd(4),DWLsd(4),'.', 'color', c(4,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(5),SWH(5),SWHsd(5),SWHsd(5),DWLsd(5),DWLsd(5),'.', 'color', c(5,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(6),SWH(6),SWHsd(6),SWHsd(6),DWLsd(6),DWLsd(6),'.', 'color', c(6,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(7),SWH(7),SWHsd(7),SWHsd(7),DWLsd(7),DWLsd(7),'.', 'color', c(7,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(8),SWH(8),SWHsd(8),SWHsd(8),DWLsd(8),DWLsd(8),'.', 'color', c(8,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(9),SWH(9),SWHsd(9),SWHsd(9),DWLsd(9),DWLsd(9),'.', 'color', c(9,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(10),SWH(10),SWHsd(10),SWHsd(10),DWLsd(10),DWLsd(10),'.', 'color', c(10,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(11),SWH(11),SWHsd(11),SWHsd(11),DWLsd(11),DWLsd(11),'.', 'color', c(11,:), 'MarkerSize',sz,'LineWidth',lwd)
errorbar(DWL(12),SWH(12),SWHsd(12),SWHsd(12),DWLsd(12),DWLsd(12),'.', 'color', c(12,:), 'MarkerSize',sz,'LineWidth',lwd)
axis([0 450 0 5])
xlabel('Mean deep water wavelength $\langle L_0 \rangle$(m)','Interpreter','latex','FontSize',20)
ylabel('Mean wave height $\langle H_0 \rangle$(m)','Interpreter','latex','FontSize',20)
title('Significant wave height vs Wavelength','Interpreter','latex','FontSize',26)
legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','northwest','FontSize',15)
set(gca,'FontSize',22)
