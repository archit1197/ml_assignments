function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

t1 = theta(1);
t2 = theta(2);
term1 = 0;
term2 = 0;
for i = 1:m
	term1 = term1 + (theta'*X(i,:)'-y(i))*X(i,1);
	term2 = term2 + (theta'*X(i,:)'-y(i))*X(i,2);
end
term1 = term1*alpha/m;
term2 = term2*alpha/m;
theta(1) = t1-term1;
theta(2) = t2-term2;



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
