function [Y] = Gauss3(f, n, m)
fi3 = @(x, y)(1/2)*(x + 1).*cos(pi*(y + 1));
p3 = @(x, y)(1/2)*(x + 1).*sin(pi*(y + 1));
func = @(x, y)f(fi3(x, y), p3(x, y)).*abs(Jacobian3(x, y));
Y = SquareIntegral(func, n, m);