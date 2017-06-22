close all;
clc;

load('ex3data1.mat');
m = size(X, 1);
lambda = 0.1;
m = size(X, 1);
n = size(X, 2);



% Add ones to the X data matrix
X = [ones(m, 1) X];

inti_theta=zeros(n+1,1);
opt=optimset('GradObj', 'on', 'MaxIter',800);
%[j,a]=lrCostFunction(inti_theta,X,(y==1),lambda);
%[theta,fval,ext]=fminunc(@(t)(lrCostFunction(t,X,(y==1),lambda)),inti_theta,opt);
%ext

%-----------------------------------------------------------------
%load('allt.mat');
%pred = predictOneVsAll(all_theta, X);
%fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

%-----------------------------------------------------------------