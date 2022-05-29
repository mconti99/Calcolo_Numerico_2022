function [y] = quadratura_trapezoidale_composita(f, a, b, N)
    t = linspace(a,b,N+1)'; 
    %divido l'intervallo [a,b] in n sottointervalli di ugual dimensione
    delta = (b-a)./N; %lunghezza di ogni sottointervallo
    M = diag(ones(N+1,1)) + diag(ones(N,1), 1);
    %definisco questa matrice per il calcolo di f(x[k]) + f(x[k+1]) 
    vals = M*f(t); vals = vals(1:N);
    y = sum(vals)*delta/2; 
    %calcolo dell'area come sommatoria(f[xk]+f(x[k+1])/2 * (b-a)/N)
end

