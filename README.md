# Mini Project 2 - Praktikum Pemrograman Aplikasi Bergerak
Nama  : Nabila Imtiyaz Agustin

NIM   : 2409116011

Kelas : A

Sistem Informasi '2024

---

# <sub>Deskripsi Aplikasi</sub>

**Intellecta Bimbel App** merupakan aplikasi manajemen data siswa untuk lembaga bimbingan belajar, yang berfokus untuk siswa SMA. Aplikasi ini dibuat menggunakan Flutter dan terhubung dengan database Supabase untuk menyimpan serta mengelola data siswa.

Aplikasi ini memungkinkan admin untuk menambahkan, melihat, mengedit, dan menghapus data siswa yang mengikuti bimbingan belajar berdasarkanmata pelajaraan tertentu. Selain itu, aplikasi juga dilengkapi dengan fitur autentikasi pengguna dan pengaturan tema tampilan.

---

# <sub>Fitur Aplikasi</sub>

Beberapa fitur yang tersedia dalam aplikasi ini antara lain:

- Login dan Register menggunakan Supabase Authentication
- Menambahkan data siswa ke database Supabase
- Menampilkan data siswa dari database
- Tampilan Light mode dan Dark mode
- Mengedit data siswa
- Menghapus data siswa
- Menampilkan detail informasi siswa
- Rekap data siswa berdasarkan mata pelajaran
- Validasi input pada form
- Konfirmasi sebelum menghapus data

---

Berikut ini adalah penjelasan dari tiap fitur yang ada dalam aplikasi:

**1. Login**

<img width="1909" height="865" alt="Image" src="https://github.com/user-attachments/assets/92fabae9-5caf-477c-93de-4478d011cdeb" />

Fitur login digunakan untuk proses autentikasi sebelum dapat mengakses aplikasi bagi pengguna yang sudah memiliki akun atau yang sudah melakukan registrasi. 

---

<img width="264" height="264" alt="Image" src="https://github.com/user-attachments/assets/e0ef6215-8b95-4efa-9dbd-aec2716d3a0f" />

Dengan memasukkan email dna password nya dengan benar, pengguna dapat langsung masuk ke halaman berikutnya di aplikasi.

---

<img width="679" height="67" alt="Image" src="https://github.com/user-attachments/assets/bad17283-57ca-45b0-b238-2dfd3e8c2fe3" />

Jika pengguna salah memasukkan email atau password maka akan ada validasi bahwa login gagal dan pengguna dapat memeriksa kembali email dan password nya.

---

**2. Register**

<img width="1907" height="865" alt="Image" src="https://github.com/user-attachments/assets/6f564616-0823-46df-8532-5cb7724c9af6" />

Fitur Register digunakan ketika pengguna belum membuat akun pribadinya untuk masuk dan mengakses fitur lain dalam aplikasi.

---

<img width="264" height="364" alt="Image" src="https://github.com/user-attachments/assets/01af1892-824a-4ae3-b26d-4206ed94ceb1" />

Dalam form register, pengguna harus memasukkan email, password yang minimal terdapat 6 karakter lalu mengonfirmasi lagi password yang sudah dimasukkan, dan yang terakhir yaitu nomor handphone dengan minimal 10 angka dan hanya dapat memasukkan angka saja.

Ketika pengguna ternyata sudah pernah melakukan register sebelumnya, dapat memencet kata "Login" dibawah form agar dapat dialihkan kembali ke halaman login.

---

<img width="299" height="63" alt="Image" src="https://github.com/user-attachments/assets/b00d84ea-eb1a-4c76-a18a-4cc813735a13" />

<img width="346" height="62" alt="Image" src="https://github.com/user-attachments/assets/454490d3-e38d-4bc2-b4a1-1c4cbda442a1" />

<img width="275" height="62" alt="Image" src="https://github.com/user-attachments/assets/26a22e21-548a-4718-96d7-5e710b9f1f88" />

Ini adalah validasi input pada form registrasi, yang mana aplikasi ini dilengkapi dengan sistem vaidasi input untuk memastikan data yang dimasukkan oleh pengguna sudah sesuai sebelum diproses oelh sistem. Validasi ini membantu mencegah kesalahan input dan meningkatkan keamanan data.

- "Format email tidak valid"

ini berarti pengguna memasukkan email dengan format yang tidak sesuai dengan standar email.

- "Password minimal 6 karakter"

password yang dimasukkan oleh pengguna harus memiliki panjang minimal 6 karakter agar memenuhi standar keamanan dasar.

- "Password tidak sama"

Sistem akan memeriksa apakah password dan konfirmasi password yang dimasukkan sama. Jika tidak sama, maka pengguna akan diminta untuk memasukkan kembali password yang benar.

---

**3. Light Mode dan Dark Mode**

<img width="131" height="67" alt="Image" src="https://github.com/user-attachments/assets/4ef76a94-f5c4-416d-a351-6653677994c5" />

<img width="116" height="62" alt="Image" src="https://github.com/user-attachments/assets/7b97a4ea-56dc-4070-964c-3634d65650a5" />

