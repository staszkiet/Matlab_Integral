function[] = test4()
fprintf("Badanie jaki wpływ ma ilość podprzedziałów względem x\n")
fprintf("i ilość podprzedziałów względem y na błąd kwadratury stosowanej")
fprintf("\n");
fprintf("w funkcji SquareIntegral.")
fprintf("Spodziewamy się, że wraz z wzrostem ilości podprzedziałów\n")
fprintf("wartość błędu będzie coraz mniejsza.\n")
pause;
f = @(x, y)x.^4 + y.^4;

x = zeros(50, 50);

for i = 1:50
    for j = 1:50
        w = SquareIntegral(f, i, j);
        x(i, j) = abs(1.6 - w);
    end
end
i = 1:50;
j = 1:50;
surf(i, j, x);
xlabel('m');
ylabel('n');
zlabel('z');
fprintf("Wykres przedstawia wartość błędu bezwzględnego (oś z) \n")
fprintf("w zależności od ilości podprzedziałów na którą dzielimy\n")
fprintf("przedział na którym całkujemy względem x (oś n) i względem\n")
fprintf("y (oś m). Dzielimy oba przedziały na od 1 do 50 podprzedziałów" + ...
    "\n\n");
fprintf("zobaczmy dokładniej co się dzieje dla n i m >= 10");
pause
x2 = zeros(41, 41);
for i = 10:50
    for j = 10:50
        w = SquareIntegral(f, i, j);
        x2(i-9, j-9) = abs(1.6 - w);
    end
end
surf(10:50, 10:50, x2);
xlabel('m');
ylabel('n');
zlabel('z');
