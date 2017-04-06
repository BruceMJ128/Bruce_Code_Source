% CCT Stdev
% z = 253.446 + 2.73965 .* x + 0.0130798 .* x .^ 2 - 23.6828 .* y + 2.7108 .* y .^2 - 0.644642 .* x .* y;
% x - slat weight, y - MR;
j=1;
StdevCCT=225;
for x=30:0.1:60;
    a = 2.7108;
    b = - 23.6828 - 0.644642 .* x;
    c = 253.446 + 2.73965 .* x + 0.0130798 .* x .^ 2 - StdevCCT;
    y = [a b c];
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
            MR(j,3)=StdevCCT;
            j=j+1;
        end
        j=j-1+m;
    end
end