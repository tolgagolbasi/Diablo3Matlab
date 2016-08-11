itemstats;
i=1;
while(i<max(size(table)))
   X(i)=table(i,1);
    Y(i)=table(i,2);
i=i+1;
end
k=1;
for i=40:1:300,
    for j=40:1:300,
        buldum=find(X==(i*1000+j));
        if ~isempty(buldum) 
            if numel(buldum)>1
             buldum=buldum(numel(buldum)); 
            end
            a1=Y(buldum);
            if a1>1
            z1(k)=Y(buldum);
            x1(k)=i;
            y1(k)=j;
            k=k+1;
            end
        end
    end
end