function[y] = prostokat(f, n, m)
func = @(x, y)f(fi(x, y), p(x, y)).*abs(Jacobian2(x, y));
x1 = linspace(-1, 1, n+1);
y1 = linspace(-1, 1, m+1);
hx = x1(2) - x1(1);
hy = y1(2) - y1(1);
H = hx*hy;
x = (x1(1:length(x1) - 1) + x1(2:length(x1)))/2;
y = (y1(1:length(y1) - 1) + y1(2:length(y1)))/2;
y = y';
y = sum(sum(func(x, y))) * H;
end