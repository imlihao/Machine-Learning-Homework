%-------set size
L1=400;
L2=400;
O1=10;
load('NUMdata.mat');
X=tX;
yt=ty;
m=size(X,1);
%----------traslate ys
X=[ones(m,1) X];
y=zeros(m,O1);
for i=1:10
    y(:,i)=(yt==i);
end
%---------------
lambda=1;
theta1=randInit(L2,L1+1);
theta2=randInit(O1,L2+1);
theta=[theta1(:);theta2(:)];
%---------test costFunc
%[j,g]=Costfunc(theta,X,y,L1,L2,O1,m,lambda);
opt=optimset('MaxIter',100);
costf=(@(t)Costfunc(t,X,y,L1,L2,O1,m,lambda));
[a,b,c]=fmincg(costf,theta,opt);

[ac,p]=pred(cvX,cvy,a,L1,L2,O1);