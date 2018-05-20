clear;
close all;

im = imread('ayaya.jpg');
im_g = rgb2gray(im);
BW1 = edge(im_g,'sobel');
BW2 = edge(im_g,'canny');
figure;
subplot(1,2,1),imshow(BW1);
subplot(1,2,2),imshow(BW2);
