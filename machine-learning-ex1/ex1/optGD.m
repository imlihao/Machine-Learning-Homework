function [f,g]=optGD(theta)

data = load('ex1data1.txt');
y = data(:, 2);
m = length(y);
X = [ones(m, 1), data(:,1)];
f=sum(((theta'*X')'-y).^2)/(2*m)
g=zeros(2,1);
g(1)=sum(((theta'*X')'-y).*X(:,1))/m;
g(2)=sum(((theta'*X')'-y).*X(:,2))/m;
end