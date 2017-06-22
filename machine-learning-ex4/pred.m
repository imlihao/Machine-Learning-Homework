function [ac,p]=pred(X,y,theta,L1,L2,O1)

%------Forward to compute  the pred
theta1=reshape(theta(1:(L1+1)*L2),L2,L1+1);
%size(theta1)
theta2=reshape(theta((L1+1)*L2+1:end),O1,L2+1);

m=size(X,1);
%----------traslate ys


X=[ones(m,1) X];
z1=X*theta1';
a1=sigmoid(z1);
z2=[ones(m,1) a1]*theta2';
a2=sigmoid(z2);

[~,p]=max(a2');
p=p';
ac=mean(p==y);

fprintf('ac is %f.',ac);

end