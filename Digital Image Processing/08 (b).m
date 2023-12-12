% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Convert image to grayscale
grayImage = rgb2gray(originalImage);

% Apply a Laplacian high-pass filter to the grayscale image
laplacianFiltered = imfilter(double(grayImage), fspecial('laplacian', 0.5), 'replicate');

% Normalize the filtered image for display
normalizedImage = mat2gray(laplacianFiltered);

% Display the original and filtered images
subplot(1, 2, 1);
imshow(grayImage);
title('Grayscale Image');

subplot(1, 2, 2);
imshow(normalizedImage);
title('Filtered Image (Laplacian High-Pass)');
