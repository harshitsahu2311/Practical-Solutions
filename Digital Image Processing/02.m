% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Display original image
figure;
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

% a. Obtain Negative image
negativeImage = 255 - originalImage; % For grayscale images

% Display negative image
subplot(2, 3, 2);
imshow(negativeImage);
title('Negative Image');

% b. Obtain Flip image
flipImage = flip(originalImage, 2); % Flip horizontally

% Display flipped image
subplot(2, 3, 3);
imshow(flipImage);
title('Flip Image');

% c. Thresholding
thresholdValue = 120; % Define threshold value (adjust as needed)
thresholdedImage = originalImage >= thresholdValue;

% Display thresholded image
subplot(2, 3, 4);
imshow(thresholdedImage);
title('Thresholded Image');

% d. Contrast stretching
minIntensity = min(originalImage(:));
maxIntensity = max(originalImage(:));
stretchedImage = uint8((double(originalImage) - minIntensity) * (255 / (maxIntensity - minIntensity)));

% Display contrast-stretched image
subplot(2, 3, 5);
imshow(stretchedImage);
title('Contrast Stretched Image');

% You can save the processed images if needed
imwrite(negativeImage, 'negative_image.jpg');
imwrite(flipImage, 'flipped_image.jpg');
imwrite(thresholdedImage, 'thresholded_image.jpg');
imwrite(stretchedImage, 'stretched_image.jpg');
