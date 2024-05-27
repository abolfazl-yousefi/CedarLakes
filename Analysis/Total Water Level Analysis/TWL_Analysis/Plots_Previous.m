%%% TWL Analysis plots
close all
%% Locations results upload
% UploadingLocationData;
CedarLakes = load('CedarLakes/CedarLakes.mat'); %Slope = 0.02
% VA_HS = VA_HS.DataHS;
TX_CedarLakes = TX_CedarLakes.Data;


%% Uploading variables from each location
% LocationVariables;
%%% References to MSL
RefCL = rmmissing(TX_CedarLakes.Reference);
%%% Number of events per month -- Lambda
LambdaCL = rmmissing(TX_CedarLakes.HS_Lambda) * 365;
%%% Number of events per month -- Lambda
Lambda2CL = rmmissing(TX_CedarLakes.HS_Lambda2) * 365;
%%% Mark per event -- Mu
MuCL = rmmissing(TX_CedarLakes.HS_Mu);
%%% Thresholds
%%% Check if thresholds are of the same lengths as lambda & mu CLlues
ThresholdCL = rmmissing(TX_CedarLakes.HS_Threshold);
%%% Wave Runup Parameter
WRP_CL = sqrt(TX_CedarLakes.DailySWH.*(9.80665 / (2 * pi)).*(TX_CedarLakes.DailyPP.^2));
%%% Average Significant wave height
SWH_CL = mean(rmmissing(TX_CedarLakes.DailySWH));
%%% Standard deviation of Significant wave height
SWHsd_CL = std(rmmissing(TX_CedarLakes.DailySWH));
%%% Average deep wavelength
DWL_CL = (9.80665 / (2 * pi)) * mean(rmmissing(TX_CedarLakes.DailyPP.^2));
%%% Standard deviation deep wavelength
DWLsd_CL = (9.80665 / (2 * pi)) * std(rmmissing(TX_CedarLakes.DailyPP.^2));
%%% Tidal amplitude from mean(peaks)-mean(CLlleys) (using Verified Tide)
VerTA_CL = 0.7922;
%%% Tidal amplitude from mean(peaks) - mean(CLlleys) (using Predicted Tide)
TA_CL = 0.6587;
%%% Position of positive tests for both inter-arriCLls and marks combined
PosCL = 9:11;
RightTailCL = NaN;
% No. of inter-arriCLl data associated to each threshold
NumdataCL = rmmissing(TX_CedarLakes.HS_NumIA);

%% Beach definition
% BeachDefinition;
% Beach elevation definition
BeachElevCL = (1. + RefCL);

%% Errorbar definition
% ErrorBars;


%%% Method 1 - Confidence interCLls estimate from exponential [muhat muci] = expfit(CLriablename);

%%% Lower bound for lambda
IA_Lb_CL = abs(Lambda2CL-chi2inv(0.025, 2*rmmissing(TX_CedarLakes.HS_NumIA))./(2 * rmmissing(TX_CedarLakes.HS_NumIA)).*Lambda2CL); %NumDays = 1350, NumMonths = 9, NumYears =5
%%% Upper bound for lambda
IA_Ub_CL = abs(Lambda2CL-chi2inv(0.975, 2*rmmissing(TX_CedarLakes.HS_NumIA))./(2 * rmmissing(TX_CedarLakes.HS_NumIA)).*Lambda2CL); %NumDays = 1350, NumMonths = 9, NumYears =5
%%% Lower bound for mu
Mu_Lb_CL = abs(MuCL-2*rmmissing(TX_CedarLakes.HS_SumM)./chi2inv(0.975, 2*rmmissing(TX_CedarLakes.HS_NumM)));
%%% Upper bound for mu
Mu_Ub_CL = abs(MuCL-2*rmmissing(TX_CedarLakes.HS_SumM)./chi2inv(0.025, 2*rmmissing(TX_CedarLakes.HS_NumM)));
% Lower bound for beach eleCLtion
BeachLb_CL = IA_Lb_CL .* MuCL ./ Lambda2CL;
BeachLb_CL = BeachLb_CL(find(round(ThresholdCL-BeachElevCL, 1) == 0));
% Upper bound for beach eleCLtion
BeachUb_CL = IA_Ub_CL .* MuCL ./ Lambda2CL;
BeachUb_CL = BeachUb_CL(find(round(ThresholdCL-BeachElevCL, 1) == 0));

%% % Lambda & Mu plots with No Error Bars
% ExpParam;

%%% EXPONENTIAL DISTRIBUTION PARAMETERS VS THRESHOLDS - BEACH ElECLTION
figure
plot(ThresholdCL - BeachElevCL, Lambda2CL, 'color', [0, 0.4470, 0.7410], 'LineWidth',3)
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','northeast','FontSize',24)
set(gca,'FontSize',22)


