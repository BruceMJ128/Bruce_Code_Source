x = 30:0.35:60; y = 5:0.1:13.5;
[x,y] = meshgrid(x,y);
z = 253.446 + 2.73965 .* x + 0.0130798 .* x .^ 2 - 23.6828 .* y + 2.7108 .* y .^2 - 0.644642 .* x .* y;
figure
mesh (x,y,z);
figure
contour(x,y,z);axis square