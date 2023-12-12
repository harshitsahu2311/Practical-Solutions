% Read two images
image1 = imread('image1.jpg'); % Replace 'image1.jpg' with your first image file
image2 = imread('image2.jpg'); % Replace 'image2.jpg' with your second image file

% Display original images
figure;
subplot(2, 3, 1);
imshow(image1);
title('Image 1');

subplot(2, 3, 4);
imshow(image2);
title('Image 2');

% a. Addition of two images
addedImage = imadd(image1, image2);

% Display added image
subplot(2, 3, 2);
imshow(addedImage);
title('Added Image');

% b. Subtract one image from other image
subtractedImage = imsubtract(image1, image2);

% Display subtracted image
subplot(2, 3, 3);
imshow(subtractedImage);
title('Subtracted Image');

% c. Calculate mean value of image
meanValueImage1 = mean(image1(:));
meanValueImage2 = mean(image2(:));

fprintf('Mean value of Image 1: %f\n', meanValueImage1);
fprintf('Mean value of Image 2: %f\n', meanValueImage2);