% Plot Mu
figure
plot(ThresholdCL - BeachElevCL, MuCL, 'color', [0, 0.4470, 0.7410], 'LineWidth',3)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event (m)','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','northeast','FontSize',24)
set(gca,'FontSize',22)



%% Lambda & Mu plots with Error Bars
% ExpParamWithErrBars;

% Plot of all Lambdas against threshold - beach eleCLtion (with error bars)
figure
errorbar(ThresholdCL - BeachElevCL, LambdaCL, IA_Lb_CL, IA_Ub_CL, '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',35)
axis([-2 1 0.1 10])
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','Location','southwest','FontSize',24)
set(gca,'FontSize',22,'YScale','log')


% Plot of all Mus against threshold - beach eleCLtion (with error bars)
figure
errorbar(ThresholdCL - BeachElevCL, MuCL, Mu_Lb_CL, Mu_Ub_CL, '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',35)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Australia-NSW','Hawaii','Italy','Alaska','Massachusetts','Location','northeast','FontSize',24)
set(gca,'FontSize',22)


%% Lambda & Mu plots with Error Bars with test results
% ExpParamWithErrBarsTests;


% Plot of all Lambdas against threshold - beach eleCLtion (with error bars)
figure
errorbar(ThresholdCL(PosCL) - BeachElevCL, LambdaCL(PosCL), IA_Lb_CL(PosCL), IA_Ub_CL(PosCL), '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',40,'LineWidth',2)
hold on
% errorbar(ThresholdCL(RightTailCL) - BeachElevCL, LambdaCL(RightTailCL), IA_Lb_CL(RightTailCL), IA_Ub_CL(RightTailCL), 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',15,'LineWidth',2)
axis([-0.5 0.5 0.1 10])
xlabel('Threshold','FontSize',20);
ylabel('\lambda (#events per month)','FontSize',20);
title('Number of events per month','FontSize',26);
% legend('Virginia - Pos','Virginia - Neg','Texas-GV - Pos','Texas-GV - Neg','Texas-CC - Pos','Texas-CC - Neg','Oregon-SB - Pos','Oregon-SB - Neg','California - Pos','California - Neg','Florida - Pos','Florida -Neg','Florida SP - Pos','Florida SP -Neg','Aus-NSW - Pos','Aus-NSW - Neg','Hawaii - Pos','Hawaii - Neg','Italy - Pos','Italy - Neg','Alaska - Pos','Alaska - Neg','Massachusetts - Pos','Massachusetts - Neg','NumColumns',2,'Location','southwest','FontSize',20)
legend('Virginia - Pos','Texas-GV - Pos','Texas-CC - Pos','Oregon-SB - Pos','California - Pos','Florida - Pos','Florida SP - Pos','Aus-NSW - Pos','Hawaii - Pos','Italy - Pos','Alaska - Pos','Massachusetts - Pos','NumColumns',2,'Location','southwest','FontSize',20)
set(gca,'FontSize',22,'YScale','log')

% Plot of all Mus against threshold - beach elevation (with error bars)
figure
errorbar(ThresholdCL(PosCL) - BeachElevCL, MuCL(PosCL), Mu_Lb_CL(PosCL), Mu_Ub_CL(PosCL), '.', 'color', [0, 0.4470, 0.7410], 'MarkerSize',40,'LineWidth',2)
hold on
% errorbar(ThresholdCL(RightTailCL) - BeachElevCL, MuCL(RightTailCL), Mu_Lb_CL(RightTailCL), Mu_Ub_CL(RightTailCL), 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',15,'LineWidth',2)
xlabel('Threshold','FontSize',20);
ylabel('\mu (m)','FontSize',20);
title('Average mark per event','FontSize',26);
% legend('Virginia - Pos','Virginia - Neg','Texas-GV - Pos','Texas-GV - Neg','Texas-CC - Pos','Texas-CC - Neg','Oregon-SB - Pos','Oregon-SB - Neg','California - Pos','California - Neg','Florida - Pos','Florida -Neg','Florida SP - Pos','Florida SP -Neg','Aus-NSW - Pos','Aus-NSW - Neg','Hawaii - Pos','Hawaii - Neg','Italy - Pos','Italy - Neg','Alaska - Pos','Alaska - Neg','Massachusetts - Pos','Massachusetts - Neg','NumColumns',2,'Location','southwest','FontSize',20)
legend('Virginia - Pos','Texas-GV - Pos','Texas-CC - Pos','Oregon-SB - Pos','California - Pos','Florida - Pos','Florida SP - Pos','Aus-NSW - Pos','Hawaii - Pos','Italy - Pos','Alaska - Pos','Massachusetts - Pos','NumColumns',2,'Location','southwest','FontSize',20)
set(gca,'FontSize',22)
 


%% Beach EleCLtion vs Tidal Amplitude & Beach EleCLtion vs Average Wave
% Runup Parameter
% BeachElevationPlots;


%%% Beach EleCLtion vs Tidal amplitude & vs Wave Runup Parameter
figure
errorbar(TA_CL, BeachElevCL, BeachLb_CL, BeachUb_CL, '*', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)
hold on
axis([0 2 0 5])
ylabel('Beach EleCLtion (m)','FontSize',20)
xlabel('Tidal amplitude (m)','FontSize',20)
title('Beach EleCLtion vs Tidal Amplitude','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts - BO','NumColumns',2,'Location','northwest','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_CL), BeachElevCL-TA_CL, BeachLb_CL, BeachUb_CL, 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)
hold on
axis([0 33 0 5])
xlabel('$\sqrt{H_0 L_0}$ (m)','Interpreter','latex','FontSize',20)
ylabel('Beach EleCLtion above tide (m)','FontSize',20)
title('Beach EleCLtion vs Wave Runup Parameter','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

%%% Aggregating mark CLlues above beach eleCLtion
NumCLlues = sum(TX_CedarLakes.HS_NumM((ThresholdCL - BeachElevCL)>-0.05)); ProbM = TX_CedarLakes.HS_NumM((ThresholdCL - BeachElevCL)>-0.05)/NumCLlues;
M_CL = sum(MuCL((ThresholdCL - BeachElevCL)>-0.05).*ProbM);
M_Lb_CL = M_CL - sum((MuCL((ThresholdCL - BeachElevCL)>-0.05) - Mu_Lb_CL((ThresholdCL - BeachElevCL)>-0.05)).*ProbM);
M_Ub_CL = sum((MuCL((ThresholdCL - BeachElevCL)>-0.05) + Mu_Ub_CL((ThresholdCL - BeachElevCL)>-0.05)).*ProbM) - M_CL; clear NumCLlues ProbM




%%% Mu vs Tidal Amplitude & Mu vs Wave Runup Parameter
figure
errorbar(TA_CL, M_CL, M_Lb_CL, M_Ub_CL, '*', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)
axis([0 2.5 0 0.65])
xlabel('Tidal Amplitude (m)','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Tidal AMplitude}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_CL), M_CL, M_Lb_CL, M_Ub_CL,  'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)

axis([0 33 0 0.65])
xlabel('$\sqrt{H_0 L_0}$ (m)','Interpreter','latex','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Wave Runup Parameter}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)



Slope = [0.02];
a_beta = 1.1 * 0.35 * Slope + 1.1/2 * sqrt(0.563 * Slope.^2 + 0.004); 
a_beta = struct('Virginia',num2cell(a_beta(1)));

%%% Extra plots
figure
errorbar(nanmean(WRP_CL)*a_beta.Virginia, BeachElevCL-TA_CL, BeachLb_CL, BeachUb_CL,  'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',20,'LineWidth',2.5)

axis([0 2 0 5])
xlabel('Wave runup (m)','Interpreter','latex','FontSize',20)
ylabel('Beach EleCLtion above tide (m)','FontSize',20)
title('Beach EleCLtion vs Wave Runup','FontSize',26)
legend('Virginia','Texas - GV','Texas - CC','Oregon - SB','California','Florida','Florida - SP','Aus - NSW','Hawaii','Italy','Alaska','Massachusetts','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)

figure
errorbar(nanmean(WRP_CL)*a_beta.Virginia, M_CL, M_Lb_CL, M_Ub_CL, 'x', 'color', [0, 0.4470, 0.7410], 'MarkerSize',25,'LineWidth',2.5)
axis([0 2 0 0.65])
xlabel('Wave runup (m)','FontSize',20);
ylabel('Average Mark above the Beach (m)','FontSize',20);
title('\textbf{$\bar{\mu}$ vs Wave Runup Slope CLrying}','Interpreter','latex','FontSize',26);
legend('Virginia','Texas-GV','Texas-CC','Oregon-SB','California','Florida','Florida-SP','Aus-NSW','Hawaii','Italy','Alaska','Massachusetts-BO','NumColumns',2,'Location','southeast','FontSize',24)
set(gca,'FontSize',22)




%% % Exceedance Probability Plots
% IntArrExProbPlots;

%%% Inter-arriCLls: Exceedance probability plots

%%% CL

CLrNames = TX_CedarLakes.Properties.VariableNames(15:28);
Legend = rmmissing(TX_CedarLakes.HS_Threshold) - BeachElevCL;
Legend = round(Legend,1);
Legend = Legend(find(Legend==0):end);
CLrNames = CLrNames((end-length(Legend)+1):end);
Legend = num2str(Legend);
Legend = strcat(Legend,' m');

figure
for i=1:length(CLrNames)
    
    x = strtrim(char(CLrNames(i)));
    CLr = rmmissing(TX_CedarLakes.(x)); CLr = CLr-2;
    CLr = CLr(CLr <= mean(CLr)*log(10));
    [ExProb,qi] = ecdf(CLr,'function','survivor');
    semilogy(qi,ExProb,'.','MarkerSize',20)
    hold on
    clear x CLr ExProb qi 
    
end

% xx = 0:0.01:3; For normalized inter-arriCLls(qi/mean(CLr))
% plot(xx,exp(-xx),'k-.','LineWidth',2)
title("Exceedance probability of inter-arriCLls - Virginia")
xlabel("Inter-arriCLl duration (days)")
ylabel("Exceedance probability")
legend(Legend,'Interpreter', 'none')



% MarkExProbPlots;


%%% Marks : Exceedance probability plots

%%% CL 

CLrNames = TX_CedarLakes.Properties.CLriableNames(29:42);
Legend = rmmissing(TX_CedarLakes.HS_Threshold) - BeachElevCL;
Legend = round(Legend,1);
Legend = Legend(find(Legend==0):end);
CLrNames = CLrNames((end-length(Legend)+1):end);
Legend = num2str(Legend);
Legend = strcat(Legend,' m');

figure
for i=1:length(CLrNames)
    
    x = strtrim(char(CLrNames(i)));
    CLr = rmmissing(TX_CedarLakes.(x));
    CLr = CLr(CLr <= mean(CLr)*log(10));
    [ExProb,qi] = ecdf(CLr,'function','survivor');
    semilogy(qi,ExProb,'.','MarkerSize',20)
    hold on
    clear x CLr ExProb qi 
    
end

% xx = 0:0.01:3; For normalized marks(qi/mean(CLr))
% plot(xx,exp(-xx),'k-.','LineWidth',2)
title("Exceedance probability of marks - Virginia")
xlabel("Marks (m)")
ylabel("Exceedance probability")
legend(Legend,'Interpreter', 'none')
%% % p-CLlue statistical testing plots
% IntArrpCLluePlots;

%%% Inter-arriCLls: p-CLlue plots

%%% CL 

CLrNames = TX_CedarLakes.Properties.CLriableNames(76:78);
Thr = TX_CedarLakes.Properties.CLriableNames(57);
Legend = ["Anderson Darling", "Lilliefors", "Cramer Von-Mises"];

x = strtrim(char(Thr));
x = rmmissing(TX_CedarLakes.(x)) - BeachElevCL;
x = round(x,1);
sz = NumdataCL(find(x==-0.5):length(x));
x = x(x>=-0.5);
figure
for i=1:length(CLrNames)
    
    y = strtrim(char(CLrNames(i)));
    CLr = TX_CedarLakes.(y)(find(x==-0.5):length(x));
    scatter(x,CLr*100,'filled')
    hold on
    clear y CLr
    
end
axis([-0.6 0.6 0 100])
ylabel("p-CLlue (%)")
yline(5,'col','r')
yyaxis right
plot(x,sz,'LineWidth',2)
ylabel("Number of data")
title("p-CLlue of Inter-arriCLl tests - Virginia")
xlabel("Threshold above beach (m)")
legend(Legend,'Interpreter', 'none','Location','northeast')
clear x i sz

MarkpCLluePlots;

%%% Marks: p-CLlue plots

%%% CL 

CLrNames = TX_CedarLakes.Properties.CLriableNames(72:74);
Thr = TX_CedarLakes.Properties.CLriableNames(57);
Legend = ["Lilliefors", "Anderson Darling", "Cramer Von-Mises"];

x = strtrim(char(Thr));
x = rmmissing(TX_CedarLakes.(x)) - BeachElevCL;
x = round(x,1);
sz = NumdataCL(find(x>=-0.5):length(x));
x = x(x>=-0.5);
   
figure
for i=1:length(CLrNames)
    
    y = strtrim(char(CLrNames(i)));
    CLr = TX_CedarLakes.(y)(find(x>=-0.5):length(x));
    scatter(x,CLr*100,'filled')
    hold on
    clear y CLr
    
end
axis([-0.6 0.6 0 100])
ylabel("p-CLlue (%)")
yline(5,'col','r')
yyaxis right
plot(x,sz,'LineWidth',2)
ylabel("Number of data")
title("p-CLlue of Mark tests - Virginia")
xlabel("Threshold above beach (m)")
legend(Legend,'Interpreter', 'none','Location','northeast')
clear x i sz

%%
close all
% % Saving Results to Compare
% Results;
