function[] = test1()

fprintf("Testowanie dokładności wyników funkcji SquareIntegral, \n")
fprintf("która oblicza całkę na kwadracie [-1, 1] x [-1, 1]\n")
fprintf("ten test przeprowadza test dokładności wyniku dla\n")
fprintf("wielomianów stopnia 3 i niższych stopniem\n")
fprintf("wielomiany stopnia 0:\n\n")
pause;
f = @(x, y)x.*0 + y.*0 + 1;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = 1: oczekiwana wartość: 4\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n\n", abs(val - 4));
fprintf("wielomiany stopnia 1:\n\n")
pause
f = @(x, y)x.*0 + y;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = y: oczekiwana wartość: 0\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n", abs(val - 0));
f = @(x, y)x + y + 5;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x + y + 5: oczekiwana wartość: 20\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n\n", abs(val - 20));
fprintf("wielomiany stopnia 2:\n\n")
pause;
f = @(x, y)x.^2 + y.*0;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^2: oczekiwana wartość: 4/3\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n", abs(val - 4/3));
f = @(x, y)x.^2 + y.^2;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^2 + y^2: oczekiwana wartość: 8/3\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n\n", abs(val - 8/3));
fprintf("wielomiany stopnia 3:\n\n")
pause;
f = @(x, y)x.^3 + y.*0;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^3: oczekiwana wartość: 0\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n", abs(val - 0));
f = @(x, y)x.^3 + y.^3 + 5;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^3 + y^3 + 5: oczekiwana wartość: 20\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd kwadratury: %.14e\n", abs(val - 20));