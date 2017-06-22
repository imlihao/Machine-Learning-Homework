function [J,grad] = costFunction(theta)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.
data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
m = length(y);
X = [ones(m, 1) X];
% Initialize some useful values
 % number of training examples
% You need to return the following variables correctly 
temp=sigmoid((theta'*X')');

J = sum((-y).*log(temp)+(y-1).*log(1-temp))/m;
grad=zeros(3,1);
grad_test=zeros(3,1);

%for i=1:3
%   grad(i)=-sum((temp-y).*X(:,i))/m; 
%end
grad=-((temp-y)'*X)'/m;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
