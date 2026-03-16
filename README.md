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

<img width="274" height="374" alt="Image" src="https://github.com/user-attachments/assets/ce4d4f87-c57c-4cca-b764-ab045e2bf183" />

Dalam form register, pengguna harus memasukkan email, password yang minimal terdapat 6 karakter lalu mengonfirmasi lagi password yang sudah dimasukkan, dan yang terakhir yaitu nomor handphone dengan minimal 10 angka dan hanya dapat memasukkan angka saja.

Ketika pengguna ternyata sudah pernah melakukan register sebelumnya, dapat memencet kata "Login" dibawah form agar dapat dialihkan kembali ke halaman login.

---

<img width="307" height="61" alt="Image" src="https://github.com/user-attachments/assets/a71242cf-8636-4f23-8449-0fa6ee0e8c64" />

<img width="348" height="57" alt="Image" src="https://github.com/user-attachments/assets/44e694b2-a90c-4636-aadf-5312db3133bc" />

<img width="268" height="58" alt="Image" src="https://github.com/user-attachments/assets/c1af7d8a-5f30-4b86-8da9-53717a960d3a" />

Ini adalah validasi input pada form registrasi, yang mana aplikasi ini dilengkapi dengan sistem vaidasi input untuk memastikan data yang dimasukkan oleh pengguna sudah sesuai sebelum diproses oelh sistem. Validasi ini membantu mencegah kesalahan input dan meningkatkan keamanan data.

- "Format email tidak valid"

ini berarti pengguna memasukkan email dengan format yang tidak sesuai dengan standar email.

- "Password minimal 6 karakter"

password yang dimasukkan oleh pengguna harus memiliki panjang minimal 6 karakter agar memenuhi standar keamanan dasar.

- "Password tidak sama"

Sistem akan memeriksa apakah password dan konfirmasi password yang dimasukkan sama. Jika tidak sama, maka pengguna akan diminta untuk memasukkan kembali password yang benar.

---

**3. Light Mode dan Dark Mode**

<img width="120" height="70" alt="Image" src="https://github.com/user-attachments/assets/99bf14e5-e728-459f-9ca2-cd3b44339e15" />

<img width="120" height="70" alt="Image" src="https://github.com/user-attachments/assets/d5c08b16-3959-4d03-8201-840ae324974f" />

Aplikasi ini menyediakan fitur penggantian tema tampilan antara Light Mode dan Dark Mode melalui tombol toggle yang tersedia pada halaman utama aplikasi. Fitur ini memungkinkan pengguna untuk menyesuaikan tampilan aplikasi agar lebih nyaman digunakan sesuai dengan preferensi maisng-masing.

Toggle tema ini hanya dapat digunakan setelah pengguna berhasil melakukan login atau registrasi dan mausk ke dalam home page aplikasi. Setelah pengguna berhasil mengakses halaman utama, mereka baru bisamengubah tampilan aplikasi dengan menekan tombol toggle yang tersedia pada bagian atas halaman.

---

**4. Halaman Utama Aplikasi**

( Light Mode )

<img width="1910" height="869" alt="Image" src="https://github.com/user-attachments/assets/772f0656-45f3-4af5-88fb-fa518dd7a3a3" />

( Dark Mode)

<img width="1906" height="863" alt="Image" src="https://github.com/user-attachments/assets/d9453a12-cb2a-4f9e-a725-471410d721d4" />

Gambar diatas adalah halaman yang akan ditampilkan setelah pengguna berhasil melakukan login atau registrasi pada aplikasi. Halaman ini berfungsi sebagai dashboard utama yang menyediakan akses ke fitur-fitur utama dalam aplikasi Intellecta Bimbel.

Pada halaman ini pengguna dapat melihat identitas aplikasi serta dua menu uatama yang ada, yaitu "Input Data Siswa" dan "Rekap Data Siswa".

---

**5. Pemilihan Mata Pelajaran**

( Light Mode )

