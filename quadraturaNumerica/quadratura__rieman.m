function [y] = quadratura__rieman(f, a, b, N)
    t = linspace(a,b,N+1)'; 
    %divido l'intervallo [a,b] in n sottointervalli di ugual dimensione
    delta = (b-a)./N; %lunghezza di ogni sottointervallo
    M = diag(ones(N+1,1)) + diag(ones(N,1), 1);
    %definisco questa matrice per il calcolo di f(x[k]) + f(x[k+1])
    punti_medi = M*t./2;
    punti_medi = punti_medi(1:N);%escludo l'ultimo elemento
    
    y = sum(f(punti_medi))*delta; 
    %calcolo dell'area come sommatoria(f((x[k]+x[k+1])/2)) * (b-a)/N)
end