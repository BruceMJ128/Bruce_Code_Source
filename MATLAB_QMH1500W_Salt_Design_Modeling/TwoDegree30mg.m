clear 
x = 45; y = (4:0.1:14);
z = 4142.55 - 64.352 * x+ 0.372811 * x.^2 + 306.51 * y- 37.5465 * y.^2 + 1.54074 * y.^3 + 5.84999 * x* y- 0.341499 * x* y.^2;
plot (y,z)