
%%% Wave characteristics

sz = 35;lwd =2.5;
c = [[0, 0.4470, 0.7410]; [0.8500, 0.3250, 0.0980];[0, 0.5, 0]; [0.9290, 0.6940, 0.1250]; [0.4940, 0.1840, 0.5560]; [0.4660, 0.6740, 0.1880]; [0.6350, 0.0780, 0.1840]; [0,0,1]; [0,0,0]; [1,0,1]; [1,1,0]; [0,1,1]];

figure
plot(sqrt(DWL(1)*SWH(1)),WRPmean(1),'.','color',c(1,:),'MarkerSize',sz,'LineWidth',lwd)
hold on
plot(sqrt(DWL(2)*SWH(2)),WRPmean(2),'.','color',c(2,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(3)*SWH(3)),WRPmean(3),'.','color',c(3,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(4)*SWH(4)),WRPmean(4),'.','color',c(4,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(5)*SWH(5)),WRPmean(5),'.','color',c(5,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(6)*SWH(6)),WRPmean(6),'.','color',c(6,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(7)*SWH(7)),WRPmean(7),'.','color',c(7,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(8)*SWH(8)),WRPmean(8),'.','color',c(8,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(9)*SWH(9)),WRPmean(9),'.','color',c(9,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(10)*SWH(10)),WRPmean(10),'.','color',c(10,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(11)*SWH(11)),WRPmean(11),'.','color',c(11,:),'MarkerSize',sz,'LineWidth',lwd)
plot(sqrt(DWL(12)*SWH(12)),WRPmean(12),'.','color',c(12,:),'MarkerSize',sz,'LineWidth',lwd)
axis([0 30 0 30])
hline = refline([1 0]);
hline.Color = 'r';
ylabel('$\langle\sqrt{H_0 L_0}\rangle$ (m)','Interpreter','latex','FontSize',20)
xlabel('$\sqrt{\langle H_0 \rangle \langle L_0\rangle}$ (m)','Interpreter','latex','FontSize',20)
title('Wave parameter comparison','Interpreter','latex','FontSize',26)
legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Boston','NumColumns',2,'Location','southeast','FontSize',15)
set(gca,'FontSize',22)
