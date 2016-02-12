I = imread('D:\research papers\imcomp\scenery2\scenery2.jpg');
Ihat = imread('D:\research papers\imcomp\scenery2\90result.jpg');

% Read the dimensions of the image.
[rows columns ~] = size(I);

% Calculate mean square error of R, G, B.   
mseRImage = (double(I(:,:,1)) - double(Ihat(:,:,1))) .^ 2;
mseGImage = (double(I(:,:,2)) - double(Ihat(:,:,2))) .^ 2;
mseBImage = (double(I(:,:,3)) - double(Ihat(:,:,3))) .^ 2;

mseR = sum(sum(mseRImage)) / (rows * columns);
mseG = sum(sum(mseGImage)) / (rows * columns);
mseB = sum(sum(mseBImage)) / (rows * columns);

% Average mean square error of R, G, B.
mse = (mseR + mseG + mseB)/3;

% Calculate PSNR (Peak Signal to noise ratio).
PSNR_Value = 10 * log10( 255^2 / mse);
fprintf('PSNR is equal to %f\n',PSNR_Value);
