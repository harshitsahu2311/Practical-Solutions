% Read an image
originalImage = imread('your_image.jpg'); % Replace 'your_image.jpg' with your image file

% Display original image
figure;
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

% Calculate histogram without using MATLAB functions
numPixels = numel(originalImage);
histogram = zeros(256, 1);

for intensity = 0:255
    histogram(intensity + 1) = sum(originalImage(:) == intensity) / numPixels;
end

% Display histogram
subplot(2, 3, 2);
bar(histogram);
title('Histogram (Original Image)');

% Perform histogram equalization without using MATLAB functions
cumulative = cumsum(histogram) * 255;
equalizedImage = uint8(cumulative(double(originalImage) + 1));

% Display equalized image
subplot(2, 3, 3);
imshow(equalizedImage);
title('Equalized Image');

% Calculate equalized histogram without using MATLAB functions
equalizedHistogram = zeros(256, 1);

for intensity = 0:255
    equalizedHistogram(intensity + 1) = sum(equalizedImage(:) == intensity) / numPixels;
end

% Display equalized histogram
subplot(2, 3, 4);
bar(equalizedHistogram);
title('Histogram (Equalized Image)');
