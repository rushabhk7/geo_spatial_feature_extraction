function cnt = count_them(data,num)
    
cnt = zeros(7,fix(255/num)+1);
    [x,~] = size(data);
    
    for i = 1:x
        for j = 1: 7
            cnt(j,data(i,j)+1) = cnt(j,fix(data(i,j)/num)+1) + 1;
        end
    end

end