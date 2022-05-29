a = 0;
b = [1:100];

f = @(x)(x.^2);

res = b.^3/3;

for i = 1:100
    err(i) = abs(res(i)-quadratura_trapezoidale(f,a,b(i)));
end


plot(b, err);

title('Errore di quadratura al crescere di [A,B]');
xlabel('Lunghezza di [A,B]');
ylabel('Errore di quadratura');