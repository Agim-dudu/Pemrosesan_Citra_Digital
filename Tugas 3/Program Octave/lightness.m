pkg load image;
picture = imread('img\gambar.png');
R = picture(:,:,1);
G = picture(:,:,2);
B = picture(:,:,3);

%rumus greyscale
lightnes = (min(R,G,B)+max(R,G,B))/2;
average = (R+G+B)/3;
luminosity = ((0.3*R)+(0.59*G)+(0.11*B));

%menampilkan gambar yang sdh di greyscale dan menampilkan histogram
figure(1)
subplot(1,2,2); imshow(lightnes);
subplot(1,2,1); imhist(lightnes);

figure(2)
subplot(1,2,2); imshow(average);
subplot(1,2,1); imhist(average);

figure(3)
subplot(1,2,2); imshow(luminosity);
subplot(1,2,1); imhist(luminosity);



