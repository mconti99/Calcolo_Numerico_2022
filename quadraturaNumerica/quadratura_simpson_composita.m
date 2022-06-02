function [y] = quadratura_simpson_composita(f, a, b, N)
    t = linspace(a,b,N+1)'; 
    %divido l'intervallo [a,b] in n sottointervalli di ugual dimensione
    delta = (b-a)./N.*1./6; %lunghezza di ogni sottointervallo
    for i = [1:size(t)-1]
        y(i) = f(t(i))+f(t(i+1))+4*f( (t(i)+t(i+1))/2 );
    end
    y = sum(y)*delta; 
end