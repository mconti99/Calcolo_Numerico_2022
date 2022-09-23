function y = implementazione_radix_2(x)
N=length(x);%deve essere una potenza di 2
if N==1
    y=x;
else
    even = implementazione_radix_2(x(1:2:N));
    odd = implementazione_radix_2(x(2:2:N));
    
    M=N/2;
    W = exp(-2i*pi*(0:M-1)/N);
    left_component = even(1:M) + W.*odd(1:M);
    right_component = even(1:M) - W.*odd(1:M);
    
    y = [left_component,right_component];
end
end