function[Z] = Jacobian3(x, y)
%m = zeros(2, 2);
%m(1, 1) = cos(pi*(y + 1))/2;
%m(1, 2) = -(1/2)*(x + 1)*sin(pi*(y + 1))*pi;
%m(2, 1) = sin(pi*(y + 1))/2;
%m(2, 2) = (1/2)*(x + 1)*cos(pi*(y + 1))*pi;
%Z = det(m);
%Z = cos(pi.*(y + 1))/2.*(1/2).*(x + 1).*cos(pi.*(y + 1)).*pi + (1/2).*(x + 1).*sin(pi.*(y + 1))*pi.*sin(pi.*(y + 1))/2;
Z = pi*(x + 1)/4;
end