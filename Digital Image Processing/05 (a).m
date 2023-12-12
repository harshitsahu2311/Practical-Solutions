% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Display original image
figure;
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

% Calculate histogram using MATLAB function
[histCounts, binLocations] = imhist(originalImage);

% Display histogram
subplot(2, 3, 2);
stem(binLocations, histCounts, 'Marker', 'none');
title('Histogram (Original Image)');

% Perform histogram equalization using MATLAB function
equalizedImage = histeq(originalImage);

% Display equalized image
subplot(2, 3, 3);
imshow(equalizedImage);
title('Equalized Image');

% Calculate histogram of equalized image using MATLAB function
[histCountsEq, binLocationsEq] = imhist(equalizedImage);

% Display equalized histogram
subplot(2, 3, 4);
stem(binLocationsEq, histCountsEq, 'Marker', 'none');
title('Histogram (Equalized Image)');
