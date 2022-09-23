function [y, error] = implementazione_G_S(x)
F_mat=fft(x);                                     %calcolo la fft con l'algoritmo di matlab

N = length(x);
m = log2(N);

for k = 1:m                                       %ciclo sul numero di passi
    d = N/2^k;                                    %distanza nodi duali al passo k
    nesp = 2^(k-1);                               %esponenziali diversi al passo k
    s = 0;
    for j=1:nesp                                  %ciclo sugli esponenziali diversi
        for l=1:d                                 %calcolo nodi duali
            r = l + s;                            %indice primo elemento della coppia
            r1 = r + d;                           %indice secondo elemento della coppia
            w = exp((-2*pi*1i/N)*2^(k-1)*(l-1));
            f_temp = x(r);
            x(r) = x(r) + x(r1);
            x(r1) = w.*(f_temp - x(r1));          %calcolo coppia di nodi duali
        end
        s = s + 2*d;                              %salto
    end
end
%Reverse
y = digitrevorder(x,2);%richiesto dall'algoritmo
error = abs(y - F_mat);                            %Errore rispetto all'algritmo di matlab
end