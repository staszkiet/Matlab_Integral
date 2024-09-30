f = @(x, y)x.^4 + y.^4;
traperr = zeros(size(10:10:1000));
prosterr = zeros(size(10:10:1000));
glerr = zeros(size(10:10:1000));
simperr = zeros(size(10:10:1000));

for i = 10:10:1000
    traperr(i/10) = abs(trapez(f, i, i) - pi/4);
    prosterr(i/10) = abs(prostokat(f, i, i) - pi/4);
    glerr(i/10) = abs(P1Z36_SZA_Integral(f, i, i) - pi/4);
    simperr(i/10) = abs(simpson(f, i, i) - pi/4);
end
loglog(10:10:1000, traperr);
hold on;
loglog(10:10:1000, glerr);
hold on;
loglog(10:10:1000, prosterr);
hold on;
loglog(10:10:1000, simperr);
hold on;
legend("trapezy", "Gauss-Legandre", "prostokaty", "Simpson");