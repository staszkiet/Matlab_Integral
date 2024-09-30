function[y] = trapez(f, n, m)
func = @(x, y)f(fi(x, y), p(x, y)).*abs(Jacobian2(x, y));
x = linspace(-1, 1, n+1);
y = linspace(-1, 1, m+1)';
hx = x(2) - x(1);
hy = y(2) - y(1);
A = ones(1, length(x))*2;
A(1) = 1;
A(length(A)) = 1;
B = ones(1, length(y))'*2;
B(1) = 1;
B(length(B)) = 1;
C = B*A;
y = sum(sum((hx*hy/4)*C.*func(x, y)));

end