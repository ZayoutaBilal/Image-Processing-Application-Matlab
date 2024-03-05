
%Input image
inputImage = app.inputImage;


% Convert the image to grayscale manually
if size(inputImage, 3) == 3
    grayImage = 0.2989 * inputImage(:,:,1) + 0.5870 * inputImage(:,:,2) + 0.1140 * inputImage(:,:,3);
else
    grayImage = inputImage;  % Already a grayscale image
end

% Define Sobel kernels
sobelX = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
sobelY = [-1, -2, -1; 0, 0, 0; 1, 2, 1];

% Apply convolution to find gradients
gradientX = conv2(double(grayImage), sobelX, 'same');
gradientY = conv2(double(grayImage), sobelY, 'same');

% Compute gradient magnitude
gradientMagnitude = sqrt(gradientX.^2 + gradientY.^2);

% Binarize the edges (you can adjust the threshold)
edgeThreshold = 50;
binaryEdges = gradientMagnitude > edgeThreshold;

% Display the original and Sobel edges
figure;
imshow(binaryEdges, 'InitialMagnification', 'fit');
title('Sobel Edges');
