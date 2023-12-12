% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Apply a Gaussian low-pass filter to the image
filteredImage = imgaussfilt(originalImage, 2); % Adjust standard deviation as needed

% Display the original and filtered images
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 2, 2);
imshow(filteredImage);
title('Filtered Image (Gaussian Low-Pass)');
