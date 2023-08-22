/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 10.1.38-MariaDB : Database - database_ryan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`database_ryan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `database_ryan`;

/*Table structure for table `analisis` */

DROP TABLE IF EXISTS `analisis`;

CREATE TABLE `analisis` (
  `id_analisis` int(100) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(100) NOT NULL,
  `id_soal` int(100) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  PRIMARY KEY (`id_analisis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `analisis` */

insert  into `analisis`(`id_analisis`,`id_ujian`,`id_soal`,`id_siswa`,`jawaban`) values 
(1,12,107,23,'1'),
(2,12,108,23,'1');

/*Table structure for table `kelas_tugas` */

DROP TABLE IF EXISTS `kelas_tugas`;

CREATE TABLE `kelas_tugas` (
  `id_klstugas` int(11) NOT NULL AUTO_INCREMENT,
  `id_tugas` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_klstugas`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `kelas_tugas` */

insert  into `kelas_tugas`(`id_klstugas`,`id_tugas`,`id_kelas`,`id_jurusan`,`aktif`) values 
(9,6,7,2,'Y'),
(8,5,7,1,'Y'),
(10,7,7,2,'Y'),
(11,8,7,2,'Y'),
(12,9,7,4,'Y');

/*Table structure for table `kelas_ujian` */

DROP TABLE IF EXISTS `kelas_ujian`;

CREATE TABLE `kelas_ujian` (
  `id_klsujian` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_klsujian`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `kelas_ujian` */

insert  into `kelas_ujian`(`id_klsujian`,`id_ujian`,`id_kelas`,`id_jurusan`,`aktif`) values 
(23,12,7,2,'Y');

/*Table structure for table `kelas_ujianessay` */

DROP TABLE IF EXISTS `kelas_ujianessay`;

CREATE TABLE `kelas_ujianessay` (
  `id_klsessay` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujianessay` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_klsessay`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kelas_ujianessay` */

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `id_nilai` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_ujian` varchar(100) NOT NULL,
  `acak_soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `sisa_waktu` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `jml_benar` int(5) NOT NULL,
  `jml_kosong` int(5) NOT NULL,
  `jml_salah` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `nilai` */

insert  into `nilai`(`id_nilai`,`id_siswa`,`id_ujian`,`acak_soal`,`jawaban`,`sisa_waktu`,`waktu_selesai`,`jml_benar`,`jml_kosong`,`jml_salah`,`nilai`) values 
(9,23,'12','107,108','1,1','00:01:18','15:49:27',2,0,0,'100');

/*Table structure for table `pesan` */

DROP TABLE IF EXISTS `pesan`;

CREATE TABLE `pesan` (
  `id_pesan` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengirim` varchar(30) NOT NULL,
  `id_penerima` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_pesan` longtext NOT NULL,
  `sudah_dibaca` enum('belum','sudah') NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `pesan` */

/*Table structure for table `soal` */

DROP TABLE IF EXISTS `soal`;

CREATE TABLE `soal` (
  `id_soal` int(5) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(5) NOT NULL,
  `soal` text NOT NULL,
  `pilihan_1` text NOT NULL,
  `pilihan_2` text NOT NULL,
  `pilihan_3` text NOT NULL,
  `pilihan_4` text NOT NULL,
  `pilihan_5` text NOT NULL,
  `kunci` int(2) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

/*Data for the table `soal` */

insert  into `soal`(`id_soal`,`id_ujian`,`soal`,`pilihan_1`,`pilihan_2`,`pilihan_3`,`pilihan_4`,`pilihan_5`,`kunci`,`status`) values 
(106,11,'1+18','18','19','20','21','22',2,'Y'),
(105,11,'1+17','17','18','19','20','21',1,'Y'),
(104,11,'1+16','16','17','18','19','20',1,'Y'),
(103,11,'1+15','15','16','17','18','19',1,'Y'),
(102,11,'1+14','14','15','16','17','18',1,'Y'),
(101,11,'1+13','13','14','15','16','17',2,'Y'),
(100,11,'1+12','12','13','14','15','16',3,'Y'),
(99,11,'1+11','11','12','13','14','15',4,'Y'),
(98,11,'1+10','10','11','12','13','14',5,'Y'),
(97,11,'1+9','9','10','11','12','13',4,'Y'),
(96,11,'1+8','8','9','10','11','12',3,'Y'),
(95,11,'1+7','7','8','9','10','11',2,'Y'),
(94,11,'1+6','6','7','8','9','10',3,'Y'),
(93,11,'1+5','5','6','7','8','9',2,'Y'),
(92,11,'1+4','4','5','6','7','8',2,'Y'),
(91,11,'1+3','3','4','5','6','7',2,'Y'),
(90,11,'1+2','2','3','4','5','6',3,'Y'),
(89,11,'1+1','1','2','3','4','5',2,'Y'),
(107,12,'<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfrac><mn>5</mn><mrow><mn>5</mn><msqrt><mn>5</mn></msqrt></mrow></mfrac><mo>+</mo><mfrac><mn>5</mn><mn>5</mn></mfrac><mo>&#160;</mo><mo>?</mo></math></p>\r\n','sddsdds','dsd','dsds','dsd','dsd',1,'Y'),
(108,12,'<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><msubsup><mi mathvariant=\"normal\">H</mi><mn>2</mn><mrow/></msubsup><mo>&#8710;</mo><mo>&#160;</mo><mi>ffff</mi><mo>?</mo></math></p>\r\n','dcdc','vxcv','xvx','xvx','xvvx',1,'Y');

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`id_admin`,`nama_lengkap`,`username`,`password`,`aktif`,`foto`) values 
(1,'Admin','admin','d033e22ae348aeb5660fc2140aec35850c4da997','Y','TEKNOKRAT.png');

/*Table structure for table `tb_guru` */

DROP TABLE IF EXISTS `tb_guru`;

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` varchar(5) NOT NULL,
  `date_created` date NOT NULL,
  `confirm` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_guru` */

insert  into `tb_guru`(`id_guru`,`nik`,`nama_guru`,`email`,`password`,`foto`,`status`,`date_created`,`confirm`) values 
(2,'19312045','budi, S.Pd.','ryansatria630@gmail.com','87b25e58df764ff1bf594b01c657c204634083a8',NULL,'Y','2022-08-26','Yes');

/*Table structure for table `tb_jenisperangkat` */

DROP TABLE IF EXISTS `tb_jenisperangkat`;

CREATE TABLE `tb_jenisperangkat` (
  `id_jenisperangkat` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_perangkat` varchar(40) NOT NULL,
  PRIMARY KEY (`id_jenisperangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jenisperangkat` */

insert  into `tb_jenisperangkat`(`id_jenisperangkat`,`jenis_perangkat`) values 
(5,'Modul Pembelajaran');

/*Table structure for table `tb_jenistugas` */

DROP TABLE IF EXISTS `tb_jenistugas`;

CREATE TABLE `tb_jenistugas` (
  `id_jenistugas` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_tugas` varchar(60) NOT NULL,
  PRIMARY KEY (`id_jenistugas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jenistugas` */

insert  into `tb_jenistugas`(`id_jenistugas`,`jenis_tugas`) values 
(1,'INDIVIDU'),
(2,'KELOMPOK');

/*Table structure for table `tb_jenisujian` */

DROP TABLE IF EXISTS `tb_jenisujian`;

CREATE TABLE `tb_jenisujian` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_ujian` varchar(60) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jenisujian` */

insert  into `tb_jenisujian`(`id_jenis`,`jenis_ujian`) values 
(1,'UTS'),
(2,'UAS');

/*Table structure for table `tb_master_jurusan` */

DROP TABLE IF EXISTS `tb_master_jurusan`;

CREATE TABLE `tb_master_jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(45) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_master_jurusan` */

insert  into `tb_master_jurusan`(`id_jurusan`,`jurusan`) values 
(2,'IPA'),
(3,'IPS');

/*Table structure for table `tb_master_kelas` */

DROP TABLE IF EXISTS `tb_master_kelas`;

CREATE TABLE `tb_master_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_master_kelas` */

insert  into `tb_master_kelas`(`id_kelas`,`kelas`) values 
(1,'X A'),
(2,'XI A'),
(3,'XII A');

/*Table structure for table `tb_master_mapel` */

DROP TABLE IF EXISTS `tb_master_mapel`;

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(60) NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tb_master_mapel` */

insert  into `tb_master_mapel`(`id_mapel`,`mapel`) values 
(1,'MATEMATIKA'),
(2,'BAHASA INDONESIA'),
(3,'BAHASA INGGRIS'),
(7,'GEOGRAFI');

/*Table structure for table `tb_master_semester` */

DROP TABLE IF EXISTS `tb_master_semester`;

CREATE TABLE `tb_master_semester` (
  `id_semester` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(45) NOT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_master_semester` */

insert  into `tb_master_semester`(`id_semester`,`semester`) values 
(1,'SEMESTER 1'),
(2,'SEMESTER 2');

/*Table structure for table `tb_materi` */

DROP TABLE IF EXISTS `tb_materi`;

CREATE TABLE `tb_materi` (
  `id_materi` int(11) NOT NULL AUTO_INCREMENT,
  `judul_materi` varchar(120) NOT NULL,
  `materi` text NOT NULL,
  `nama_file` varchar(120) NOT NULL,
  `tipe_file` varchar(20) NOT NULL,
  `ukuran_file` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tgl_entry` date NOT NULL,
  `id_roleguru` int(11) NOT NULL,
  `public` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_materi`),
  KEY `id_roleguru` (`id_roleguru`),
  CONSTRAINT `tb_materi_ibfk_1` FOREIGN KEY (`id_roleguru`) REFERENCES `tb_roleguru` (`id_roleguru`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_materi` */

/*Table structure for table `tb_perangkat` */

DROP TABLE IF EXISTS `tb_perangkat`;

CREATE TABLE `tb_perangkat` (
  `id_perangkat` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `nama_file` varchar(120) NOT NULL,
  `tipe_file` varchar(20) NOT NULL,
  `ukuran_file` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `isi_perangkat` text NOT NULL,
  `id_jenisperangkat` int(11) NOT NULL,
  `tgl_entry` date NOT NULL,
  `publish` int(11) NOT NULL,
  `id_roleguru` int(11) NOT NULL,
  PRIMARY KEY (`id_perangkat`),
  KEY `id_roleguru` (`id_roleguru`),
  CONSTRAINT `tb_perangkat_ibfk_1` FOREIGN KEY (`id_roleguru`) REFERENCES `tb_roleguru` (`id_roleguru`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_perangkat` */

/*Table structure for table `tb_roleguru` */

DROP TABLE IF EXISTS `tb_roleguru`;

CREATE TABLE `tb_roleguru` (
  `id_roleguru` int(11) NOT NULL AUTO_INCREMENT,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  PRIMARY KEY (`id_roleguru`),
  KEY `id_guru` (`id_guru`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_mapel` (`id_mapel`),
  KEY `id_semester` (`id_semester`),
  KEY `id_jurusan` (`id_jurusan`),
  CONSTRAINT `tb_roleguru_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `tb_guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_roleguru_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_master_jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_roleguru_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `tb_master_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_roleguru_ibfk_4` FOREIGN KEY (`id_mapel`) REFERENCES `tb_master_mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_roleguru_ibfk_5` FOREIGN KEY (`id_semester`) REFERENCES `tb_master_semester` (`id_semester`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_roleguru` */

insert  into `tb_roleguru`(`id_roleguru`,`id_guru`,`id_kelas`,`id_mapel`,`id_semester`,`id_jurusan`) values 
(2,2,1,1,1,2);

/*Table structure for table `tb_sekolah` */

DROP TABLE IF EXISTS `tb_sekolah`;

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(120) NOT NULL,
  `kepsek` varchar(120) NOT NULL,
  `textlogo` varchar(10) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id_sekolah`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_sekolah` */

insert  into `tb_sekolah`(`id_sekolah`,`nama_sekolah`,`kepsek`,`textlogo`,`logo`,`copyright`) values 
(1,'SMP N 2 Seputih Surabaya','Ryan Satria','SPADA','TEKNOKRAT.png','<b>SMP N 2 Seputih Surabaya</b>');

/*Table structure for table `tb_siswa` */

DROP TABLE IF EXISTS `tb_siswa`;

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(15) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `aktif` varchar(30) NOT NULL,
  `tingkat` varchar(20) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `confirm` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`id_siswa`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_jurusan` (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `tb_siswa` */

insert  into `tb_siswa`(`id_siswa`,`nis`,`nama_siswa`,`jk`,`password`,`status`,`aktif`,`tingkat`,`foto`,`id_kelas`,`id_jurusan`,`confirm`) values 
(3,'2015002','Andi Saputra','P','2513002','off','Y','0','default.png',1,1,'No'),
(5,'2513001','Nama Siswa','L','1d230b15dcb666a4810dcaae9e84bbfe72e6f503','off','Y','0','logo.png',1,1,'Yes'),
(6,'2513004','Afriyanti','P','c3ff3a742aebe66a41d36afb81f56cff78a2070f','off','Y','0','screenshot.png',1,1,'Yes'),
(9,'123','amar','L','40bd001563085fc35165329ea1ff5c5ecbdbbeef','off','Y','0','merapiview.jpg',1,1,'Yes'),
(10,'111','111wer','L','e993215bfdaa515f6ea00fafc1918f549119f993','off','Y','0','favicon.png',5,1,'Yes'),
(13,'311','fg1kokok','L','da39a3ee5e6b4b0d3255bfef95601890afd80709','off','Y','0','userk.png',0,0,'Yes'),
(24,'1010101010','Ryan Satria','L','df85a9d9a0ccc6284cebc9cdff57fcda622add6c','off','Y','0','1644119446-TEKNOKRAT.png',7,4,'Yes'),
(25,'19312045','Ryan Satria','L','df85a9d9a0ccc6284cebc9cdff57fcda622add6c','off','Y','0','1661527813-11.jpg',1,2,'Yes');

/*Table structure for table `tb_tugas` */

DROP TABLE IF EXISTS `tb_tugas`;

CREATE TABLE `tb_tugas` (
  `id_tugas` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenistugas` int(11) NOT NULL,
  `judul_tugas` varchar(100) NOT NULL,
  `isi_tugas` text NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` int(30) NOT NULL,
  `jml_anggota` int(30) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_tugas` */

insert  into `tb_tugas`(`id_tugas`,`id_jenistugas`,`judul_tugas`,`isi_tugas`,`tanggal`,`waktu`,`jml_anggota`,`id_guru`,`id_mapel`,`id_semester`) values 
(7,2,'ini tugas kelompok ya jangan lupa di upload','<p>fffff</p>\r\n','2020-06-13',1,2,10,2,1),
(8,1,'ind','<p>daca</p>\r\n','2020-06-13',1,0,10,2,1);

/*Table structure for table `tugas_siswa` */

DROP TABLE IF EXISTS `tugas_siswa`;

CREATE TABLE `tugas_siswa` (
  `id_tgssiswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_tugas` int(11) NOT NULL,
  `subjek` varchar(120) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kelompok` text NOT NULL,
  `nama_file` varchar(120) NOT NULL,
  `tipe_file` varchar(30) NOT NULL,
  `ukuran_file` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tgl_upload` date NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_tgssiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tugas_siswa` */

insert  into `tugas_siswa`(`id_tgssiswa`,`id_tugas`,`subjek`,`id_siswa`,`kelompok`,`nama_file`,`tipe_file`,`ukuran_file`,`file`,`tgl_upload`,`ket`) values 
(1,1,' Subjek',2,'--','1557065872','xls','1768','../vendor/file/tugasTUGAS-INDIVIDU_1557065872.xls','2019-05-05','Selesai'),
(2,1,' Subjek',1,'--','1557065912','xls','1768','../vendor/file/tugasTUGAS-INDIVIDU_1557065912.xls','2019-05-05','Selesai'),
(3,1,' Subjek',7,'--','1584983104','pdf','108086','../vendor/file/tugasTUGAS-INDIVIDU_1584983104.pdf','2020-03-23','Selesai');

/*Table structure for table `ujian` */

DROP TABLE IF EXISTS `ujian`;

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `jml_soal` int(30) NOT NULL,
  `acak` varchar(100) NOT NULL,
  `tipe` int(1) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `ujian` */

insert  into `ujian`(`id_ujian`,`judul`,`tanggal`,`waktu`,`jml_soal`,`acak`,`tipe`,`id_jenis`,`id_guru`,`id_mapel`,`id_semester`) values 
(11,'Ujian Uji Coba','2020-04-04','00:10:00',20,'acak',0,1,4,3,2),
(12,'coba mtk','2020-06-16','00:02:00',2,'tidak',0,1,10,2,1);

/*Table structure for table `ujian_essay` */

DROP TABLE IF EXISTS `ujian_essay`;

CREATE TABLE `ujian_essay` (
  `id_ujianessay` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_soal` int(30) NOT NULL,
  `soal_essay` text NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  PRIMARY KEY (`id_ujianessay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ujian_essay` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
