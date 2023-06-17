clear all;
close all;
% Load the original image
img = imread('C:\Users\RISHA\OneDrive\Desktop\original.jpg');

% Load the watermark image
watermark = imread('C:\Users\RISHA\OneDrive\Desktop\watermark.jpg');

% Resize the watermark image to match the size of the original image
watermark = imresize(watermark, [size(img, 1), size(img, 2)]);

% Convert the images to double precision
img = im2double(img);
watermark = im2double(watermark);

% Define the strength of the watermark (between 0 and 1)
strength = 0.5;

% Apply watermark embedding
watermarkedImg = img + strength * watermark;

% Display the watermarked image
subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(watermarkedImg);
title('Watermarked Image');

% Save the watermarked image
imwrite(watermarkedImg, 'watermarked_image.jpg');

% Extract the watermark from the watermarked image
extractedWatermark = (watermarkedImg - img) / strength;

% Display the extracted watermark
figure;
imshow(extractedWatermark);
title('Extracted Watermark');

% Save the extracted watermark
imwrite(extractedWatermark, 'extracted_watermark.png');
