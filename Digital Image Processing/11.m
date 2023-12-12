% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Convert image to grayscale if needed
grayImage = rgb2gray(originalImage);

% Binarize the image (thresholding)
thresholdValue = 128; % Adjust threshold as needed
binaryImage = grayImage > thresholdValue;

% Define structuring element for morphology
se = strel('disk', 5); % Adjust size and shape as needed (disk, square, etc.)

% Perform erosion and dilation operations
erodedImage = imerode(binaryImage, se);
dilatedImage = imdilate(binaryImage, se);

% Display original, eroded, and dilated images
subplot(1, 3, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 3, 2);
imshow(erodedImage);
title('Eroded Image');

subplot(1, 3, 3);
imshow(dilatedImage);
title('Dilated Image');
