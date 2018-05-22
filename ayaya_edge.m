clear;
close all;

im1 = imread('matigai.png');
im_g1 = rgb2gray(im1);

im2 = imread('matigai1.png');
im_g2 = rgb2gray(im2);

BW1 = edge(im_g1,'canny');
BW2 = edge(im_g2,'canny');

BW3 = BW1 - BW2;
%BW3 = BW1 .* (1 - BW2);

figure;
subplot(1,3,1),imshow(BW1);
subplot(1,3,2),imshow(BW2);
subplot(1,3,3),imshow(BW3);
