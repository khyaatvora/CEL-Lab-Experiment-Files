% Given data 
x = [0.6 1.5 1.6 2.5 3.5]; 
f = 5 * exp(-2*x) .* x; % Compute f(x) = 5*e^(-2*x)*x 
% True derivative of f(x) 
true_derivative = @(x) 5 * exp(-2*x) .* (1 - 2*x); 
% Compute first-derivative estimates 
n = length(x); 
df_estimated = zeros(size(x)); 
for i = 1:n 
if i == 1 
% Forward difference at the first point 
h = x(i+1) - x(i); 
df_estimated(i) = (f(i+1) - f(i)) / h; 
elseif i == n 
% Backward difference at the last point 
h = x(i) - x(i-1); 
df_estimated(i) = (f(i) - f(i-1)) / h; 
else 
% Centered difference at interior points 
h1 = x(i) - x(i-1); 
h2 = x(i+1) - x(i); 
df_estimated(i) = (f(i+1) - f(i-1)) / (h1 + h2);
end 
end 
% Compare estimated derivatives with true derivatives 
disp('x       
f(x)           
df/dx (Estimated)     
df/dx (True)'); 
disp('-----------------------------------------------------------'); 
for i = 1:n 
fprintf('%.2f    
%.4f          
%.4f               
df_estimated(i), true_derivative(x(i))); 
end 