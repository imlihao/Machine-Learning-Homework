function [thet,j]=LRGD(theta)

  alp=0.001;
  iter=10000;
  j=zeros(iter,1);
  
  for i=1:iter
     [j(i),tidu]=costFunction(theta);
     theta=theta+alp*tidu;    
  end 
  thet=theta;
  
  end
  
  