<img src="img/Picture4.png">
<br>
<br>

<p><img src="img/Picture3.png" width="300">
<p align="justify">&nbsp &nbsp &nbsp Halftoning atau halftoning analog adalah proses yang mensimulasikan nuansa abu-abu dengan memvariasikan ukuran titik-titik hitam kecil yang diatur dalam pola yang teratur. Teknik ini digunakan dalam printer, serta industri penerbitan. Jika Anda memeriksa sebuah foto di koran, Anda akan melihat bahwa gambar itu terdiri dari titik-titik hitam meskipun tampaknya terdiri dari abu-abu. Hal ini dimungkinkan karena integrasi spasial yang dilakukan oleh mata kita. Mata kita memadukan detail halus dan merekam intensitas keseluruhan [1]. Halftoning digital mirip dengan halftoning di mana gambar didekomposisi menjadi kotak sel halftone. Elemen (atau titik yang digunakan halftoning dalam mensimulasikan nuansa abu-abu) dari sebuah gambar disimulasikan dengan mengisi sel halftone yang sesuai. Semakin banyak jumlah titik hitam dalam sel halftone, semakin gelap sel tersebut. Misalnya, pada gambar di bawah ini, sebuah titik kecil yang terletak di tengah disimulasikan dalam halftoning digital dengan mengisi sel halftone tengah; demikian juga, titik ukuran sedang yang terletak di sudut kiri atas disimulasikan dengan mengisi empat sel di sudut kiri atas. Titik betuihusar yang menutupi sebagian besar area pada gambar ketiga disimulasikan dengan mengisi semua sel halftone.

<p align="center"><img src="img/gambar4.png" width="300px">

<p align="justify">&nbsp &nbsp &nbsp Digital halftoning adalah suatu proses untuk mengkonversi citra yang kontinu ke dalam suatu array berupa titik-titik. Jika dilihat oleh sistem visual manusia, pola tersebut akan menciptakan suatu ilusi sehingga citra tersebut tampak bukan seperti citra hitam putih, namun seperti citra abu-abu yang kontinu. Metode yang paling sederhana untuk mengkonversi citra abu-abu menjadi citra biner adalah dengan menggunakan ambang batas, yaitu dengan dua tingkat (satu bit) kuantisasi [3]. Misalkan f(i,j) adalah sebuah citra abu-abu, dan b(i,j) adalah citra yang dihasilkan dari metode ambang batas yang sederhana. Untuk ambang batas T, citra biner dihitung dengan sebagai berikut:

<p><img src="img/gambar1.png" width="200px">

<p align="center"><img src="img/gambar2.png" width="300px">

<p align="center"><img src="img/gambar3.png" width="300px">

<p align="justify">Gambar 1 dan Gambar 2 menunjukkan bahwa citra biner tidak “berbayang” dengan benar. Beberapa artefak di dalam citra tampak sebagai contouring palsu. Hal ini sering terjadi jika kuantisasi dilakukan pada bitrate rendah (dalam hal ini adalah satu bit), sehingga terjadi kesalahan kuantisasi. 

<p align="justify">&nbsp &nbsp &nbsp Halftoning bertujuan untuk memberikan kesan warna citra biner tampak seperti citra abu-abu meskipun hanya menggunakan piksel warna hitam dan putih saja. Meskipun teknik ambang batas(thresholding) yang sederhana ini dapat mengkonversi citra abu-abu menjadi citra biner, namun kualitas citra yang dihasilkan masih kurang baik. Untuk memperbaiki keterbatasan ini, pada tulisan ini akan disimulasikan citra biner yang dikonversi dari citra abu-abu menggunakan metode ordered dithering[4].

<br>



<p><img src="img/Picture2.png" width="300">
<p align="justify">&nbsp &nbsp &nbsp Pola adalah yang paling sederhana dari tiga teknik untuk menghasilkan gambar halftoning digital. Ini menghasilkan gambar yang memiliki resolusi spasial lebih tinggi daripada gambar sumber. Jumlah sel halftone citra keluaran sama dengan jumlah piksel citra sumber. Namun, setiap sel halftone dibagi lagi menjadi kotak 4x4. Setiap nilai piksel input diwakili oleh jumlah kotak terisi yang berbeda dalam sel halftone. Karena kisi 4x4 hanya dapat mewakili 17 tingkat intensitas yang berbeda, gambar sumber harus dikuantisasi. Gambar 4.2 menunjukkan matriks pola rekursif Rylander, yang akan digunakan dalam daftar 4.1, dan contoh operasi pola.

