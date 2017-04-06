% Lumen Mean
% z = 140928 + 212.558 .* x + 1.84306 .* x .^ 2 + 11773.6 .* y - 780.184 .* y .^ 2 + 11.7911 .* y .^ 3 - 89.2628 .* x .* y + 5.12307 .* x .* y .^ 2;
% x - slat weight, y - MR;
j=1;
Lumen=185000;
for x=30:0.1:60;
    a = 11.7911;
    b = - 780.184 + 5.12307 .* x;
    c = 11773.6 - 89.2628 .* x;
    d = 140928 + 212.558 .* x + 1.84306 .* x .^ 2 - Lumen;
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
            MR(j,3)=Lumen;
            j=j+1;
        end
        j=j-1+m;
    end
end