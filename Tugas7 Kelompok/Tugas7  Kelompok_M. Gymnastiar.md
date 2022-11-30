<p><img src="img/Picture3.png" >

<p><img src="img/Picture1.png" width="300">

<p align="justify"><i>High Pass Filter</i> (HPF) adalah proses filter yang mengambil citra dengan gradiasi intensitas yang tinggi dan perbedaan intensitas yang rendah akan dikurangi atau dibuang. <i>High Pass Filtering</i> adalah salah satu dari metode penajaman <i>(sharpening).</i> 

<p align="justify"> Tujuan utama dari proses penajaman ini adalah untuk menyoroti detail-detail halus dalam gambar atau untuk meningkatkan detail yang telah dikaburkan baik dalam kesalahan atau efek alami dari proses akuisisi citra tertentu.

### __Kegunaan__

- __High-Pass Filter__ sering disebut juga sebagai filter penajaman tepi __(edge sharpening)__ karena HPF digunakan dalam proses penajaman citra. 
- Operasi penajaman citra bertujuan untuk memperjelas tepi pada objek di dalam citra atau menghilangkan bagian citra yang lembut.
- Karena penajaman citra lebih berpengaruh pada tepi __(edge)__ objek, maka penajaman citra sering disebut juga penajaman tepi __(edge sharpening)__ atau peningkatan kualitas tepi __(edge enhancement)__.

### __Aturan-Aturan Dalam High-Pass Filter__

1. Koefisien penapis boleh negatif, nol, ataupun bernillai positif.
2. Total keseluruhan koefisiennya ialah bernilai 0 ataupun 1.
3. Apabila jumlah koefisiennya berjumlah = 0, maka setiap elemen yang rendah frekuensinya nilainya akan menurun. 
4. Namun, apabila total dari koefisien adalah = 1, maka elemen yang memiliki frekuensi rendah nilainya tetap sama dengan nilai semula.

### __High Pass Filtering Menggunakan Octave__
<br>
<p><img src="img/Screenshot 2022-11-23 090248.png" >

### __Output :__
<br>
<p><img src="img/Screenshot 2022-11-23 090351.png" >

<br>
<br>
<p><img src="img/Picture2.png" width="300">
<p align="justify">Low-pass filtering adalah proses filter yang melewatkan komponen citra dengan nilai intensitas yang rendah dan meredam komponen citra dengan nilai intensitas yang tinggi. Low pass filter akan menyebabkan citra menjadi lebih halus dan lebih blur.</p>

### __Aturan Kernel untuk Low-Pass Filter__

1. Semua koefisien kernel harus positif
2. Jumlah semua koefisien kernel harus sama dengan 1

### __Low Pass Filtering Menggunakan Octave__

<p><img src="img/Screenshot 2022-11-23 093935.png" >


### output :

<p><img src="img/Screenshot 2022-11-23 094140.png" >
<p align="center"><img src="img/Screenshot 2022-11-23 094212.png" width="400">

<br>

### Keterangan :
figure1 adalah gambar asli

figure2 adalah kernel1.

figure3 adalah kernel2.

figure4 adalah kernel3.

- ### __Kode LPF Manual__

<p align="center"><img width="550" src="img/lpfmanual.jpg"></p>

Output :

<p align="center"><img width="650" src="img/hasillpfmanual.jpg"></p>

<br>
<p><img src="img/Picture4.png" width="300">

High Bost Filtering Merupakan salah satu bagian dari operasi yang dapat dilakukan untuk melakukan perbaikan citra.High boost  filtering dapat  membuat  citra  menjadi  lebih  tajam,  dengan  cara  meninggikan nilai-nilai frekuensi yang ada pada citra.
1. High boost filtering : proses filter yang berasal dari citra dengan dasar pemrosesannya menggunakan metode low pass filter dan high pass filter
2. High-Boost Filtering bertujuan untuk mempertahankan(mempertajam) komponen frekuensi tinggi yang mewakili detail gambar tanpa menghilangkan komponen frekuensi rendah. 

#### __Proses High Boost Filtering__

1. Hight Boost Filtering digunakan bilamana citra masukan lebih gelap daripada citra yang di inginkan.
2. High- boost filter menghasilkan citra lebih teran dan lebih alami.

#### __Langkah - Langkah High Boost Filtering__
1. Memblurkan gambar asli
2. Mengurangi versi asli gambar dengan gambar yang buram(perbedaan yang dihasilkan disebut mask)
3. Menambahkan mask ke dalam gambar asli


#### __Cara Menghitung__


Highboost = a Original – Lowpass
          
           = (a – 1) Original + Original – Lowpass

           = (a – 1) Original + Highpass

- Jika a = 1, kita mendapatkan unsharp masking.
- Jika a >1, bagian citra original ditambahkan kembali ke citra hasil high 
pass filter.
Highboost = (a – 1) Original + Highpass

ilustrasi dari High Boost Filtering :
<p align="center">
    <img width="400" src="img/boost filtering.png" >
</p>

<br>
<p><img src="img/Picture5.png" width="300">

<p align="justify"><i>Median Filtering</i> merupakan teknik penyaringan digital nonlinear, sering digunakan untuk menghilangkan noise. Penyaringan median sangat banyak digunakan dalam pemrosesan gambar digital karena mempertahankan tepi sambil menghilangkan <i>noise. Median Filtering</i> dilakukan pada matriks citra dengan cara mencari median dari piksel tetanggaan dengan menggunakan jendela yang menggeser piksel demi piksel.

