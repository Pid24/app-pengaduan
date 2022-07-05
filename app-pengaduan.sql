-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2022 pada 07.24
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-pengaduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Save Human', 'save-human', '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(2, 'Chaos', 'chaos', '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(3, 'Demo', 'demo', '2022-06-27 02:55:52', '2022-06-27 02:55:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_15_005850_create_posts_table', 1),
(6, '2022_05_21_063121_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(21, 2, 2, 'Lumba-lumba Mati Terdampar di Pantai Sasak, Jorong Pasa Lamo', 'lumba-lumba-mati-terdampar-di-pantai-sasak-jorong-pasa-lamo', 'post-images/In3guyn4CFtNSjzAq8x0qrek4XI7PJIo1Y2LTFpP.jpg', 'Ditemukan lumba-lumba mati terdampar di Pantai Sasak, Jorong Pasa Lamo, Nagari Sasak, Kecamatan Sasak Ranah Pesisir, Kabupaten Pasaman Barat yang juga viral di instagram info pasbar. Mohon untuk ditin...', '<div>Ditemukan lumba-lumba mati terdampar di Pantai Sasak, Jorong Pasa Lamo, Nagari Sasak, Kecamatan Sasak Ranah Pesisir, Kabupaten Pasaman Barat yang juga viral di instagram info pasbar. Mohon untuk ditindaklanjuti oleh BPSPL Padang.</div>', NULL, '2022-06-27 18:09:35', '2022-06-27 18:09:35'),
(22, 2, 2, 'Adanya ODGJ yang meresahkan masyarakat', 'adanya-odgj-yang-meresahkan-masyarakat', 'post-images/wVBQqjLJ1f3eCtbPeqmDAMWYSmD4PueRMiruEyp5.jpg', 'Keresahan masyarakat akan adanya odgj pelarian dari rumah sakit karanganyar yang mengganggu masyarakat atas nama Muhamad Yasin', '<div>Keresahan masyarakat akan adanya odgj pelarian dari rumah sakit karanganyar yang mengganggu masyarakat atas nama Muhamad Yasin</div>', NULL, '2022-06-27 18:11:58', '2022-06-27 18:11:58'),
(24, 2, 2, 'Proyek Pembuatan Tembok Penahan Tanah Atau Plengsengan Dan Drainase', 'proyek-pembuatan-tembok-penahan-tanah-atau-plengsengan-dan-drainase', 'post-images/5qSJlR4XsKfW1JlWSzjzkZQzKuRr84fvcFs7fWmr.png', 'Proyek pembuatan tembok penahan tanah atau plengsengan dan drainase di desa mulyoagung, kecamatan singgahan, kabupaten tuban dihentikan paksa warga. sebab warga menilai proyek tersebut merugikan.dampa...', '<div>Proyek pembuatan tembok penahan tanah atau plengsengan dan drainase di desa mulyoagung, kecamatan singgahan, kabupaten tuban dihentikan paksa warga. sebab warga menilai proyek tersebut merugikan.dampak proyek akses jalan menuju rumahnya rusak. sementara ia meminta pelaksana proyek untuk membuatkan jalan seperti semula tidak bisa.\"tanah depan rumah diminta untuk pelebaran 1,5 meter sudah saya kasihkan karena untuk kepentingan umum. tanah sudah dikeruk digempur jadi jurang, giliran minta bantuan untuk diplengseng agar tidak longsor pelaksana bilang tidak siap dengan alasan tidak ada anggaran,\" terang multazam dengan geram, jum\'at (11/12/2020).selain akses jalan, tanahnya kini berkurang 1,5 meter dan menjadi tebing yang sangat curam. ia meminta pelaksana proyek untuk memlengseng namun ditolak.dampak kerusakan akses jalan beberapa kepala keluarga pun mengeluh. bahkan, ia sendiri mengaku kendaraan tidak bisa dikeluarkan dari rumah karena akses jalan tinggal separuh.saya mewakili kepentingan warga agar mhon dinas pu kab. tuban jatim agar menanggapi dan membantu penangan untuk segera di selesaikan agar apapun penmbangunan itu benar bermanfaat bagi masyarakat malah bukan merugikan. terimakasih atas tindaklajutnya...</div>', NULL, '2022-06-27 18:15:16', '2022-06-27 18:15:16'),
(25, 1, 3, 'Blok Batu Ringroad Selatan Dekat Gamping Membahayakan', 'blok-batu-ringroad-selatan-dekat-gamping-membahayakan', 'post-images/PLFZDw7IA7lu6ky7DHBBALACafSvldshBxflaAz1.jpg', 'Kepada pemerintah provinsi diy,saya hendak melaporkan berkaitan dengan adanya blok batu di ringroad selatan dekat pertigaan keluar arah pasar gamping/gamping yang membahayakan.blok batu tersebut kelua...', '<div>Kepada pemerintah provinsi diy,<br>saya hendak melaporkan berkaitan dengan adanya blok batu di ringroad selatan dekat pertigaan keluar arah pasar gamping/gamping yang membahayakan.<br><br>blok batu tersebut keluar jalur dan menghalangi jalur motor/jalur lambat, sementara itu warna blok batu menyerupai jalan sehingga bisa tidak terlihat dengan jelas oleh pengendara di jalur motor. saya sendiri sudah coba inisiatif memindahkan namun memang sangat lah berat.<br><br>menurut info dari warga sekitar, blok batu tersebut sudah pernah dikembalikan ke tempat semestinya secara swadaya (karena pernah keluar jalur juga sebelumnya), namun akibat ditabrak mobil, blok batu itu keluar jalur lagi.<br><br>semoga bisa jadi perhatian dan ditindaklanjuti untuk mencegah terjadinya kecelakaan.</div>', NULL, '2022-06-27 18:25:24', '2022-06-27 18:25:24'),
(26, 2, 3, 'Pelaporan Akun Provokasi', 'pelaporan-akun-provokasi', 'post-images/ulDOMjyPVkRDBkC6akkSDtd9FdTYzN00bEQ9WEHf.jpg', 'Saya ingin melaporkan akun penyebar konten negatif yang sudah meresahkan masyarakat dan para netizen , adapun alasan pelaporan, sebagai berikut :1. akun tersebut juga telah melakukan penghinaan terhad...', '<div>Saya ingin melaporkan akun penyebar konten negatif yang sudah meresahkan masyarakat dan para netizen , adapun alasan pelaporan, sebagai berikut :<br>1. akun tersebut juga telah melakukan penghinaan terhadap presiden jokowi atau kepala negara.<br>2. akun-akun tersebut kerap membuat postingan sara dan ujaran kebencian pada suatu organisasi dan instansi maupun perorangan.<br><br>akibat dari tindakan tersebut, pemilik akun dapat dijerat pasal 28 ayat 2 uu ite tentang penyebaran ujaran kebencian dan sara. selain itu juga melanggar pasal 27 ayat 3 uu ite tentang penghinaan terhadap presiden dan pejabat pemerintah.<br>akun tersebut melanggar pasal 27 ayat 3 uu ite \"setiap orang dengan sengaja dan tanpa hak mendistribusikan dan/atau mentransmisikan dan/atau membuat dapat diaksesnya informasi elektronik dan/atau dokumen elektronik yang memiliki muatan penghinaan dan/atau pencemaran nama baik”.<br>selain itu, akun tersebut melanggar pasal 28 ayat (2) undang-undang no.11 tahun 2008 tentang informasi dan transaksi elektronik. “setiap orang dengan sengaja dan tanpa hak menyebarkan informasi yang ditujukkan untuk menimbulkan rasa kebencian atau permusuhan individu dan/atau kelompok masyarakat tertentu berdasarkan atas suku, agama, ras, dan antargolongan (sara)\".<br><br>berikut saya sertakan nama akun beserta link konten yang disebarkan oleh akun tersebut :<br>1.https://www.facebook.com/groups/975660482507388/permalink/7301795923227114/<br>2.https://twitter.com/democrazymedia/status/1521343793424863232<br>3.https://www.instagram.com/p/cdfshgvjat-/</div>', NULL, '2022-06-27 18:26:44', '2022-06-27 18:26:44'),
(27, 2, 3, 'Pt Bayi Kembar Malang Diduga Di Lindungi Oleh Orang Orang', 'pt-bayi-kembar-malang-diduga-di-lindungi-oleh-orang-orang', 'post-images/OXWCo6iez3r59o2WnZbMRNIlVbNrbTsHMTDUIk5W.jpg', 'Toko metro kembali menjual rokok bermerek 86 dengan jumlah yang amat besar, menurut kepala gudang ( pak yosi 0817 763 386 ) seminggu bisa mendatangkan 2 truk dari pt. bayi kembar. barang bukti bisa ka...', '<div>Toko metro kembali menjual rokok bermerek 86 dengan jumlah yang amat besar, menurut kepala gudang ( pak yosi 0817 763 386 ) seminggu bisa mendatangkan 2 truk dari pt. bayi kembar. barang bukti bisa kami peroleh dengan sangat mudah karena rokok dijual langsung di counter toko tanpa rasa bersalah sedikit pun. sebagai info kita bisa melihat dalam waktu 1 jam saja di siang hari misalnya berapa ratus dus ( 1 dus = 800 bungkus ) yang mampu dijual oleh toko ini. https://inilahbanten.co.id/detail/jual-rokok-tanpa-cukai-toko-metro-di-lebak-didemo/ toko ini pernah sebelumnya melakukan hal yang sama melalui merek bum dan l mild yang mana kedua nya juga dari malang. https://kwbcjatengdiy.beacukai.go.id/2020/11/17/lagi-bea-cukai-jateng-diy-kembali-amankan-304-000-batang-rokok-ilegal/ https://mediaindonesia.com/megapolitan/445714/pemkot-bekasi-dan-bea-cukai-sita-11605-bungkus-rokok-ilegal (dari foto yang kami lihat melalui postingan di atas ini adalah gambar rokok yang sama, yaitu merek rokok 86 produksi pt. bayi kembar) pemilik toko adalah pak king king ( 0812 9504 899 )<br><br>https://mentayanet.com/pt-bk-malang-diduga-manipulasi-cukai-rokok-stop-peredaran-rokok-ilegal/<br><br>berikut sudah kami attach juga spreadsheet atas ratusan data penindakan oleh pt. bayi kembar malang, menurut info dirjen pajak pun tidak berani untuk audit pt bayi kembar ini.</div>', NULL, '2022-06-27 18:27:41', '2022-06-27 18:27:41'),
(28, 1, 4, 'Pemerasan Berulang Dengan Dalil Kriminalisasi Ijin Kepada Seluruh Petambak Udang Di Kabupaten Lebak', 'pemerasan-berulang-dengan-dalil-kriminalisasi-ijin-kepada-seluruh-petambak-udang-di-kabupaten-lebak', 'post-images/GkFbT4FJycOI8NH4Vk1LaSSB7sMfz5cCHxgjSmZG.jpg', 'Sejak awal, kami sebagai petambak masuk ke kabupaten lebak dengan komitmen full untuk menempuh semua perijinan yang dibutuhkan. dengan dpmptsp sebagai pemandu kami. kami menempuh segala perijinan yang...', '<div>Sejak awal, kami sebagai petambak masuk ke kabupaten lebak dengan komitmen full untuk menempuh semua perijinan yang dibutuhkan. dengan dpmptsp sebagai pemandu kami. kami menempuh segala perijinan yang di pandukan oleh dpmptsp tersebut. selain perijinan oss juga memiliki check list nya sendiri. telah kami tempuh semua dan semua sudah diterbitkan. tidak perduli dengan segala kerumitan dan tinggi nya biaya menempuh perijinan2 tersebut.<br><br>namun, seiring berjalan nya waktu, kami sering sekali dikriminalisasikan dengan berbagai peraturan di luar persyaratan2 baik dpmptsp maupun oss tersebut. di mana ketika kami tanyakan kepada dinas terkait, dinas2 tersebut juga acap kali menginformasikan tidak perlu. lucunya pihak2 yang mempermasalahkan justru bukan dinas2 terkait. dinas2 terkait nya, yang telah menjalin hubungan dengan kami sejak pengurusan ijin, justru kerap menyatakan kalau ijin2 kami telah lengkap. pihak2 yg mempermasalahkan dimulai dari berbagai ormas, polres, hingga terakhir hari ini dprd + satpol pp. semua nya menggunakan format drama yang sama. mencari kesalahan, tidak perduli seberapa samar ataupun kecil &gt; memperbesarnya &gt; menyegel / menutup usaha &gt; minta \'damai\' dg cara koordinasi / hibah, dan &gt; masalah selesai ketika koordinasi / hibah telah dilakukan...<br>membuat kerja kami menjadi sangat tidak tenang dan tanpa kepastian hukum.. membuat pekerjaan menambak udang yang terkenal sulit ini menjadi berkali lipat lebih sulit. padahal merupakan program pemerintah untuk menaikkan produksi udang nasional sebesar 250% atau sebesar 2 juta ton. melihat kondisi di lapangan, sangat sulit target tersebut bisa terpenuhi.<br><br>kami sebagai pekerja sangat khawatir akan keberlangsungan hidup / keberlanjutan pekerjaan kami. dalam beberapa pertemuan di mana ada duduk pihak investor, ada investor yg sudah mulai capek / menyerah dan mulai ada pembicaraan utk mengemasi investasi mereka di lebak ini.. di mana ketika mereka melakukan itu, puluhan - ratusan kami pekerja tambak akan kehilangan satu - satunya mata pencaharian kami. pihak investor mungkin tidak akan mengalami perubahan hidup yg berarti, tapi untuk kami akan sangat sulit bahkan untuk makan di bulan depan...<br><br>singkat cerita, bahkan untuk peraturan2 lain atau baru yang tidak pernah di sosialisasikan ini, kami menyanggupi semua dan sedang dalam proses untuk mengurus perijinan ini. meskipun angka pengurusan yang diminta pihak konsultan juga wow..<br>namun di tengah pengurusan ini, masih ada saja pihak2 yang terus berusaha memeras. setelah beberapa minggu lalu ada demo dari ormas badak banten, persis mulai kemarin, ada tim dari dprd yang juga datang dengan dalih sidak. namun tiba-tiba juga menyegel dengan bantuan tangan satpol pp kabupaten lebak. meskipun (1) sudah dijelaskan lengkap bahwa kami bukannya tidak mau mengurus ijin terkait (2) kami sudah dan dalam proses mengurus ijin terkait (3) mereka melakukan sidak dengan dinas2 terkait yang tahu persis kami telah menempuh ijin2 terkait. namun mereka tetap melakukan drama yang sama, \"koordinasi atau ditutup.\" tim ini terdiri dari sekitar 16 - 20 orang di mana pihak dprd nya memperkenalkan diri sebagai ketua komisi 1, ketua komisi 2, ketua komisi 3, ketua komisi 4 dprd kabupaten lebak dan satu yang paling sering terdengar adalah bapak musa... semua nya datang ke tambak- tambak lebak melakukan kekerasan, pengancaman, intimidasi, bahkan ada satu tambak yang melaporkan pengrusakan properti.<br><br>mohon dengan sangat bantuannya bagi kami petambak udang di lebak untuk bisa mendapatkan ketenangan bekerja / kepastian kerja. besar harapan kami untuk dapat meneruskan mata pencaharian kami disini..<br><br>terima kasih</div>', NULL, '2022-06-27 18:29:37', '2022-06-27 18:29:37'),
(29, 2, 4, 'Dinas Koperasi Dan Ukm Kab. Kutai Kartanegara Melanggar Peraturan Pemerintah Republik Indonesia Pp Nomor 7 Tahun 2021 Dan Uu No 25 Th 1992', 'dinas-koperasi-dan-ukm-kab-kutai-kartanegara-melanggar-peraturan-pemerintah-republik-indonesia-pp-nomor-7-tahun-2021-dan-uu-no-25-th-1992', 'post-images/e3VXeepYZ842VuBxowyxWuHzWX0xFsszrGTm2pW8.jpg', 'saya masyarakat kutai kartanegara ingin melaporkan terkait keputusan yang dikeluarkan dinas koperasi dan ukm kabupaten kutai kartanegara, terkait berita acara rapat pertanggal 03 februari 2022.dimanap...', '<div>saya masyarakat kutai kartanegara ingin melaporkan terkait keputusan yang dikeluarkan dinas koperasi dan ukm kabupaten kutai kartanegara, terkait berita acara rapat pertanggal 03 februari 2022.<br><br>dimana<br>pertama :<br>kepala dinas koperasi dan ukm kab. kutai kartanegara, telah mengadakan pertemuan terkait permasalahan di koperasi keham lestari desa lebak mantan kec. muara wis kutai kartanegara, beliau mengundang beberapa kepala desa ( desa lebak mantan, desa muara leka, dan desa kayu batu) serta pengawas koperasi keham lestari dan anggota koperasi untuk membahas permasalahan koperasi, tetapi beliau tidak mengundang atau melibatkan pengurus koperasi yang sah di mata hukum, dan sangat jelas ranah pemerintah daerah ( dinas koperasi dan ukm kutai kartanegara) dalam pemberdayaan koperasi tertuang pada pp nomor 7 tahun 2021 pasal 21 ayat (1),(2),(3),(4),(5), dan (6).<br><br>kedua :<br>kepala dinas koperasi dan ukm kab. kutai kartanegara menyetujui untuk melakukan jasa audit laporan keuangan kopbun keham lestari menggunakan jasa akuntan kja ( kantor jasa akuntan) dan menjadikan kap ( kantor akuntan publik) sebagai second opini/pembanding, padahal beliau tahu undang-undang nomor 5 tahun 2011 tentang akuntan publik, yang dimana kja tidak boleh memberikan jasa asuransi atau jasa audit seperti yang dimaksud dalam dalam pasal 3 ayat (1) undang-undang nomor 5 tahun 2011 tentang akuntan publik. jasa asurans ini merupakan jasa yang diberikan akuntan publik atau kap, dan berdasarkan uu no 25 tahun 1992 pasal 40 jelas tertuang koperasi dapat meminta jasa audit kepada akuntan publik.<br><br>ketiga :<br>beliau menyetujui dan menyepakati jumlah anggota kopbun akan disepakati dalam rapat oleh pembina tingkat desa ( desa lebak mantan, desa muara leka, dan desa kayu batu) tokoh pendiri koperasi dan pengawas kopbun keham lestari, dan tidak melibatkan pengurus kopbun keham lestari, padahal bapak tau puncak keputusan tertinggi adalah di keputusan anggota koperasi itu sendiri melalui rat (rapat anggota tahunan) yang dimana semua itu sudah tertulis di art ( anggaran rumah tangga) kopbun keham lestari serta tertuang pada uu no 25 tahun 1992 pasal 30 ayat (2) huruf (b) yang bunyinya \"memutuskan penerimaan dan penolakan anggota baru serta pemberhentian anggota sesuai dengan ketentuan dalam anggaran dasar; . tapi aturan itu beliau langgar dengan menggunakan petemuan tersebut tanpa sepengetahuan pihak pengurus koperasi perkebunan keham lestari.<br><br>ke-empat :<br>bahwa saudara sarpin/ anggota dprd kab. kutai kartanegara bukan merupakan anggota koperasi. yang dimana yang dinyatakan anggota koperasi adalah orang yang melakukan beberapa syarat administrasi ke pengurus berupa melakukan pembayaran simpanan pokok dan wajib, serta menyerahkan beberapa berkas merupakan lahan kepemilikan sesuai yang tertuang di art ( anggaran rumah tangga) kopbun keham lestari, sementara saudara sarpin juga tidak memiliki lahan plasma di wilayah kopbun keham lestari, melainkan sarpin merupakan anggota dprd kab kutai kartanegara kader partai politik pkb kutai kartanegara. tetapi beliau hadir dengan menyatakan bahwa beliau adalah anggota koperasi keham lestari. dan beliau sudah melanggar kode etik dprd kab. kutai kartanegara yang tertuang pada peraturan dprd kabupaten kutai kartanegara<br>nomor 2 tahun 2019 tentang kode etik dewan perwakilan rakyat daerah kabupaten kutai kartanegara.<br><br>seharusnya apabila beliau ingin menyelesaikan permasalahan ini, sebaiknya bijak dan mengambil sikap netral dan menjunjung tinggi uud serta peraturan pemeritah dan memanggil seluruh pihak yang berkepentingan.<br><br>dengan demikian saya berpendapat bahwa telah terjadi penyalahgunaan wewenang serta melanggar uud dan peraturan pemerintah republik indonesia dalam menetapkan berita acara tersebut.<br><br>seyogyanya setiap keputusan yang diambil dilakukan secara musyawarah dan terbuka.<br>agar terhindar dari masalah hukum dan aturan yang telah ditetapkan melalui peraturan pemerintah republik indonesia dan uu dasar republik indonesia.<br><br>salam demokrasi.</div>', NULL, '2022-06-27 18:30:23', '2022-06-27 18:30:23'),
(30, 3, 4, 'Manager Pln Ulp Kuala Tungkal Tidak Melaksanakan Mou Kepada Pelanggan', 'manager-pln-ulp-kuala-tungkal-tidak-melaksanakan-mou-kepada-pelanggan', 'post-images/1NUFEmCkWX3JsVjGNnCzviKjeq3jLhrad3J9H0so.png', 'Kami sebagai masyarakat sering melakukan aksi demo dengan menuntut hak kami sebagai pelanggan yang mersakan suplai daya listrik yg dibawah 220volt dan seringnya terjadi pemadaman yg terhitung bisa men...', '<div>Kami sebagai masyarakat sering melakukan aksi demo dengan menuntut hak kami sebagai pelanggan yang mersakan suplai daya listrik yg dibawah 220volt dan seringnya terjadi pemadaman yg terhitung bisa mencapai 48jam/bulan,serta terjadinya peningkatan pembayaran listrik, di duga ada permainan di dalam kepemimpinan manager ulp kuala tungkal.riski tungguan.<br>disini juga saya sampaikan pernah tertulis di group pencerahan tanjung jabung barat yg anggota 76rb bupati meminta manager pln segera di ganti.<br><br>mohon segera di chrosscheck dan di tindak lanjuti.<br><br>trimaksih</div>', NULL, '2022-06-27 18:31:09', '2022-06-27 18:31:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'dartzleks@gmail.com', NULL, '$2y$10$mJv0OEGVuVNpwSsgQcopUu0U7fsaIbRrfWkv7Orxomv7Cl8NxZDQu', NULL, '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(2, 'Melinda Prastuti', 'raharja.najmudin', 'ana66@gmail.com', '2022-06-27 02:55:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pnh2Z8o7rtqRNLIo79FaTkk8n4rE55vJ5lR8kB39sWPusStsMiFpl2oMHi1z', '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(3, 'Ellis Lailasari S.Farm', 'ardianto.harja', 'adika47@gmail.com', '2022-06-27 02:55:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Y0I9oqoaDWO5gObedzd1iZRtTrIPvN3rq5Esbv2W8RSFjEVQlXIoxwlgacn', '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(4, 'Narji Dabukke', 'pradana.cahya', 'fmandala@gmail.com', '2022-06-27 02:55:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kvIK26u49XAfs4ESHL05lTy6DP7RS7dlEx1ciy1FGX62zxM3wnl4B3scjqkT', '2022-06-27 02:55:52', '2022-06-27 02:55:52'),
(5, 'Owen Knight', 'Owen', 'owen@gmail.com', NULL, '$2y$10$gPYlMOX3LZCHmUwW8gRXtem7YUSGHHLGnXYoRQ6eILfwVfIdcmkUK', NULL, '2022-07-03 21:22:22', '2022-07-03 21:22:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
