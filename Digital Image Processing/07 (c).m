% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Introduce noise to the image (you can select type and parameters)
noisyImage = imnoise(originalImage, 'speckle', 0.04); % Adjust noise density as needed

% Display the noisy image
subplot(1, 2, 1);
imshow(noisyImage);
title('Noisy Image');

% Restore using median filter
restoredImage = medfilt2(noisyImage);

% Display the restored image
subplot(1, 2, 2);
imshow(restoredImage);
title('Restored Image (Median Filter)');
