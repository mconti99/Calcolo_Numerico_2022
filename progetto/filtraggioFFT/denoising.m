fs = 1000;
Ts = 1/fs;

t = [0:Ts:1];

x = 4*sin(2*pi*2*t)+7*cos(2*pi*7*t);


N = size(x);
N = N(2);

f = ([0:N-1]/N-1/2)*fs;


x_n = x + 8*randn(size(x));

plot(x_n);

X_N = fftshift(fft(x_n));

subplot(2,2,1);
plot(t,x_n);

title('Segnale rumoroso');
xlabel('t');

subplot(2,2,3);
plot(f,abs(X_N));

title('DFT del segnale rumoroso');
xlabel('f');


filter = (abs(X_N) >= max(abs(X_N))*0.5);

x_c = real(ifft(ifftshift(filter.*X_N)));
subplot(2,2,2);
plot(t,x_c);

title('Segnale filtrato');
xlabel('t');

subplot(2,2,4);
plot(f,abs(filter.*X_N));

title('DFT del segnale filtrato');
xlabel('f');

