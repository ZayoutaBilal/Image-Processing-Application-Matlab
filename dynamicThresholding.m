% Read the input image (replace 'your_image.jpg' with your image file)
inputImage =app.inputImage;

% Convert the image to grayscale manually
if size(inputImage, 3) == 3
    grayImage = 0.2989 * inputImage(:,:,1) + 0.5870 * inputImage(:,:,2) + 0.1140 * inputImage(:,:,3);
else
    grayImage = inputImage;  % Already a grayscale image
end

% Set the size of the local neighborhood (adjust as needed)
neighborhoodSize = 15;

% Get the image size
[rows, cols] = size(grayImage);

% Create a padded version of the image
paddedImage = zeros(rows + 2 * floor(neighborhoodSize/2), cols + 2 * floor(neighborhoodSize/2));
paddedImage(floor(neighborhoodSize/2)+1:end-floor(neighborhoodSize/2), floor(neighborhoodSize/2)+1:end-floor(neighborhoodSize/2)) = grayImage;

% Initialize the binary image
binaryImage = false(size(grayImage));

% Iterate through each pixel
for i = 1:rows
    for j = 1:cols
        % Extract the local neighborhood
        localRegion = paddedImage(i:i+neighborhoodSize-1, j:j+neighborhoodSize-1);
        
        % Calculate the mean intensity of the local neighborhood
        localMean = mean(localRegion(:));
        
        % Assign binary value based on intensity comparison
        binaryImage(i, j) = grayImage(i, j) > localMean;
    end
end

% Display the original and binarized images
figure;
% Display the binarized image
imshow(binaryImage, 'InitialMagnification', 'fit');

% Add a title
title('Binarized Image');
