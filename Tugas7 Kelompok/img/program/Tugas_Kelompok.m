img = imread('raisa.jpg');
gambar = rgb2gray(img);

kernel1 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
kernel2 = [-1 -1 -1; -1 9 -1; -1 -1 -1];
kernel3 = [0 -1 0; -1 5 -1; 0 -1 0];
kernel4 = [1 -2 1; -2 5 -2; 1 -2 1];
kernel5 = [1 -2 1; -2 4 -2; 1 -2 1];
kernel6 = [0 1 0; 1 -4 1; 0 1 0];

output1 = uint8(conv2(double(gambar),kernel1, 'same'));
output2 = uint8(conv2(double(gambar),kernel2, 'same'));
output3 = uint8(conv2(double(gambar),kernel3, 'same'));
output4 = uint8(conv2(double(gambar),kernel4, 'same'));
output5 = uint8(conv2(double(gambar),kernel5, 'same'));
output6 = uint8(conv2(double(gambar),kernel6, 'same'));

figure(1);
subplot(3,3,1); imshow(gambar); title('gambar asli');
subplot(3,3,2); imshow(output1); title('output kernel1');
subplot(3,3,3); imshow(output2); title('output kernel2');
subplot(3,3,4); imshow(output3); title('output kernel3');
subplot(3,3,5); imshow(output4); title('output kernel4');
subplot(3,3,6); imshow(output5); title('output kernel5');
subplot(3,3,7); imshow(output6); title('output kernel6');
