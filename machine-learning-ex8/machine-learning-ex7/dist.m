function d=dist(a,b)
m=size(b,1);
min=100000;
for i=1:m
  c=b(i,:)-a;
  di=sum(c.^2);
  if(min>di)
      d=i;
      min=di;
  end

end

% c=bsxfun(@minus,b,a);
% c=sum((c.^2),2);
% d=find(c==max(c));

end