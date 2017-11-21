x0 = input('Ingrese el valor inicial: ');
tol = input('Ingrese el porcentaje de error: ');
fun = input('Ingrese la funci0n: ');

i = 1;

%Valor inicial Xi %
X(i) = x0;

%Variable Simbolica%
syms x;

%Uso de Sustitucion Simbolica (Reempladerar en la funEval todas las X por
%valor Inicial
funEval = subs(fun,x,X(i));

%Derivada%
der = diff(fun);

%Uso de Sustitucion Simbolica (Reempladerar en la funEval todas las X por
%valor Inicial
derEval = subs(der,x,X(i));

%Error Absoluto%
error(1)=100;

%Ejecutar mientras |Error| serror mayor a la tolerancia%
while abs( error(i) ) >= tol;    
    X(i+1) = X(i) - (funEval/derEval); 
    funEval = subs(fun,x,X(i+1)); 
    derEval = subs(der,x,X(i+1));
    error(i+1) = abs((X(i+1)-X(i))/X(i+1)*100);
    i=i+1;
end

fprintf('i X(i) Error aprox (i) \n');

for j = 1:i;
    fprintf('%2d \t %11.7f \t %11.7f \n',j-1,X(j),error(j));
end