% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Introduce salt-and-pepper noise to the image
noisyImage = imnoise(originalImage, 'salt & pepper', 0.05); % Adjust noise density as needed

% Display the noisy image
subplot(1, 2, 1);
imshow(noisyImage);
title('Noisy Image (Salt & Pepper)');

% Remove salt-and-pepper noise using median filter
filteredImage = medfilt2(noisyImage);

% Display the filtered image
subplot(1, 2, 2);
imshow(filteredImage);
title('Filtered Image (Salt & Pepper Noise Removed)');
