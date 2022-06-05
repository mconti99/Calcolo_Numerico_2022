[y,fs] = audioread('C:\Users\franc\Downloads\audio1.mp3');
y = (y(:,1)+y(:,2))/2;

y = y./max(abs(y));



noise = 0.1*randn(size(y));


y_n = noise + y;

N = size(y);
N = N(1,1);

f =([0:N-1]./N - 1./2)*fs;

Y = fftshift(fft(y));
Y_N = fftshift(fft(y_n));

subplot(3,1,1);
plot(f, log(1+abs(Y)));

subplot(3,1,2);
plot(f, log(1+abs(Y_N)));



sigma = 0.05*10^4;
filter = exp(-1/2 * (f./sigma).^2)';

sigma2 = 35;
filter2 = 1-exp(-1/2*(f./sigma2).^2)';

subplot(3,1,3);
plot(f, log(1+abs(Y_N.*filter.*filter2)));


y_r = real(ifft(ifftshift(Y_N.*filter)));

y_r = y_r./max(abs(y_r));
%sound(y_r, fs);