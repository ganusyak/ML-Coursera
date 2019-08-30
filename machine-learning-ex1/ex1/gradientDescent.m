function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%

for iter = 1:num_iters
    theta1 = theta;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta1 = theta;

    delta = X*theta - y;

    for i = 1 : size(X, 2)
        theta1(i) = theta(i) - alpha/m*sum(delta.*X(:,i));
    end

    theta = theta1;

  % ============================================================

    % Save the cost J in every iteration
    cost = computeCost(X, y, theta)
    J_history(iter) = cost;

end

end
