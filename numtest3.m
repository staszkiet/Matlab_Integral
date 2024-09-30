f = @(x, y)x.^4 + y.^4;
val = SquareIntegral(f, 2, 2);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
err1 = abs(val - 8/5);
val = SquareIntegral(f, 4, 4);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
err2 = abs(val - 8/5);
val = SquareIntegral(f, 8, 8);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
err3 = abs(val - 8/5);
val = SquareIntegral(f, 16, 16);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
err4 = abs(val - 8/5);
val = SquareIntegral(f, 32, 32);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
err5 = abs(val - 8/5);