x = 30:0.35:60; y = 5:0.1:13.5;
[x,y] = meshgrid(x,y);
z = 140928 + 212.558 .* x + 1.84306 .* x .^ 2 + 11773.6 .* y - 780.184 .* y .^ 2 + 11.7911 .* y .^ 3 - 89.2628 .* x .* y + 5.12307 .* x .* y .^ 2;
figure
mesh (x,y,z);
figure
contour(x,y,z);axis square