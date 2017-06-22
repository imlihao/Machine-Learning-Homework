fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

a=size(data);

plotData(X, y);

%% =================== Part 3: Gradient descent ===================
fprintf('Running Gradient Descent ...\n')

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.02;

% compute and display initial cost
computeCost(X, y, theta)

% run gradient descent
[theta,jh] = gradientDescent(X, y, theta, alpha, iterations);
th=[1000;1000];
options=optimset('GradObj','on','MaxIter',100);


[theta2,fval,exitflag]=fminunc(@optGD,th,options);
theta2
fval
exitflag