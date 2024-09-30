function [S] = simpson(f, n,m)
if mod(n,2)==1
    n=n+1;
end
if mod(m,2)==1
    m=m+1;
end

func = @(x, y)f(fi(x, y), p(x, y)).*abs(Jacobian2(x, y));

A = [1 repmat([4 2], 1, (n/2)-1) 4 1];
B = [1 repmat([4 2], 1, (m/2)-1) 4 1];
x = linspace(-1,1,n+1);
y = linspace(-1,1,m+1)';
hx = x(2) - x(1);
hy = y(2) - y(1);


C = (B'*A);
S = (hx*hy/9)*sum(sum(C.*func(x, y)));