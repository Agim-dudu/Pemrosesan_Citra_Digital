pkg load image;
casper = imread('casper.png');
R = casper(:,:,1);
G = casper(:,:,2);
B = casper(:,:,3);
Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);

figure(1)
subplot(1,2,2); imshow(casper);
subplot(1,2,1); imhist(casper);

figure(2)
subplot(1,2,2); imshow(Red);
subplot(1,2,1); imshist(Red);

figure(3)
subplot(1,2,2); imshow(Green);
subplot(1,2,1); imhist(Green);

figure(4)
subplot(1,2,2); imshow(Blue);
subplot(1,2,1); imshist(Blue);