Aplikasi ini menyediakan fitur penggantian tema tampilan antara Light Mode dan Dark Mode melalui tombol toggle yang tersedia pada halaman utama aplikasi. Fitur ini memungkinkan pengguna untuk menyesuaikan tampilan aplikasi agar lebih nyaman digunakan sesuai dengan preferensi maisng-masing.

Toggle tema ini hanya dapat digunakan setelah pengguna berhasil melakukan login atau registrasi dan mausk ke dalam home page aplikasi. Setelah pengguna berhasil mengakses halaman utama, mereka baru bisamengubah tampilan aplikasi dengan menekan tombol toggle yang tersedia pada bagian atas halaman.

---

**4. Halaman Utama Aplikasi**

( Light Mode )

<img width="1908" height="866" alt="Image" src="https://github.com/user-attachments/assets/4d76951f-aafa-4788-8436-b36e88c24eec" />

( Dark Mode)

<img width="1909" height="864" alt="Image" src="https://github.com/user-attachments/assets/fdafe76a-008d-4387-9ba3-a0de6f0b2e4e" />

Gambar diatas adalah halaman yang akan ditampilkan setelah pengguna berhasil melakukan login atau registrasi pada aplikasi. Halaman ini berfungsi sebagai dashboard utama yang menyediakan akses ke fitur-fitur utama dalam aplikasi Intellecta Bimbel.

Pada halaman ini pengguna dapat melihat identitas aplikasi serta dua menu uatama yang ada, yaitu "Input Data Siswa" dan "Rekap Data Siswa".

---

**5. Pemilihan Mata Pelajaran**

( Light Mode )

<img width="1908" height="866" alt="Image" src="https://github.com/user-attachments/assets/dc9e6f07-3863-4e59-80c5-7b49ecb2ab70" />

( Dark Mode )

<img width="1905" height="861" alt="Image" src="https://github.com/user-attachments/assets/06737425-4fb8-4191-9c25-bc5429f0a95b" />

Fitur ini digunakan untuk memilih mata pelajaran sebelum pengguna menambahkan data siswa ke dalam sistem. Setelah pengguna menekan menu "Input Data Siswa" pada halaman utama, aplikasi akan menampilkan halaman utama pemilihan mata pelajaran ini.

---

**6. Halaman Input / Tambah Data**

( Light Mode )

<img width="1906" height="866" alt="Image" src="https://github.com/user-attachments/assets/d7e59daf-2d7d-41b2-9286-9d7ae51fd2d2" />

( Dark Mode )

<img width="1901" height="868" alt="Image" src="https://github.com/user-attachments/assets/2a311312-5eaf-42b0-b32c-1ccfc6a9d3ea" />

Fitur ini memungkinkan pengguna untuk menambahkan data siswa baru ke dalam database. Pengguna dapat mengisi berbagai informasi siswa seperti nama, tempat tanggal lahir, alamat, nomor HP, sekolah, jadwal bimbel, serta mata pelajaran yang diikuti. Data yang diinput melalui form akan disimpan ke database Supabase.

---

**7. Halaman Rekap Data (Menampilkan Data)**

( Light Mode )

<img width="1905" height="865" alt="Image" src="https://github.com/user-attachments/assets/0e41f254-3052-422d-9f61-df21ad280a3e" />

( Dark Mode )

<img width="1905" height="866" alt="Image" src="https://github.com/user-attachments/assets/52eaaa3a-3c88-470d-abda-385d2c3c8456" />

Fitur ini berfungsi untuk menampilkan seluruh data siswa yang tersimpan di database Supabase. Data tersebut ditampilkan pada halaman rekap data dan disusun sesuai dengan mata pelajaran yang dpipilih, sehingga pengguna dapat melihat daftar siswa yang telah terdaftar pada bimbingan belajar dengan lebih terstruktur.

---

