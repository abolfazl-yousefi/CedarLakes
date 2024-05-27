
%%% TWL Analysis plots

% 1) TWL Analysis Results Upload
f_UploadingLocationData_myVersion;    %updated!!      

% 2) Extracting Variables of Interest
f_LocationVar1_myVersion;             % updated!

% 3) Beach Definition
f_BeachDefinition_myVersion;          % updated!!

% 4) Errorbar Calculation for the Variables of Interest (IA, Mu, Beach)
f_ErrorBars_myVersion;                % updated!!

% 5) Lambda & Mu plots with No Error Bars
f_ExpParam_myVersion2;                 % updated!!

% 6) Calculation of other variables of interest
f_LocationVar2_myVersion;             % updated!!

% PNAS Fig. 2
f_Fig2;                     % NEEDS UPDATES!!

% % Figure 3 of the paper
f_Fig3;                     % updated!!

% Figure 4 of the paper 
f_Fig4;                     % updated!!

% Beach Elevation vs Tidal Amplitude
f_BeachElevTA;

% Figure 6 of the paper
f_Fig6;

% % Beach elevation vs Reference elevation
% f_BeachPlot;      % --> need for estimation from DEM



% Path = '../ThesisFigures/';
% fig = gca;
% fig.FontSize = 8; clear fig
% % legend('FontSize',6)
% fig = gcf;
% fig.PaperUnits = 'inches';
% fig.PaperPosition = [0 0 4 2];
% print(gcf,'-depsc','-painters',[Path 'Lambda.eps']);


% %%% Save all open figures to the proper folder
% FolderName = '../Figures/WidthAnalysis';   % Your destination folder
% FigList = findobj(allchild(0), 'flat', 'Type', 'figure');
% for iFig = 1:length(FigList)
%   FigHandle = FigList(iFig);
%   FigName   = num2str(get(FigHandle, 'Number'));
%   set(0, 'CurrentFigure', FigHandle);
% %   savefig(fullfile(FolderName, [FigName '.fig']));
%   saveas(FigHandle, fullfile(FolderName,[FigName '.eps']),'epsc')
% end


% % DWL*SWH,WRPmean
% __plot4;

% % SWH vs DWL
% __plot5:

% % % Final plots
% f_MeanStdIntarr;
% f_MeanStdMarks;

% % % Lambda & Mu plots with Error Bars with test results
% % f_ExpParamWithErrBarsTests;

% % % Exceedance Probability Plots
% f_IntArrExProbPlots;
% f_MarkExProbPlots;
% 
% % % p-value statistical testing plots
% f_IntArrpValuePlots;
% f_MarkpValuePlots;
% 
% close all
