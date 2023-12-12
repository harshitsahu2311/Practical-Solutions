% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Convert the image to grayscale if needed
grayImage = rgb2gray(originalImage);

% Apply FFT to the grayscale image
fftImage = fft2(double(grayImage));

% Shift zero frequency component to the center
shiftedFFT = fftshift(fftImage);

% Display the magnitude spectrum of the FFT
magnitudeSpectrum = log(abs(shiftedFFT) + 1);
figure;
subplot(1, 2, 1);
imshow(magnitudeSpectrum, []);
title('Magnitude Spectrum (FFT)');

% Display the original image
subplot(1, 2, 2);
imshow(grayImage);
title('Original Image');