<p align="center"><img src="img/gambar6.png" width="300px">

<p align="center"><i>Matriks pola rekursif Rylander</i>

<p align="center"><img src="img/gambar7.png" width="400px">

<p align="center"><i>Operasi Pola</i>

<p align="justify">&nbsp &nbsp &nbsp Pattern menghasilkan gambar halftoning digital dari gambar input menggunakan teknik pola. Pola program membaca gambar input, mengkuantisasi nilai piksel, dan memetakan setiap piksel ke pola yang sesuai. Gambar yang dihasilkan 16 kali lebih besar dari aslinya. Gambar yang dihasilkan ditulis ke file output sebagai file TIFF. Sebuah kata peringatan: "pola" membutuhkan banyak perhitungan, gambar berukuran kurang dari 100x100 direkomendasikan.

Berikut merupakan contoh menghasilkan gambar halftoning digital dari PAINTER menggunakan teknik pola.

<p align="center"><img src="img/gambar8.png" width="800px">

<br>


<p><img src="img/Picture1.png" width="300">
<p align="justify">&nbsp &nbsp &nbsp Teknik lain yang digunakan untuk menghasilkan gambar halftoning digital adalah dithering. Tidak seperti pola, dithering membuat gambar keluaran dengan jumlah titik yang sama dengan jumlah piksel pada gambar sumber. Dithering dapat dianggap sebagai thresholding gambar sumber dengan matriks gentar. Matriks diletakkan berulang kali di atas gambar sumber. Dimanapun nilai piksel gambar lebih besar dari nilai dalam matriks, titik pada gambar output diisi. Masalah dithering yang terkenal adalah menghasilkan artefak pola yang diperkenalkan oleh matriks ambang batas tetap. Gambar 4.5 menunjukkan contoh operasi dithering.

<p align="center"><img src="img/gambar5.png" width="700px">

<br>
<br>
<br>
<p><img src="img/1.png" width="400">
<p><img src="img/2.png" width="300">
<p align="justify">&nbsp &nbsp &nbspCara mengubah gambar menjadi grayscale dengan methode lightness dengan mencari nilai tertinggi dan terendah dari nilai R G B, kemudian nilai tertinggi dan terendah tadi di jumlahkan lalu di bagi 2.</p>
<b>lightness =  (min(R,G,B)+max(R,G,B))/2 ;</b>

hasil gambarnya seperti di bawah ini :
<p><img src="img/Screenshot1.png" width="700">
<br>

<p><img src="img/3.png" width="300">
<p align="justify">&nbsp &nbsp &nbspCara mengubah gambar menjadi grayscale dengan methode average dengan menjumlahkan seluruh nilai R G B, kemudian di bagi 3, sehingga di peroleh nilai rata-rata dari R G B, maka dari itu di namakan methode average.</p>
<b>average =  (R+G+B)/3 ;</b>

hasil gambarnya seperti di bawah ini :
<p><img src="img/Screenshot2.png" width="700">
<br>

<p><img src="img/4.png" width="300">
<p align="justify">&nbsp &nbsp &nbspCara mengubah gambar menjadi grayscale dengan methode luminosity dengan mengalikan setiap nilai R G B, dengan konstanta tertentu yang sdh di tetapkan nilainya kemudian hasil perkalian setiap nilai R G B tadi di jumlahkan satu sama lain.</p>
<b>luminosity =  ((0.3*R)+(0.59*G)+(0.11*B)) ;</b>

hasil gambarnya seperti di bawah ini :
<p><img src="img/Screenshot3.png" width="700">
<br>
<br>

<h1>Code Program Dari 3 Methode Di Atas :<h1> 
<p><img src="img/code.png" width="500">