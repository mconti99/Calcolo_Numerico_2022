[file, path] = uigetfile("*.jpg");
x = rgb2gray(imread(strcat(path,file)));

[M, N] = size(x);
du = 1/M; dv = 1/N;
m = -1/2:du:1/2-du;
n = -1/2:dv:1/2-dv;
[l,k] = meshgrid(n,m);
R = 0.05; %raggio filtro circolare

filter = sqrt(l.^2+k.^2) <= R;
X = fft2(x);
X_d = log(1+abs(fftshift(X)));

subplot(2,2,1); imshow(x, []);
subplot(2,2,2); imshow(mat2gray(X_d),[]); colormap(gca, jet(256));

x_f = uint8(real(ifft2(ifftshift(fftshift(X).*filter))));

subplot(2,2,3); imshow(x_f, []);
subplot(2,2,4); imshow(mat2gray(X_d.*filter),[]); colormap(gca, jet(256));
