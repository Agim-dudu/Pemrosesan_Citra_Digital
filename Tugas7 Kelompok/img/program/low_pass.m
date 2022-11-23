%load citra
gray_image = imread('gedung.tif');

LPF1 = [1/16 1/8 1/16 ; 1/8 1/4 1/8 ; 1/16 1/8 1/16]; %kernel 1
LPF2 = [1/10 1/10 1/10 ; 1/10 1/5 1/10];              %kernel 2
LPF3 = [1 1 1 ; 1 1 1 ; 1 1 1]/9;                     %kernel 3

output1 = uint8(conv2(double(gray_image),LPF1, 'same'));
output2 = uint8(conv2(double(gray_image),LPF2, 'same'));
output3 = uint8(conv2(double(gray_image),LPF3, 'same'));

figure,imshow(gray_image);
figure,imshow(output1);
figure,imshow(output2);
figure,imshow(output3);
