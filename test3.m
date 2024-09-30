function[] = test3()

fprintf("Testowanie dokładności wyników funkcji SquareIntegral, \n")
fprintf("która oblicza całkę na kwadracie [-1, 1] x [-1, 1]\n")
fprintf("ten test przeprowadza test dokładności wyniku dla\n")
fprintf("wielomianów stopnia 4 i wyższych stopniem\n")
fprintf("wielomiany stopnia 4:\n\n")
pause;
f = @(x, y)x.^4 + y.*0 + 1;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^4 + 1: oczekiwana wartość: 4.8\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 4.8));
fprintf("błąd względny kwadratury: %.14e\n", abs(val - 4.8)/(4.8));
f = @(x, y)x.^4 + y.^4;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^4 + y^4: oczekiwana wartość: 8/5\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/5));
fprintf("błąd względny kwadratury: %.14e\n", abs(val - 8/5)/(8/5));
fprintf("wielomiany stopnia wyższego niż 4\n")
pause;
f = @(x, y)x.^8 + y.^9;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^8 + y^9: oczekiwana wartość: 4/9\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 4/9));
fprintf("błąd względny kwadratury: %.14e\n", abs(val - 4/9)/(4/9));
f = @(x, y)x.^10 + y.^10;
val = SquareIntegral(f, 1, 1);
fprintf("f(x, y) = x^10 + y^10: oczekiwana wartość: 8/11\n")
fprintf("wartość wyliczona przez program %.14e\n", val);
fprintf("błąd bezwzględny kwadratury: %.14e\n", abs(val - 8/11));
fprintf("błąd względny kwadratury: %.14e\n", abs(val - 8/11)/(8/11));