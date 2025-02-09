function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);
J_history = zeros(num_iters, 1);

cost = theta;

for iter = 1:num_iters
	J_history(iter) = computeCost(X, y, theta); 
	cost = cost .*0;
	
	for j = 1: n,
		for i =1 : m,	
			cost(j) = cost(j) + (theta ' * X(i,:)' - y(i))*X(i,j);
		end;
	end;

	for i= 1:n
		theta(i) = theta(i) - (alpha/m)*cost(i);
	end;
end;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %











    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
