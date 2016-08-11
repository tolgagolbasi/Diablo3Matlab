hey=1;
sakla=0;
while hey~=0
i=1;
[xData, yData, zData] = prepareSurfaceData( x1, y1, z1 );

% Set up fittype and options.
ft = fittype( 'poly33' );
opts = fitoptions( ft );
opts.Lower = [-Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf];
opts.Upper = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, opts );

p=coeffvalues(fitresult);
while(i<=max(size(x1)))
    x=x1(i);
    y=y1(i);
    if ( p(1) + p(2)*x + p(3)*y + p(4)*x^2 + p(5)*x*y + p(6)*y^2 + p(7)*x^3 + p(8)*x^2*y + p(9)*x*y^2 + p(10)*y^3)*1.20<z1(i)
        x1(i)=[];
        y1(i)=[];
        z1(i)=[];
    end
    
i=i+1;
end
hey=sakla-max(size(x1));
sakla=max(size(x1));
end