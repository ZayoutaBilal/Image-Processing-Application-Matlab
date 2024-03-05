function rotatedImage = rotateImage(inputImage, angle)
    % Convert angle to radians
    angleRad = deg2rad(angle);

    % Get size of the input image
    [rows, cols, ~] = size(inputImage);

    % Calculate the coordinates of the rotated image
    x = 1:cols;
    y = 1:rows;

    [X, Y] = meshgrid(x, y);
    Xr = cos(angleRad) * (X - cols / 2) - sin(angleRad) * (Y - rows / 2) + cols / 2;
    Yr = sin(angleRad) * (X - cols / 2) + cos(angleRad) * (Y - rows / 2) + rows / 2;

    % Interpolate values for the rotated coordinates
    rotatedImage(:,:,1) = interp2(X, Y, double(inputImage(:,:,1)), Xr, Yr, 'linear', 0);
    rotatedImage(:,:,2) = interp2(X, Y, double(inputImage(:,:,2)), Xr, Yr, 'linear', 0);
    rotatedImage(:,:,3) = interp2(X, Y, double(inputImage(:,:,3)), Xr, Yr, 'linear', 0);

    % Convert back to uint8
    rotatedImage = uint8(rotatedImage);
end
