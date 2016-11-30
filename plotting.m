
[train, test] = index(1);

for i = 1:8
    [a,b] = index(2^i);
 
    [train] = [train;a];
    [test] = [test;b];
end

plot([1-train 1-test]);

% index(30);