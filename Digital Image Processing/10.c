#include <stdio.h>
#include <stdlib.h>

// Define Sobel and Prewitt edge detection masks
int sobelMask[3][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
int prewittMask[3][3] = {{-1, -1, -1}, {0, 0, 0}, {1, 1, 1}};

// Function to perform edge detection using a given mask
void edgeDetection(int image[100][100], int mask[3][3], int rows, int cols) {
    int i, j, gx, gy;
    int result[100][100];

    // Apply the mask for edge detection
    for (i = 1; i < rows - 1; i++) {
        for (j = 1; j < cols - 1; j++) {
            gx = (mask[0][0] * image[i - 1][j - 1]) + (mask[0][1] * image[i - 1][j]) + (mask[0][2] * image[i - 1][j + 1]) +
                 (mask[2][0] * image[i + 1][j - 1]) + (mask[2][1] * image[i + 1][j]) + (mask[2][2] * image[i + 1][j + 1]);

            gy = (mask[0][0] * image[i - 1][j - 1]) + (mask[1][0] * image[i][j - 1]) + (mask[2][0] * image[i + 1][j - 1]) +
                 (mask[0][2] * image[i - 1][j + 1]) + (mask[1][2] * image[i][j + 1]) + (mask[2][2] * image[i + 1][j + 1]);

            result[i][j] = abs(gx) + abs(gy); // Combine gx and gy for edge strength
        }
    }

    // Display or save the resulting edge-detected image
    // (Output format might differ based on your requirements)
}

// Example usage
int main() {
    int image[100][100]; // Assuming a 100x100 image
    int rows = 100;
    int cols = 100;

    // Read or initialize image values

    // Perform edge detection using Sobel mask
    edgeDetection(image, sobelMask, rows, cols);

    // Perform edge detection using Prewitt mask
    edgeDetection(image, prewittMask, rows, cols);

    return 0;
}
