function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);
hypo = zeros(size(X,1),1);

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
for i =1:m

	hypo(i) = theta ' * X(i,:)';
	hypo(i) = (hypo(i) - y(i))^2;
	J = J +hypo(i);
end;	

J = J / (2 * m);



% =========================================================================

end