**8. Halaman Student Card (Menampilkan Detail Data Siswa**

( Light Mode )

<img width="1906" height="864" alt="Image" src="https://github.com/user-attachments/assets/753aa6e0-af90-4b25-ae91-2dff72bb5573" />

( Dark Mode )

<img width="1902" height="868" alt="Image" src="https://github.com/user-attachments/assets/4837a5a9-0d3e-4d40-95a1-655d1f69b554" />

Selain menampilkan daftar siswa, aplikasi juga menyediakan halaman detail yang berbentuk Card dimana pengguna dapat melihat informasi lengkap dari setiap siswa. 

---

**9. Halaman Edit Data Siswa**

( Light Mode )

<img width="1906" height="866" alt="Image" src="https://github.com/user-attachments/assets/d7e59daf-2d7d-41b2-9286-9d7ae51fd2d2" />

( Dark Mode )

<img width="1901" height="868" alt="Image" src="https://github.com/user-attachments/assets/2a311312-5eaf-42b0-b32c-1ccfc6a9d3ea" />

Fitur Edit Data pada halaman ini dapat digunakan oleh pengguna untuk mengubah atau memperbarui data siswa yang sebelumnya sudah tersimpan di database. Pengguna dapat memilih data siswa mana yang ingin diedit, dengan mengklik tombol yang bergambar pensil disebelah kanan dari nama siswa tersebut.

---

**10. Hapus Data Siswa**

( Light Mode )

<img width="597" height="261" alt="Image" src="https://github.com/user-attachments/assets/bdda9958-d019-4a3d-a777-ccaac4403d0b" />

( Dark Mode )

<img width="594" height="262" alt="Image" src="https://github.com/user-attachments/assets/124e855d-a90d-4646-be3d-70b308fde199" />

Fitur ini digunakan untuk menghapus data siswa dari database Supabase.

Fitur Hapus Data adalah fitur yang sangat krusial dalam pengelolaan data, sehingga aplikasi Intellecta Bimbel menambahkan dialog konfirmasi sebelum data dihapus untuk memastikan bahwa pengguna benar-benar ingin menghapus data tersebut. Tujuannya sangat jelas, yaitu untuk menghindari kesalahan penghapusan data.

---

# <sub>Widget yang Digunakan</sub>

Aplikasi Intellecta Bimbel dibuat dengan menggunakan berbagai widget dari Flutter untuk membuat User Interface. Berikut adalah beberapa widget utama yang digunakan dalam aplikasi beserta penjelasannya:

- **MaterialApp**

MaterialApp widget digunakan sebagai root widget dalam aplikasi Fluuter yang berfungsi untuk mengatur konfiguraasi dasar aplikasi seperti tema, navigasi halaman, dna pengaturan lainnya yang berkaitan dengan tampilan aplikasi.

- **Scafffold**

Scaffold digunakan sebagai struktur dasar dari setiap halaman aplikasi. Widget ini menyediakan komponen utama seperti AppBar, body, serta area untuk menampilkan konten utama pada halaman.

- **AppBar**

AppBar digunakan untuk menampilkan bagian header pada setiap halaman aplikasi. Pada bagian ini biasanya ditampilkan judul halaman serta beberapa tombol aksi seprti tombol untuk mengganti tema aplikasi.

- **Container**

Container adalah widget yang digunakan untuk membungkus widget lain serta mengatur berbagai properti seperti ukuran, padding, margin, warna, dna dekorasi tampilan sehingga layout aplikasi menjadi lebih rapi.

- **Column dan Row**

Column dan Row digunakan untuk mengatur tata letak widget secara vertikal dna horizontal. Kedua widget ini membantu dalam menyusun berbagai komponen UI agar tampil dengan rapi.

- **Stack**

Widget Stack digunakan untuk menumpuk beberapa widget di atas satu sama lain. WIdget ini biasanya digunakan untuk membuat tampilan dengan elemen dekoratif atau layout yang saling bertumpuk.

- **ListView**

ListView digunakan untuk menampilkan daftar data sevara vertikal yang dapat di scroll. Pada aplikasi ini, ListView digunakan untuk menampilkan daftar siswa pada halaman rekap data.

- **GridView**

Widget GridView digunakan untuk menampilkan data dalam bentuk grid atau susunan kotak. pada aplikasi ini GridView digunakan untuk menampilkan siswa berdasarkan kategori mata pelajaran.

- **ListTile**

ListTile digunakan untuk menampilkan item data dalam bentuk baris yang terdiri dari judul, ikon, dan aksi tertentu seperti melihat detail, mengedit, atau menghapus data.


- **TextField dan TextFormField**

Widget ini digunakan untuk menerima input dari pengguna. TextFormFiled juga mendukung validasi form sehingga dapat memastikan data yang dimasukkan sesuai dengan aturan yang ditentukan.

- **DropDownButtonFormField**

Widget ini adalah widget yang digunakan untuk memilih salah satu pilihan dari beberapa opsi yang tersedia, seperti memilih kelas siswa atau jadwal bimbingan belajar.

- **IconButton**

IconButton digunakan untuk membuat tombol dengan ikon tertentu, contohnya seperti yang digunakan dalam aplikasi yaitu ikon edit, delete, view pada daftar data siswa, dan lain lain.

- **CircleAvatar**

CircleAvatar merupakan widget yang digunakan untuk menampilkan ikon atau gambar dalam bentuk lingkaran yang biasanya digunakan sebagai elemen visual pada tampilan profil atau identitas data.

- **AlertDialog**

AlertDialog digunakan untuk menampilkan dialog konfirmasi kepada pengguna , seperti saat pengguna ingin menghapus data dari database.

- **SnackBar**

SnackBar digunakan untuk menampilkan pesan atau notifikasi singkat kepada pengguna setelah melakukan suatu aksi, contohnya seperti saat data berhasil disimpan atau gagal diproses.

- **Navigator**

Navigator widget digunakan untuk mengatur perpindahan antar halaman dalam aplikasi , seperti dari halaman login ke halaman utama atau dari halaman rekap data ke halaman detail siswa (student card).

- **GestureDetector**

GestureDetector digunakan untuk mendeteksi interaksi pengguna seperti sentuhan atau tap pada suatu komponen sehingga dapat menjalankan aksi tertentu.
