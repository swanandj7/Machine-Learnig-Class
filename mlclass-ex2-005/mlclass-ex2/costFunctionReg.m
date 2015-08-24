function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


hofx = zeros(size(theta,2),size(X,1));

for i = 1 : m 
hofx(i) = theta' * X(i,:)';
end;

g = sigmoid(hofx);
temp = 0;
g = g';

J = sum(-y.*log(g) - (1 - y).*(log(1-g)))/m;

J = J + (sum(theta.^2)-theta(1)^2)*lambda/(2*m)


for i =1: n,

	for j = 1: m,
	
		grad(i) = grad(i) + (g(j)-y(j))*X(j,i);

	end;
	
	grad (i) = grad(i)/m;
	
	if(i~=1)
		grad(i) = grad(i) + theta(i)*lambda/m;
end;




% =============================================================

end
