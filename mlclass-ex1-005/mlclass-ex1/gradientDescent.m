function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
	J_history(iter) = computeCost(X, y, theta); 
	cost1 = 0;
	cost2 = 0;
	for i =1 : m,	
	cost1 = cost1 + (theta(1) + theta(2) * X(i,2)) - y(i);
	cost2 = cost2 + ((theta(1) + theta(2) * X(i,2)) - y(i))*X(i,2);
	end;

	temp1 = theta(1) - (alpha/m)*cost1;
	temp2 = theta(2) - (alpha/m)*cost2;

	theta(1) = temp1;
	theta(2) = temp2;	
end;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
