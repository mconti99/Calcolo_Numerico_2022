%compression

[file, path] = uigetfile("*.jpg");

x = rgb2gray(imread(strcat(path,file)));
X = fft2(x);
X_mod = abs(X);
ord_coeff = sort(X_mod(:), 'descend');
N = length(ord_coeff);

i = 1;

for compression_perc = [50,85, 90, 95]
    threshold_index = floor((100-compression_perc)/100*N);
    threshold = ord_coeff(threshold_index);
    mask =(X_mod >= threshold);

    x_compressa = uint8(ifft2(X.*mask));
    
    figure(1);
    subplot(2,2,i); imshow(x_compressa);
    title("Compressione del " + compression_perc + "%");
    
    figure(2);
    X_d = fftshift(X_mod.*mask);
    subplot(2,2,i); imshow(mat2gray(log(1+X_d)),[]); colormap(gca, jet(256));
    title("Compressione del " + compression_perc + "%");
    i = i+1; 
end
