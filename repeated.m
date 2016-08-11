x1count=numel(x1);
for i=1:1:x1count
    var=z1(i);
    for j=1:1:x1count
        if j>numel(x1)
            continue
        end
        if i>numel(x1)
            continue
        end
        if (x1(j)<=(x1(i)+2)) && (x1(j)>=(x1(i)-2)) && (y1(j)<=(y1(i)+2)) && (y1(j)>=(y1(i)-2))
            if var*1.1<z1(j)
                x1(j)=[];
                y1(j)=[];
                z1(j)=[];
            end
        end
        if (x1(j)<=(x1(i)+2)) && (x1(j)>=(x1(i)-2)) && (y1(j)<=y1(i))
            if var*1.1<z1(j)
                x1(j)=[];
                y1(j)=[];
                z1(j)=[];
            end
        end
        if (y1(j)<=(y1(i)+2)) && (y1(j)>=(y1(i)-2)) && (x1(j)<=x1(i))
            if var*1.1<z1(j)
                x1(j)=[];
                y1(j)=[];
                z1(j)=[];
            end
        end
    end
end