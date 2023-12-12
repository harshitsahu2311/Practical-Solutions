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

% a. AND operation between two images
andImage = bitand(image1, image2);

% Display ANDed image
subplot(2, 3, 2);
imshow(andImage);
title('ANDed Image');

% b. OR operation between two images
orImage = bitor(image1, image2);

% Display ORed image
subplot(2, 3, 3);
imshow(orImage);
title('ORed Image');

% c. Calculate intersection of two images
intersectionImage = imabsdiff(image1, image2);

% Display intersection image
subplot(2, 3, 5);
imshow(intersectionImage);
title('Intersection Image');

% d. NOT operation (Negative image)
notImage1 = imcomplement(image1);
notImage2 = imcomplement(image2);

% Display negative images
subplot(2, 3, 6);
imshow(notImage1);
title('Negative Image 1');

figure;
imshow(notImage2);
title('Negative Image 2');
