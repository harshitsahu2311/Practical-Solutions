% Reconstruct images using IFFT
reconstructedLP = ifft2(ifftshift(lowPassFiltered));
reconstructedHP = ifft2(ifftshift(highPassFiltered));

% Display reconstructed images
figure;
subplot(1, 2, 1);
imshow(abs(reconstructedLP), []);
title('Reconstructed Image (Low-Pass)');

subplot(1, 2, 2);
imshow(abs(reconstructedHP), []);
title('Reconstructed Image (High-Pass)');
