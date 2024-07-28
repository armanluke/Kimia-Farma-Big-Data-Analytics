# Kimia-Farma-Big-Data-Analytics
## About Company
Kimia Farma adalah perusahaan industri farmasi pertama di Indonesia yang didirikan oleh Pemerintah Hindia Belanda tahun 1817. Nama perusahaan ini pada awalnya adalah NV Chemicalien Handle Rathkamp & Co. Berdasarkan kebijaksanaan nasionalisasi atas eks perusahaan Belanda di masa awal kemerdekaan, pada tahun 1958, Pemerintah Republik Indonesia melakukan peleburan sejumlah perusahaan farmasi menjadi PNF (Perusahaan Negara Farmasi) Bhinneka Kimia Farma. Kemudian pada tanggal 16 Agustus 1971, bentuk badan hukum PNF diubah menjadi Perseroan Terbatas, sehingga nama perusahaan berubah menjadi PT Kimia Farma (Persero).
## Project Portfolio
Sebagai seorang Big Data Analytics Intern di Kimia Farma, ditugaskan untuk membuat projek yaitu mengevaluasi kinerja bisnis Kimia Farma dari tahun 2020 hingga 2023. Proyek ini menggunakan beberapa dataset utama yang telah disediakan, yang mencakup informasi transaksi, inventaris, data kantor cabang, dan data produk. Dataset-dataset tersebut adalah:
* [kf_final_transaction.csv](https://drive.google.com/file/d/1cKsntADfprTVU47Jkbib9FCIbBYDKmLU/view?usp=sharing)
* [kf_inventory.csv](https://drive.google.com/file/d/1nCe_JYjJmAqOK1xn0XVHNXmwq5ILQjM0/view?usp=sharing)
* [kf_kantor_cabang.csv](https://drive.google.com/file/d/1buboqzSgYjo1XxKXtvKdvSFfoF4-lUqx/view?usp=sharing) 
* [kf_product.csv](https://drive.google.com/file/d/1IZe4Z9lynDl2NFoL2P5ufXulJs9Y2s_q/view?usp=sharing)

Tantangan dalam projek ini yaitu mengintegrasikan dan mengolah data dari dataset yang diberikan untuk menghasilkan tabel analisis yang komprehensif di BigQuery dan menghubungkan tabel analisis ini ke Google Looker Studio untuk pembuatan dashboard

### 1. Importing Dataset to BigQuery
   Buat Project dan Dataset di BigQuery: 
   * Di BigQuery, dibuat proyek baru dengan nama "Rakamin_KF_Analytics".  Setelah membuat proyek, dibuat dataset baru dengan nama "kimia_farma" di dalam proyek "Rakamin_KF_Analytics". 
   * Setelah membuat dataset dengan nama "kimia_farma" selanjutnya dilakukan importing dataset-dataset CSV yang diberikan didalan dataset "kimia_farma" yang telah dibuat di BigQuery
### 2. Tabel Analisa
   Buat Tabel Analisa di BigQuery:
   * Dilakukan pembuatan table analisa dengan membuat bigquery syntax berdasarkan hasil agregasi dari dataset yang telah diberikan. Tabel analisa berisi kolom-kolom yang sesuai dengan challenge yang diberikan yaitu transaction_id, date, 
     branch_id, branch_name, kota, provinsi, rating_cabang, customer_name, produk_id, produk_name, actual_price, discount_percentage, persentase_gross_laba, nett_sales, net_profit, dan rating_transaksi
### 3. BigQuery Syntax [Here!](https://github.com/armanluke/Kimia-Farma-Big-Data-Analytics/blob/main/BigQuery%20Syntax.sql)
### 4. Dashboard  Performance Analytics [Here!](https://lookerstudio.google.com/reporting/a7ff61ca-b493-417c-8046-2bccf9c95c87)
### 5. Business Recomendation
   * Jawa Barat mendominasi baik dari sisi jumlah transaksi maupun nett sales. Meskipun tidak sekuat Jawa Barat, provinsi seperti Sumatera Utara, Jawa Tengah, dan Jawa Timur menunjukkan performa penjualan yang kuat, memberikan indikasi   
     bahwa mereka juga merupakan pasar penting untuk Kimia Farma.Dapat dilakukan peningkatan kualitas layanan pelatihan staf, perbaikan fasilitas, dan penambahan layanan pelanggan yang lebih baik. Tinjau feedback pelanggan untuk memahami 
     area yang perlu ditingkatkan atau perlu dilakukan pengembangan cabang mengingat potensi pasar yang cukup tinggi. 
   * Bottom 10 provinsi dengan jumlah transaksi terkecil dan nett_sales yang rendah justru terdapat provinsi-provinsi besar seperti DKI Jakarta, DI Yogyakarta, Sulawesi Selatan, dan Banten padahal provinsi-provinsi tersebut sangat   
     potensial untuk memberikan revenue terbesar. Namun di provinsi tersebut memiliki banyak apotek dan toko obat, sehingga persaingan sangat ketat, perlu dilakukan analisis kompetitor untuk memahami strategi yang berhasil dan kelemahan   
     mereka.
   * Secara umum selama 2020-2023 menunjukkan total penjualan sebesar 672.500 transaksi, nett_sales sebesar 347 Milliar rupiah,  nett_profit sebesar 98,5 milliard rupiah. Melihat nett_profit cenderung stabil dari tahun ke tahun, nett_sales      mengalami fluktuasi yang juga tidak terlalu signifikan dimana terjadi sedikit penurunan pada tahun 2021. 
   * Rata-rata rating cabang 4,4 dan rating Transaksi 4,0 menunjukkan bahwa secara garsi besar pelanggan merasa puas dengan penilaian kinerja cabang dan puas dengan proses transaksi yang dilakukan namun masih ada ruang untuk dilakukan   
     peningkatan seperti memberikan pelatihan pelayanan, perbaikan kualitas produk dan jasa, dan menyederhanakan proses transaksi. Penigkatan kinerja cabang dengan menjaga kebersihan, menciptakan suasana yang nyaman dan  managemen stok 
     produk.
   * Terdapat cabang-cabang rating cabang yang sangat tinggi (antara 4.8 hingga 5) namun rating transaksi untuk semua cabang ini adalah 3.9. Cabang cabang tersebut adalah Kimia Farma - Klinik & Apotek di kota Tarakan, Batam, Pangkalpinang, 
     Bekasi, & Lhokseumawe. Cabang Kimia Farma - Klinik & Apotek di kota Tomohon dan Lubuklinggau. Cabang Kimia Farma - Klinik-Apotek-Laboratorium di kota Palangkaraya, Jakarta, dan Ambon.
   * Masalah dalam Pelayanan Transaksi seperti waktu tunggu yang lama, ketidakjelasan dalam informasi yang diberikan, atau masalah teknis dengan sistem transaksi. Pelayanan Pelanggan kurang memuaskan, misalnya staf yang kurang ramah atau   
     tidak membantu. Perlu dilakukan pelatihan staf untuk memastikan pelayanan yang konsisten dan memuaskan selama transaksi dan Meninjau dan memperbaiki proses transaksi untuk mengurangi waktu tunggu dan meningkatkan efisiensi.
### 6. GitHub Repository [Here!](https://github.com/armanluke/Kimia-Farma-Big-Data-Analytics.git)


