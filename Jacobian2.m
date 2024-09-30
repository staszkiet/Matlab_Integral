function[Z] = Jacobian2(x, y)
% Projekt 1, Zadanie 36
% Stanisław Zaprzalski, 327415
% 
% Funkcja oblicza jakobian przekształceń fi na pierwszą współrzędną i
% psi na drugą współrzędną. Zwraca wartość jakobianu dla (x, y)
Z = (2 - (x.^2 + y.^2))./(sqrt(2 - x.^2).*sqrt(2 - y.^2));
