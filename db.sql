/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.25-MariaDB : Database - mlc_nbtc_iqbal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mlc_nbtc_iqbal` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mlc_nbtc_iqbal`;

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `dataset` */

insert  into `dataset`(`data_id`,`subject`,`email`,`kategori`) values 
(1,'Kode sekali pakai Anda','Kami menerima permintaan kode sekali pakai yang akan digunakan dengan akun Microsoft Anda.  Kode sekali pakai Anda adalah: 5703839  Jika Anda tidak meminta kode ini, Anda dengan aman dapat mengabaikan email ini. Orang lain mungkin telah salah dalam mengetik alamat email.  Terima kasih, Tim akun Microsoft','ham'),
(2,'PERMOHONAN PENGISIAN TRACER STUDY',' Kepada seluruh alumni AK-Tekstil Solo, kami mengundang Anda untuk mengisi data alumni guna memperbarui informasi terkait keberhasilan dan perjalanan karir setelah meninggalkan institusi pendidikan kita. Data ini sangat penting untuk memperkuat jaringan alumni, dan meningkatkan kegiatan dan manfaat yang dapat diberikan kepada Anda sebagai anggota komunitas alumni.  Mohon Anda meluangkan sedikit waktu untuk mengisi formulir data alumni berikut KLIK DISINI. Dengan data alumni yang terkini, kami akan dapat menyampaikan informasi terkait acara, reuni, peluang kerjasama, program pengembangan diri, dan kesempatan lainnya yang dapat memberikan manfaat bagi Anda.  Kami menghargai partisipasi Anda dalam mengisi data alumni ini. Data yang Anda berikan akan dijaga kerahasiaannya sesuai dengan kebijakan privasi yang berlaku. Jika ada perubahan atau pembaruan informasi di masa mendatang, kami juga mendorong Anda untuk menghubungi kami agar kami dapat memperbarui catatan ini. Terima kasih atas perhatian dan kerjasamanya.    Hormat Kami,      AK-Tekstil Solo','ham'),
(3,'Apply to Be a Kagglex Mentor - We’re Seeking 100 More Mentors!','Hi Muhammad Iqbal17,  The KaggleX BIPOC Mentorship Program is growing quickly and we are looking for more mentors to join! The program is aimed at affecting change towards a more diverse and inclusive data science community.  If you, or someone you know, is passionate about mentoring others and have at least 5 years of experience as an industry practitioner or researcher in the ML/AI space, apply by June 30.','spam'),
(4,'Muhammad, berikut rekap Linimasa terbaru Anda','Kami mengirim email ini karena Anda mengaktifkan Histori Lokasi, yaitu setelan tingkat Akun Google yang membentuk Linimasa, sebuah peta pribadi yang berisi tempat yang pernah Anda kunjungi, rute, dan perjalanan Anda. Data Histori Lokasi Anda juga dapat membantu memberi Anda pengalaman yang dipersonalisasi oleh Google, seperti rekomendasi restoran, berdasarkan tempat yang pernah Anda kunjungi. Anda dapat melihat, mengedit, dan menghapus data ini kapan saja di Linimasa.','ham'),
(5,'DISKON 70%! CUAN MAKSIMAL???? Order Baru Paket TRIPLEXL Hanya 149K/tahun Selamanya! + Free Domain','Halo pelanggan setia DobelHost.com Terimakasih telah setia menggunakan layanan kami,  Cuan Maksimal Order Paket TRIPLEXL Dapatkan promo diskon 70% order paket TRIPLEXL hanya dengan 149K/tahun Selamanya! Tidak sampai disitu aja promonya. Untuk order baru, dapatkan domain gratis secara cuma-cuma!  Promo ini untuk siapapun lohh! Ini adalah kesempatanmu untuk mendapatkan promonya.  Kamu bisa ambil promo ini pada website kami :  https://www.dobelhost.com/hosting/enterprise','spam'),
(6,'1 lowongan remote baru di Surakarta',' Data Analyst / Data Curator - Link Data Ops (Remote- Contractor) Veeva Systems - Indonesia  Lamar dengan mudah Fully remote, flexible working hours, paid in USD. Veeva Link delivers real-time customer intelligence to enable relevant engagement with medical and scientific…','spam'),
(7,'Competition Launch: AI Report','Hi Muhammad Iqbal17,  More than a hundred AI papers are published every day, making it exceedingly hard to keep up with current innovations. The goal of this competition is to tap into the diverse expertise of the Kaggle community to centralize and summarize the rapid advancements in AI from the past two years. The Kaggle community has a breadth and depth of AI experience which extends beyond the reach of any single individual or research group. We aim to share your collective perspective with the broader research community.  In this competition, you’ll write an essay about the state of machine learning in 2023.','ham'),
(8,'Cuma Rp7.000 bisa akses 700+ materi',' ????700+ Materi E-learning Cuma 7.000 ????  Hallo Bestie ????     Meski lagi menjalankan ibadah puasa, semangat buat upgrade skill jangan sampe luntur. Ada yang spesial nih buat kamu     Belajar 700+ materi e-learning selama 6 bulan CUMA 7 RIBU RUPIAH‼️    Bisa belajar banyak mulai dari:  Digital Marketing Data Science & Analysis Microsoft Excel UI/UX Design Product Management Basic English, TOEFL, dan IELTS Website Development Quality Assurance Graphic Design Serta ratusan materi lainnya   Gunakan kode promo : TANGGALTUA     Pembayaran hanya berlaku khusus untuk e-wallet & QRIS ya.      Ayo, checkout sebelum 31 Maret 2023. Semangat terus untuk #RintisKarirImpian','spam'),
(9,'Everything we announced at Config 2023','Our aspiration is this—if you can think it, Figma can help you build it. And we re doing this by bringing design and development closer together.  This week at Config, we announced new ways for Figma to help teams bring their ideas to life. We launched an all-new Dev Mode for developers, variables to streamline design systems, advanced prototyping, and much more!  Plus, the Diagram team is joining us to accelerate our work building AI and ML onto the Figma platform. Read more here from Figma s VP of Design Noah Levin.  Watch CEO Dylan Fields keynote or check out a recap of what we launched below.','spam');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
