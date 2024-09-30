function[Z] = func(f, x, y)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Funkcja zwraca wartość f(fi(x, y), psi(x, y)).*abs(Jacobian2(x, y))
% dla odpowiednich wartości x i y oraz odpowiedniej funkcji f.
Z = f(fi(x, y), p(x, y)).*abs(Jacobian2(x, y));