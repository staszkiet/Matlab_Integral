f = @(x, y)x.*0 + y.*0 + 1;
fprintf("Funkcja f(x, y) = 1\n")
fprintf("Jacobian1 %.5e\n", abs(P1Z36_SZA_Integral(f, 100, 100) - pi));
fprintf("Jacobian2 %.5e\n", abs(Gauss2(f, 100, 100) - pi));
fprintf("Jacobian3 %.5e\n", abs(Gauss3(f, 100, 100) - pi));
f = @(x, y)exp(x.^2 + y.^2);
fprintf("Funkcja f(x, y) = exp(x.^2 + y.^2);\n")
fprintf("Jacobian1 %.5e\n", abs(P1Z36_SZA_Integral(f, 100, 100) - 5.39814156908377382700090748626));
fprintf("Jacobian2 %.5e\n", abs(Gauss2(f, 100, 100) - 5.39814156908377382700090748626));
fprintf("Jacobian3 %.5e\n", abs(Gauss3(f, 100, 100) - 5.39814156908377382700090748626));
f = @(x, y)x.^3 + y.^6.*x.^6;
fprintf("Funkcja f(x, y) = x.^3 + y.^6.*x.^6;\n")
fprintf("Jacobian1 %.5e\n", abs(P1Z36_SZA_Integral(f, 100, 100) - 5*pi/7168));
fprintf("Jacobian2 %.5e\n", abs(Gauss2(f, 100, 100) -  5*pi/7168));
fprintf("Jacobian3 %.5e\n", abs(Gauss3(f, 100, 100) -  5*pi/7168));
f = @(x, y)sqrt(x.^2 + y.^2);
fprintf("Funkcja f(x, y) = sqrt(x.^2 + y.^2);\n")
fprintf("Jacobian1 %.5e\n", abs(P1Z36_SZA_Integral(f, 100, 100) - 2*pi/3));
fprintf("Jacobian2 %.5e\n", abs(Gauss2(f, 100, 100) -  2*pi/3));
fprintf("Jacobian3 %.5e\n", abs(Gauss3(f, 100, 100) -  2*pi/3));