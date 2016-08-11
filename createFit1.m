function [fitresult, gof] = createFit1(x1, y1)
%CREATEFIT1(X1,Y1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : x1
%      Y Output: y1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 12-May-2013 10:06:42


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( x1, y1 );
hold on;
% Set up fittype and options.
ft = fittype( 'exp1' );
opts = fitoptions( ft );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf];
opts.StartPoint = [2.99389119774785e-07 0.660104770296891];
opts.Upper = [Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
h1 = plot( fitresult, xData, yData );
legend( h1, 'time vs. bits', 'Pollard Rho', 'Location', 'NorthEast' );
% Label axes
xlabel( 'bit' );
ylabel( 'time(s)' );
grid on


