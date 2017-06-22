close all;
plot(X(:,1),X(:,2),'rx');
[m,n]=size(X);
k=input('input k:');
cluster=zeros(k,n);
color=zeros(m,1);
%--------------------
for  i=1:k
   d=randi(m,1);
  cluster(i,:)=X(d,:);    
end
a=0;
x=0;
while(a==0)
   %draw color
   temp=color;
   for i=1:m
     color(i)=dist(X(i,:),cluster);  
   end
   %max the likelihood
%    temp=cluster;
 
   for i=1:k
     clu=X(color==i,:);
     cluster(i,:)=mean(clu); 
   end   
   % check if the EM alrgram corverge
   
%    
%    tt=abs(temp-cluster);
%    if sum(tt(:))<0.00000001;
%        a=1;  
%    end
   
   tt=sum(abs(temp-color));
   if tt<1
       a=1;
   end

   figure;
   plot(X(color==1,1),X(color==1,2),'rx');
   hold on;
   plot(X(color==2,1),X(color==2,2),'bx');
   plot(X(color==3,1),X(color==3,2),'yx');
   plot(cluster(:,1),cluster(:,2),'go')
   hold off;
x=x+1;
end

   figure;
   plot(X(color==1,1),X(color==1,2),'rx');
   hold on;
   plot(X(color==2,1),X(color==2,2),'bx');
   plot(X(color==3,1),X(color==3,2),'yx');
   plot(cluster(:,1),cluster(:,2),'go')
   hold off;
   x
   