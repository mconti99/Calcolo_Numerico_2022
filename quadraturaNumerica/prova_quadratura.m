clear
a = 0;
b = pi;
N = [4:2:30]';
f = @(x)(sin(x)+1);
v = 2+pi;

for i = [1:size(N)]
    y1(i) = quadratura_trapezoidale_composita(f,a,b,N(i));
    y2(i) = quadratura__rieman(f,a,b,N(i));
    y3(i) = quadratura_simpson_composita(f, a, b, N(i));
end

err1 = abs(y1-v)./v;
err2 = abs(y2-v)./v;
err3 = abs(y3-v)./v;


plot(N,err1);
hold on;
plot(N,err2);
hold on;
plot(N,err3);

legend('q. Trapezoidale','q. Rienman', 'q. Simpson');
title('Errore relativo al crescere del numero di intervalli N');
xlabel('N');
ylabel('Errore relativo');

