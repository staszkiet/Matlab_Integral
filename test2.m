function[] = test2()
fprintf("Sprawdzenie, jak przekształcenia:" + ...
    " fi(x, y) = x*sqrt(1 - (y^2)/2)\n")
fprintf("I psi(x, y) = y*sqrt(1 - (x^2))/2 zmieniają\n")
fprintf("obszar B = [-1, 1] x [-1, 1] w standardowym układzie " + ...
    "współrzędnych\n")
fprintf("po zastosowaniu przekształcenia (x, y) -> (fi(x, y), p(x, y))\n")
pause;
fi = @(x, y)x.*sqrt(1 - y.^2/2);
psi = @(x, y)y.*sqrt(1 - x.^2/2);

g = linspace(-1,1, 20);
y = repmat(g, 1, 20);
x = ones(1, 400);
for i = 1:length(g)
x(1, 20*(i-1) + 1:20*(i)) = ones(1, 20)*g(i);
end
plot(x, y, '.');
xlim([-2, 2]);
ylim([-2, 2]);
hold on;
fprintf("Na rysunku widzimy 400 punktów należących do obszaru B\n")
fprintf("Punkty są rozłożone równomiernie po obszarze. Zobaczmy jaki\n")
fprintf("wpływ na ich położenie będzie miało zastosowanie na każdym\n")
fprintf("z nich przekształcenia f(x, y) = (fi(x, y), p(x, y))\n")
fprintf("Spodziewamy się, że punkty po przekształceniu powinny stworzyć\n")
fprintf("koło wpisane w ten kwadrat.")
pause;
plot(fi(x, y), psi(x, y), '.');