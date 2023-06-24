load('data.mat');
D = data;
C = [0.8 0.8; 0.4 0.4];
x = D(:,1);
y = D(:,2);
a = C(:,1);
b = C(:,2);
N = 0;
scatter(x, y,'yellow','filled','o');
hold on;
scatter(a, b,'red','filled','s');
% Add labels and title
xlabel('X-axis')
ylabel('Y-axis')
title('Scatter Plot')
options = foptions();
options(14) = 1;
while(true)
    N = N + 1;
    O = C;
    C = kmeans(C,D,options);
    if(C==O)
        break
    end
    a = C(:,1);
    b = C(:,2);
    scatter(a, b,'blue','filled','s');
end
fprintf('Converged in %d iterations.\n', N);
