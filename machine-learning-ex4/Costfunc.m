function [J,g]=Costfunc(theta,X,y,L1,L2,O1,m,lambda)
 %------reshape
 
theta1=reshape(theta(1:(L1+1)*L2),L2,L1+1);
%size(theta1)
theta2=reshape(theta((L1+1)*L2+1:end),O1,L2+1);
%size(theta2)
%-------------Forward to compute the Output
z1=X*theta1';
a1=sigmoid(z1);
z2=[ones(m,1) a1]*theta2';
a2=sigmoid(z2);

%-------------compute the CostValue J;
t1=theta(2:end,:);
t2=theta(2:end,:);
reg=sum(t1(:).^2)+sum(t2(:).^2);
reg=reg*lambda/(2*m);
J=-log(a2).*y-(1-y).*log(1-a2);
J=sum(J(:))/(2*m)+reg;
%---------------------------
L3=a2-y;
a1=[ones(m,1) a1];
gz=a1.*(1-a1);

L2=theta2'*L3'.*gz';   %401*m
L2=L2(2:end,:);
theta1(1,:)=0;
theta2(1,:)=0;

g1=L2*X+lambda*theta1/m;


g2=L3'*a1+lambda*theta2/m;

g=[g1(:);g2(:)]/m;

end