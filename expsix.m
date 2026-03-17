X = [0 2 4 6 9 11 12 15 17 19];
Y = [5 6 7 6 9 8 8 10 12 12];

% Linear Regression 
p1 = polyfit(X, Y, 1); 
Y1 = p1(2) + p1(1)*X; 

% Quadratic Regression
p2 = polyfit(X, Y, 2); 

Y2 = p2(1)*X.^2 + p2(2)*X + p2(3); 
scatter(X, Y, 'r*'); % Plot original data points
hold on;
plot(X, Y1, '-b', 'LineWidth', 1.5); % Linear Fit
plot(X, Y2, '--g', 'LineWidth', 1.5); % Quadratic Fit

grid on;
xlabel('x-data'); ylabel('y-data');
legend('Data Points', 'Linear Fit', 'Quadratic Fit');
title('Comparison of Linear and Quadratic Curve Fitting');