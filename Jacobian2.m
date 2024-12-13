function[Z] = Jacobian2(x, y)
% 
% Funkcja oblicza jakobian przekształceń fi na pierwszą współrzędną i
% psi na drugą współrzędną. Zwraca wartość jakobianu dla (x, y)
Z = (2 - (x.^2 + y.^2))./(sqrt(2 - x.^2).*sqrt(2 - y.^2));