### __Bentuk Penerapan__

<p align="justify">Penerapan dari <i>median filtering</i> dapat berupa untuk peningkatan kualitas citra gambar yang mengalami penurunan mutu citra, misalnya karena mengandung cacat atau derau <i>(noise)</i>. Contohnya adalah bintik hitam atau putih yang muncul secara acak yang tidak diinginkan di dalam citra. bintik acak ini disebut dengan derau <i>(noise) salt & pepper.</i>

<p align="center"><img src="img/sudomed.png" width="800">

<br>
<p align="center"><img src="img/manualmed.png" width="800">

<br>
<p align="center"><img src="img/hasilmanual.png" width="800">

<br>
<p align="center"><img src="img/fungsimed.png" width="800">

<br>
<p align="center"><img src="img/hasilfungsi.png" width="800">

<br>
<p><img src="img/Picture6.png" width="300">

Tepi (edge) adalah perubahan nilai intensitas derajat keabuan yang mendadak (besar) dalam jarak yang singkat. Tepi memiliki arah, dan arah ini berbeda-beda bergantung pada perubahan intensitas Tepi biasanya terdapat pada batas antara dua daerah yang berbeda intensitas dengan perubahan yang sangat cepat di dalam citra. 

<p align="center"><img width="500" src="img/edge1.png"></p>

Empat macam tepi: 
- tepi curam (step edge), 
- tepi landai (ramp edge), 
- tepi garis (line edge), dan 
- tepi atap (roof edge).

<p align="center"><img width="500" src="img/edge2.png"></p>

### __Tujuan Pendeteksian Tepi__

- Pendeteksian tepi bertujuan untuk meningkatkan penampakan garis batas atau objek di dalam citra.
- Pendeteksian tepi mengekstraksi representasi gambar garis-garis di dalam citra.
- Pendeteksian tepi berguna dalam mengenali objek di dalam citra (image recognition).

<p align="center"><img width="400" src="img/edge3.png"></p>

<br>

### __Operator Gradien__
- Oparator Sobel
- Oparator Roberts
- Oparator Prewitt
- Operator Canny

 
#### __1. Operator Sobel__

<p align="center"><img width="500" src="img/edge4.png"></p>

Di bawah ini contoh lain pendeteksian tepi dengan operator Sobel, dimana hasil konvolusi diambangkan (thresholding) dengan T = 12.

<p align="center"><img width="500" src="img/egde5.png"></p>

#### Operator Sobel Menggunakan Fungsi Octave
- Kode :
<p align="center"><img width="400" src="img/edgesobel.png"></p>

- Output :
<p align="center"><img width="400" src="img/edgesobeloutput.png"></p>
<br>

#### __2. Operator Prewitt__
Persamaan gradien pada operator Prewitt sama seperti operator Sobel, tetapi menggunakan nilai c = 1 :

<p align="center"><img width="400" src="img/edgeprewitt.png"></p>

Kekuatan tepi dihitung dengan rumus :

<p align="center"><img width="250" src="img/edgeprewittrumus.png"></p>

#### Operator Prewitt Menggunakan Fungsi Octave

- Kode :
<p align="center"><img width="400" src="img/edgeprewittkode.png"></p>

- Output :
<p align="center"><img width="400" src="img/edgeprewittoutput.png"></p>
<br>

#### __3. Operator Roberts__

Operator Roberts sering disebut juga operator silang

Gradien Roberts dalam arah-x dan arah-y dihitung dengan rumus :
<p><img width="250" src="img/edgeroberts.png"></p>

Dalam bentuk mask konvolusi :
<p><img width="250" src="img/edgeroberts2.png"></p>

- Contoh berikut ini memeperlihatkan pendeteksian tepi dengan operator Roberts :
<p align="center"><img width="400" src="img/edgeroberts3.png"></p>

#### Operator Roberts Menggunakan Fungsi Octave
- Kode :
<p align="center"><img width="400" src="img/edgerobertskode.png"></p>
<br>

- Output :
<p align="center"><img width="400" src="img/edgerobertsoutput.png"></p>

#### __4. Operator Canny__

Operator deteksi tepi yang terkenal karena dapat menghasilkan tepi dengan ketebalan 1 pixel

<p align="center"><img width="400" src="img/edgecanny.png"></p>

Langkah-langkah operator Canny:
- Haluskan citra I dengan penapis Gaussian: G * I
- Hitung gradien setiap pixel dengan salah satu dari 4 operator sebelumnya (misalnya operator Sobel)
- Jika nilai mutlak gradien suatu pixel melebihi nilai ambang T, maka pixel termasuk pixel tepi.
<br>

### __Kode Edge Detection Manual__
Kode :
<p align="center"><img width="600" src="img/kode edge manual.png"></p>

Citra Asli :
<p align="center"><img width="400" src="img/kode edge citra asli.png"></p>

Hasil :
<p align="center"><img width="400" src="img/kode edge hasil.png"></p>


#### __Perbedaan Hasil Keempat Operator__

<p align="center"><img width="400" src="img/alloperator.png"></p>
