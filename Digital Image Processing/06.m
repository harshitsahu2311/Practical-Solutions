% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Display original image
figure;
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

% a. Translation
tx = 50; % Translation along x-axis
ty = 30; % Translation along y-axis
translatedImage = imtranslate(originalImage, [tx, ty]);

% Display translated image
subplot(2, 3, 2);
imshow(translatedImage);
title('Translated Image');

% b. Scaling
scalingFactor = 1.5; % Scale factor
scaledImage = imresize(originalImage, scalingFactor);

% Display scaled image
subplot(2, 3, 3);
imshow(scaledImage);
title('Scaled Image');

% c. Rotation
angle = 30; % Rotation angle in degrees
rotatedImage = imrotate(originalImage, angle);

% Display rotated image
subplot(2, 3, 4);
imshow(rotatedImage);
title('Rotated Image');

% d. Shrinking
shrinkFactor = 0.5; % Shrink factor
shrunkenImage = imresize(originalImage, shrinkFactor);

% Display shrunken image
subplot(2, 3, 5);
imshow(shrunkenImage);
title('Shrunken Image');

% e. Zooming
zoomFactor = 2; % Zoom factor
zoomedImage = imresize(originalImage, zoomFactor);

% Display zoomed image
subplot(2, 3, 6);
imshow(zoomedImage);
title('Zoomed Image');
