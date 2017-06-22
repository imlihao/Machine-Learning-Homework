function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
%  a=theta;
%    %
%  a(1)=a(1)+0.01;
%  if(computeCost(X,y,a)<computeCost(X, y, theta))
%      cita1=a(1);
%       else cita1=theta(1)-0.01;
%      end
%  a=theta;
%  a(2)=a(2)+0.01;
%  if(computeCost(X,y,a)<computeCost(X, y, theta))
%      cita2=a(2);
%       else cita2=theta(2)-0.01;
%      end
%
%  theta(1)=cita1;
%  theta(2)=cita2;
    d=zeros(2,1); %  d是由偏导数组成的向量
    for i=1:2
        d(i)=sum(((theta'*X')'-y).*X(:,i))/m;  %计算偏导数
      end;      
    theta=theta-alpha*d;  


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
