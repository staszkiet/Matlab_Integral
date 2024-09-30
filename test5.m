function[] = test5()

fprintf("sprawdzenie czy funkcja P1Z36_SZA_Integral poprawnie\n")
fprintf("oblicza całkę na obszarze D = {(x, y) ∈ R^2 : x^2 + y^2 <= 1}\n")
f = @(x, y)x.^2 + y.^2;
fprintf("funkcja której całkę obliczamy: f(x, y) = x^2 + y^2\n")
pause;
for i = 10:10:60
    for j = 10:10:60
        val = P1Z36_SZA_Integral(f, i, j);
        fprintf("n = %d, m = %d, oczekiwana wartość: pi/2\n", i, j)
        fprintf("wartość zwrócona przez funkcję: %.14e\n", val);
        fprintf("błąd kwadratury: %.14e\n", abs(val - pi/2));
    end
    pause;
end