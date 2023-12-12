% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Convert image to grayscale if needed
grayImage = rgb2gray(originalImage);

% Define Sobel and Prewitt edge detection masks
sobelMask = [-1 0 1; -2 0 2; -1 0 1];
prewittMask = [-1 -1 -1; 0 0 0; 1 1 1];

% Perform edge detection using conv2 function and display the results
edgeSobel = abs(conv2(double(grayImage), sobelMask, 'same'));
edgePrewitt = abs(conv2(double(grayImage), prewittMask, 'same'));

% Display the edge-detected images
figure;
subplot(1, 2, 1);
imshow(uint8(edgeSobel));
title('Sobel Edge Detection');

subplot(1, 2, 2);
imshow(uint8(edgePrewitt));
title('Prewitt Edge Detection');
