[m,n]=size(X);

% 特征均值化

me=mean(X);
t=bsxfun(@minus,X,me);
tt=bsxfun(@rdivide,double(t),double(std(X)));

% plot(X(:,1),X(:,2),'rx');
% figure;
% plot(t(:,1),t(:,2),'bx');
% figure;
% plot(tt(:,1),tt(:,2),'gx');

%求协方差矩阵
C=cov(tt);
[U,S,V]=svd(C);

f=X*U(:,1);
