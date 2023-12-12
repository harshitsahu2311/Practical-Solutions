% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Introduce Gaussian noise to the original image
gaussianNoisyImage = imnoise(originalImage, 'gaussian', 0, 0.01); % Adjust noise variance as needed

% Display the noisy image with Gaussian noise
subplot(1, 2, 1);
imshow(gaussianNoisyImage);
title('Noisy Image (Gaussian)');

% Minimize Gaussian noise using a median filter
gaussianFiltered = medfilt2(gaussianNoisyImage);

% Display the Gaussian noise minimized image
subplot(1, 2, 2);
imshow(gaussianFiltered);
title('Filtered Image (Gaussian Noise Minimized)');
