x = 30:0.35:60; y = 5:0.1:13.5;
[x,y] = meshgrid(x,y);
z = 253.446 + 2.73965 .* x + 0.0130798 .* X .^ 2 - 23.6828 .* Y + 2.7108 .* Y .^2 - 0.644642 .* X .* Y;
figure
mesh (x,y,z);