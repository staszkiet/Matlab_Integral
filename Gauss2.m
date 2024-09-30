function [Y] = Gauss2(f, n, m)
fi2 = @(x, y)x;
p2 = @(x, y)y.*(sqrt(1 - x.^2));
func = @(x, y)f(fi2(x, y), p2(x, y)).*abs(Jacobian(x, y));
Y = SquareIntegral(func, n, m);