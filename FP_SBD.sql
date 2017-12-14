-- buat table --
CREATE TABLE KARYAWAN
(
	K_KODE CHAR(5) PRIMARY KEY,
	K_NAMA VARCHAR(100),
	K_ALAMAT VARCHAR(150),
	K_BAGIAN VARCHAR(50),
	K_TGLMASUK DATE
);

CREATE TABLE MEMBER_TABLE
(
	M_NO CHAR(5) PRIMARY KEY,
	M_NAMA VARCHAR(100),
	M_TGLLAHIR DATE,
	M_ALAMAT VARCHAR(200),
	M_TELP VARCHAR(15),
	M_JKEL CHAR(1),
	M_TGLDAFTAR DATE
);

CREATE TABLE NOTA
(
	N_NO INTEGER PRIMARY KEY,
	K_KODE CHAR(5),
	M_NO CHAR(5),
	N_TGLMASUK DATE,
	N_TGLJADI DATE,
	N_TGLAMBIL DATE,
	N_STATUS INTEGER,
	KODE_RAK CHAR(3),
	N_UANGMUKA INTEGER
);

CREATE TABLE JENIS_LAYANAN
(
	J_ID CHAR(3) PRIMARY KEY,
	J_NAMA VARCHAR(100),
	J_HARGA INTEGER
);

CREATE TABLE DETIL_NOTA
(
	N_NO INTEGER,
	J_ID CHAR(3),
	DN_JUMLAH INTEGER,
	DN_KET VARCHAR(50),
	DN_DISKON INTEGER,
	DN_KUANTITAS INTEGER
);

CREATE TABLE DETIL_KARYAWAN
(
  N_NO INTEGER,
  K_KODE CHAR(5)
);


ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_N_NO
FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE DETIL_KARYAWAN
ADD CONSTRAINT FK_N_NO_DK
FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_J_ID
FOREIGN KEY (J_ID) REFERENCES JENIS_LAYANAN(J_ID);

ALTER TABLE DETIL_KARYAWAN
ADD CONSTRAINT FK_K_KODE
FOREIGN KEY (K_KODE) REFERENCES KARYAWAN(K_KODE);

ALTER TABLE NOTA
ADD CONSTRAINT FK_M_NO
FOREIGN KEY (M_NO) REFERENCES MEMBER_TABLE(M_NO);

-- insert data karyawan --
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1001', '66 Gulseth Alley', '7/November/2017', 'Chantalle Scola', 'Cuci');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1002', '5946 Anthes Plaza', '24/July/2017', 'Kermy Quested', 'Cuci');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1003', '70 Kim Place', '25/July/2017', 'Zacherie Bembrigg', 'Cuci');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1004', '154 3rd Parkway', '30/October/2017', 'Fern Emblow', 'Cuci');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2001', '7803 Tony Parkway', '19/August/2017', 'Kipper Wickerson', 'Setrika');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2002', '61616 Red Cloud Pass', '31/August/2017', 'Carce Pirouet', 'Setrika');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2003', '53 Namekagon Lane', '14/September/2017', 'Mikey Milborn', 'Setrika');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2004', '55 Sugar Avenue', '15/July/2017', 'Gussie Davern', 'Setrika');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K3001', '168 Hallows Plaza', '16/September/2017', 'Armin Atlee', 'Operator');
insert into KARYAWAN (k_kode, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K3002', '99 Anderson Center', '21/October/2017', 'Donal Limpertz', 'Operator');

--INSERT MEMBER--
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0001', 'Paige Lewty', '6/June/1995', '093 Monument Hill', '085521898458', 'L', '7/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0002', 'Elsie Askam', '24/Sep/1996', '3 Fallview Place', '082137118480', 'P', '21/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0003', 'Agatha Reffe', '9/Dec/1995', '145 Division Trail', '080138218186', 'P', '3/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0004', 'Christie Lamort', '23/Aug/1996', '7 Scoville Plaza', '089469325010', 'L', '3/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0005', 'Rozanna Coogan', '22/Dec/1995', '3265 Ronald Regan Pass', '081062332586', 'P', '17/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0006', 'Aluino McCord', '10/Jan/1998', '861 South Trail', '087094809595', 'P', '15/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0007', 'Far Breadmore', '11/June/1995', '63 Summit Street', '080597214547', 'L', '2/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0008', 'Minor Frissell', '6/Aug/1995', '702 Victoria Circle', '083696878628', 'L', '6/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0009', 'Mikaela Baine', '29/Sep/1997', '1827 Lerdahl Lane', '080708509012', 'P', '13/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0010', 'Robbin Cawdell', '9/Apr/1995', '74942 Prairieview Point', '086648707407', 'L', '17/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0011', 'Currie Jikovsky', '6/June/1998', '9710 Maple Pass', '088022124376', 'L', '11/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0012', 'Jens Piletic', '11/May/1997', '163 Warbler Circle', '087621861750', 'L', '1/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0013', 'Vinnie Medlar', '2/July/1996', '7554 Bunting Center', '082826381964', 'P', '30/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0014', 'Phillipe Rowat', '16/Dec/1997', '44 Delaware Parkway', '081583181019', 'P', '12/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0015', 'Jared Braksper', '21/Dec/1998', '214 Mandrake Terrace', '088232884501', 'P', '31/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0016', 'Karleen Wurst', '19/Dec/1995', '2346 Myrtle Parkway', '086858897859', 'L', '27/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0017', 'Arielle Ducker', '1/May/1994', '8 Stoughton Junction', '080016568864', 'P', '24/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0018', 'Maddi Winship', '5/Apr/1996', '6 Lyons Trail', '084914728295', 'P', '3/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0019', 'Skippy Boldecke', '22/Oct/1994', '4126 Prentice Hill', '084340629861', 'L', '8/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0020', 'Quinlan Sabatini', '10/Jan/1998', '93 Reindahl Pass', '085494025707', 'L', '31/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0021', 'Dedie Ruddy', '5/Nov/1994', '240 Graceland Lane', '084582990337', 'L', '27/Dec/2017');

-- insert data jenis layanan --
insert into JENIS_LAYANAN values ('J01', 'Cuci Kering', '5000');
insert into JENIS_LAYANAN values ('J02', 'Cuci Kering Setrika', '7000');
insert into JENIS_LAYANAN values ('J03', 'Cuci Kering Kilat', '10000');
insert into JENIS_LAYANAN values ('J04', 'Setrika', '3000');
insert into JENIS_LAYANAN values ('J05', 'Bed Cover', '20000');

