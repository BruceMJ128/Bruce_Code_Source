% CCT mean
% z = 4142.55-64.352 .* x+0.372811 .* x.^2+306.51.*y-37.5465.*y.^2+1.54074.*y.^3+5.84999 .*x .*y-0.341499 .*x .*y.^2;
j=1;
T=4100;
for x=30:0.1:60;
    a = 1.54074;
    b = -37.5465 -0.341499 .*x;
    c = 306.51 + +5.84999 .*x;
    d = 4142.55-64.352 .* x+0.372811 .* x.^2 - T;
    y = [a b c d];
    r = roots(y);
    
    n=length(r);
    z=[];
    for k=1:n
        if isreal(r(k))==1
            z(k)=r(k);
        end
    end
    z(z==0)=[];
    m=length(z);
    if m~=0
        for zz=1:m
            MR(j,1)=x;
            MR(j,2)=z(zz);
            MR(j,3)=T;
            j=j+1;
        end
        j=j-1+m;
    end
end