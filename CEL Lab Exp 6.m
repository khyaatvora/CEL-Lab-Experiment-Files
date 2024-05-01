x = [0,2,4,6,9,11,12,15,17,19];
y = [5,6,7,6,9,8,8,10,12,12];
p1 = polyfit(x, y, 1); % Linear fit
yfit1 = polyval(p1, x);
scatter(x, y); hold on;
plot(x, yfit1, 'r-');
title('Linear Fit');
grid on;

p2 = polyfit(x, y, 2); % 2nd degree polynomial fit
yfit2 = polyval(p2, x);
plot(xdata, yfit2, 'b--');
legend('Data', 'Linear Fit', '2nd Degree Polynomial');
hold off;

% Calculating residuals and R-squared for linear fit
residuals1 = y - yfit1;
SSresid1 = sum(residuals1.^2);
SStotal1 = (length(y)-1) * var(y);
Rsquared1 = 1 - SSresid1/SStotal1;

% Calculating residuals and R-squared for polynomial fit
residuals2 = ydata - yfit2;
SSresid2 = sum(residuals2.^2);