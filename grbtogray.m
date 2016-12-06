image = imread('frame-1.pgm');
I = rgb2gray(image);
imwrite(I,'frame-1-gray.pgm');