<img width="1908" height="866" alt="Image" src="https://github.com/user-attachments/assets/eac4e9af-aafa-4d02-baa0-0961b5391824" />

( Dark Mode )

<img width="1909" height="864" alt="Image" src="https://github.com/user-attachments/assets/3487c4a6-9aa5-4eaf-9bd2-6212b0a689eb" />

Fitur ini digunakan untuk memilih mata pelajaran sebelum pengguna menambahkan data siswa ke dalam sistem. Setelah pengguna menekan menu "Input Data Siswa" pada halaman utama, aplikasi akan menampilkan halaman utama pemilihan mata pelajaran ini.

---

**6. Halaman Input / Tambah Data**

( Light Mode )

<img width="1906" height="865" alt="Image" src="https://github.com/user-attachments/assets/de2b7926-912d-44df-98bb-14ee0452714a" />

( Dark Mode )

<img width="1902" height="863" alt="Image" src="https://github.com/user-attachments/assets/7e1df2ce-b46e-483b-bbce-88c3bd636821" />

Fitur ini memungkinkan pengguna untuk menambahkan data siswa baru ke dalam database. Pengguna dapat mengisi berbagai informasi siswa seperti nama, tempat tanggal lahir, alamat, nomor HP, sekolah, jadwal bimbel, serta mata pelajaran yang diikuti. Data yang diinput melalui form akan disimpan ke database Supabase.

---

**7. Halaman Rekap Data (Menampilkan Data)**

( Light Mode )

<img width="1910" height="868" alt="Image" src="https://github.com/user-attachments/assets/3d46dafd-91d2-45f7-9560-df750d767836" />

( Dark Mode )

<img width="1910" height="866" alt="Image" src="https://github.com/user-attachments/assets/3b738272-19dd-4341-b319-e6d101e82bce" />

Fitur ini berfungsi untuk menampilkan seluruh data siswa yang tersimpan di database Supabase. Data tersebut ditampilkan pada halaman rekap data dan disusun sesuai dengan mata pelajaran yang dpipilih, sehingga pengguna dapat melihat daftar siswa yang telah terdaftar pada bimbingan belajar dengan lebih terstruktur.

---

**8. Halaman Student Card (Menampilkan Detail Data Siswa**

( Light Mode )

<img width="1904" height="867" alt="Image" src="https://github.com/user-attachments/assets/6292a436-cef5-4181-b3f1-32fdf44852ed" />

( Dark Mode )

<img width="1904" height="864" alt="Image" src="https://github.com/user-attachments/assets/9227e4c3-f73f-46c1-a31d-216b370790b1" />

Selain menampilkan daftar siswa, aplikasi juga menyediakan halaman detail yang berbentuk Card dimana pengguna dapat melihat informasi lengkap dari setiap siswa. 

---

**9. Halaman Edit Data Siswa**

( Light Mode )

<img width="1905" height="868" alt="Image" src="https://github.com/user-attachments/assets/3725b5e3-8ae4-4926-b1c0-06224e38d0be" />

( Dark Mode )

<img width="1905" height="867" alt="Image" src="https://github.com/user-attachments/assets/e1c5fded-2df2-4f0d-9881-0921f83c571d" />

Fitur Edit Data pada halaman ini dapat digunakan oleh pengguna untuk mengubah atau memperbarui data siswa yang sebelumnya sudah tersimpan di database. Pengguna dapat memilih data siswa mana yang ingin diedit, dengan mengklik tombol yang bergambar pensil disebelah kanan dari nama siswa tersebut.

---

**10. Hapus Data Siswa**

( Light Mode )

<img width="599" height="262" alt="Image" src="https://github.com/user-attachments/assets/0eba074a-30da-4bcf-af50-9f48e1142b95" />

( Dark Mode )

<img width="596" height="263" alt="Image" src="https://github.com/user-attachments/assets/d0352ceb-81c9-4f77-83a7-c0e2ceae86ff" />

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
