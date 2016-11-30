function val = nbc(counter,data,num)
    arr = ones(1,5);

    total = [132,213,289,238,151];
    for i = 1:5
        for j = 1:7
            
            arr(i) = arr(i) * (counter(i,j,fix(data(j)/num)+1)/total(i));
        end
    end
    
    [maxx,val] = max(arr);
%     fprintf('%f\n',maxx);
    
end