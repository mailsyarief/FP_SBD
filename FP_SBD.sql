-- buat table --
CREATE TABLE KARYAWAN
(
	K_KODE CHAR(5) PRIMARY KEY,
  O_ID INTEGER,
	K_NAMA VARCHAR(100),
	K_ALAMAT VARCHAR(150),
	K_BAGIAN VARCHAR(50),
	K_TGLMASUK DATE
);

CREATE TABLE OUTLET
(
  O_ID INTEGER PRIMARY KEY,
  O_ALAMAT VARCHAR(100),
  O_TELP VARCHAR(20)
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
	M_NO CHAR(5),
	N_TGLMASUK DATE,
	N_TGLJADI DATE,
	N_TGLAMBIL DATE,
	KODE_RAK CHAR(3),
	N_UANGMUKA INTEGER,
  N_DISKON INTEGER
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
	DN_KUANTITAS INTEGER,
	DN_KETERANGAN VARCHAR(50)
);

CREATE TABLE DETIL_KARYAWAN
(
  N_NO INTEGER,
  K_KODE CHAR(5)
);

ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_N_NO
FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_J_ID
FOREIGN KEY (J_ID) REFERENCES JENIS_LAYANAN(J_ID);

ALTER TABLE DETIL_KARYAWAN
ADD CONSTRAINT FK_K_KODE
FOREIGN KEY (K_KODE) REFERENCES KARYAWAN(K_KODE);

ALTER TABLE DETIL_KARYAWAN
ADD CONSTRAINT FK_N_NO_DK
FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE KARYAWAN
ADD CONSTRAINT FK_O_ID
FOREIGN KEY (O_ID) REFERENCES OUTLET(O_ID);

ALTER TABLE NOTA
ADD CONSTRAINT FK_M_NO
FOREIGN KEY (M_NO) REFERENCES MEMBER_TABLE(M_NO);

-- insert data outlet --
INSERT INTO OUTLET VALUES ('1', 'Mulyosari Utara Blok D-10, Surabaya', '082142918371');
INSERT INTO OUTLET VALUES ('2', 'Kertajaya Indah XII/12, Surabaya', '082133102938');

-- insert data jenis layanan --
insert into JENIS_LAYANAN values ('J01', 'Cuci Kering', '5000');
insert into JENIS_LAYANAN values ('J02', 'Cuci Kering Setrika', '7000');
insert into JENIS_LAYANAN values ('J03', 'Cuci Kering Kilat', '10000');
insert into JENIS_LAYANAN values ('J04', 'Setrika', '3000');
insert into JENIS_LAYANAN values ('J05', 'Bed Cover', '20000');

-- insert data karyawan --
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1101', '1', '66 Gulseth Alley', '7/MAY/2017', 'Chantalle Scola', 'Cuci');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1102', '1', '5946 Anthes Plaza', '24/MAY/2017', 'Kermy Quested', 'Cuci');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1201', '1', '70 Kim Place', '25/MAY/2017', 'Zacherie Bembrigg', 'Setrika');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1202', '1', '154 3rd Parkway', '17/MAY/2017', 'Fern Emblow', 'Setrika');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K1301', '1', '7803 Tony Parkway', '19/MAY/2017', 'Kipper Wickerson', 'Operator');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2101', '2', '61616 Red Cloud Pass', '26/MAY/2017', 'Carce Pirouet', 'Cuci');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2102', '2', '53 Namekagon Lane', '14/MAY/2017', 'Mikey Milborn', 'Cuci');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2201', '2', '55 Sugar Avenue', '15/MAY/2017', 'Gussie Davern', 'Setrika');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2202', '2', '168 Hallows Plaza', '16/MAY/2017', 'Armin Atlee', 'Setrika');
insert into KARYAWAN (k_kode, o_id, k_alamat, k_tglmasuk, k_nama, k_bagian) values ('K2301', '2', '99 Anderson Center', '21/MAY/2017', 'Donal Limpertz', 'Operator');

--INSERT MEMBER--
insert into MEMBER_TABLE values ('M0001', 'Paige Lewty', '6/June/1995', '093 Monument Hill', '085521898458', 'L', '7/JUN/2017');
insert into MEMBER_TABLE values ('M0002', 'Elsie Askam', '24/Sep/1996', '3 Fallview Place', '082137118480', 'P', '21/JUN/2017');
insert into MEMBER_TABLE values ('M0003', 'Agatha Reffe', '9/Dec/1995', '145 Division Trail', '080138218186', 'P', '3/JUN/2017');
insert into MEMBER_TABLE values ('M0004', 'Christie Lamort', '23/Aug/1996', '7 Scoville Plaza', '089469325010', 'L', '3/JUN/2017');
insert into MEMBER_TABLE values ('M0005', 'Rozanna Coogan', '22/Dec/1995', '3265 Ronald Regan Pass', '081062332586', 'P', '17/JUN/2017');
insert into MEMBER_TABLE values ('M0006', 'Aluino McCord', '10/Jan/1998', '861 South Trail', '087094809595', 'P', '15/JUN/2017');
insert into MEMBER_TABLE values ('M0007', 'Far Breadmore', '11/June/1995', '63 Summit Street', '080597214547', 'L', '2/JUN/2017');
insert into MEMBER_TABLE values ('M0008', 'Minor Frissell', '6/Aug/1995', '702 Victoria Circle', '083696878628', 'L', '6/JUN/2017');
insert into MEMBER_TABLE values ('M0009', 'Mikaela Baine', '29/Sep/1997', '1827 Lerdahl Lane', '080708509012', 'P', '13/JUN/2017');
insert into MEMBER_TABLE values ('M0010', 'Robbin Cawdell', '9/Apr/1995', '74942 Prairieview Point', '086648707407', 'L', '17/JUN/2017');
insert into MEMBER_TABLE values ('M0011', 'Currie Jikovsky', '6/June/1998', '9710 Maple Pass', '088022124376', 'L', '11/JUN/2017');
insert into MEMBER_TABLE values ('M0012', 'Jens Piletic', '11/May/1997', '163 Warbler Circle', '087621861750', 'L', '1/JUN/2017');
insert into MEMBER_TABLE values ('M0013', 'Vinnie Medlar', '2/July/1996', '7554 Bunting Center', '082826381964', 'P', '30/JUN/2017');
insert into MEMBER_TABLE values ('M0014', 'Phillipe Rowat', '16/Dec/1997', '44 Delaware Parkway', '081583181019', 'P', '12/JUN/2017');
insert into MEMBER_TABLE values ('M0015', 'Jared Braksper', '21/Dec/1998', '214 Mandrake Terrace', '088232884501', 'P', '25/JUN/2017');
insert into MEMBER_TABLE values ('M0016', 'Karleen Wurst', '19/Dec/1995', '2346 Myrtle Parkway', '086858897859', 'L', '27/JUN/2017');
insert into MEMBER_TABLE values ('M0017', 'Arielle Ducker', '1/May/1994', '8 Stoughton Junction', '080016568864', 'P', '24/JUN/2017');
insert into MEMBER_TABLE values ('M0018', 'Maddi Winship', '5/Apr/1996', '6 Lyons Trail', '084914728295', 'P', '3/JUN/2017');
insert into MEMBER_TABLE values ('M0019', 'Skippy Boldecke', '22/Oct/1994', '4126 Prentice Hill', '084340629861', 'L', '8/JUN/2017');
insert into MEMBER_TABLE values ('M0020', 'Quinlan Sabatini', '10/Jan/1998', '93 Reindahl Pass', '085494025707', 'L', '28/JUN/2017');

-- BIKIN ISI NOTA --
INSERT INTO NOTA VALUES ('1', 'M0001', '11/JUL/2017', '13/JUL/2017', '13/JUL/2017', 'R01', '5000', '10');
INSERT INTO DETIL_NOTA VALUES ('1', 'J01', '5', NULL);
INSERT INTO DETIL_KARYAWAN VALUES ('1', 'K1101');
INSERT INTO DETIL_KARYAWAN VALUES ('1', 'K1301');

INSERT INTO NOTA VALUES ('2', 'M0001', '18/JUL/2017', '20/JUL/2017', '20/JUL/2017', 'R01', '7000', '10');
INSERT INTO DETIL_NOTA VALUES ('2', 'J02', '5', NULL);
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K1101');
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K1202');
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K1301');

INSERT INTO NOTA VALUES ('3', 'M0002', '13/AUG/2017', '15/AUG/2017', '16/AUG/2017', 'R02', '6000', '0');
INSERT INTO DETIL_NOTA VALUES ('3', 'J02', '8', NULL);
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K2101');
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K2201');
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K2301');

INSERT INTO NOTA VALUES ('4', 'M0003', '23/SEP/2017', '25/SEP/2017', '26/SEP/2017', 'R02', '6000', '0');
INSERT INTO DETIL_NOTA VALUES ('4', 'J02', '6', 'pake air panas');
INSERT INTO DETIL_NOTA VALUES ('4', 'J05', '1', NULL);
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K1102');
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K1201');
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K1301');

-- NOTA --
SELECT N.N_NO AS NO_NOTA, M.M_NO AS NO_MEMBER, M.M_NAMA, M.M_ALAMAT, M.M_TELP, N.N_TGLMASUK, N.N_TGLJADI, N.N_TGLAMBIL,
JL.J_NAMA AS PELAYANAN, DN.DN_KETERANGAN AS KET, DN.DN_KUANTITAS AS KUANTITAS, JL.J_HARGA AS HARGA_SATUAN, (DN.DN_KUANTITAS * JL.J_HARGA) AS JML,
N.N_DISKON AS DISKON, (N.N_DISKON*Z.JUMLAH/100) AS DISKON_RP, Z.JUMLAH, N.N_UANGMUKA AS DP, (Z.JUMLAH - (N.N_DISKON*Z.JUMLAH/100 + N.N_UANGMUKA)) AS SISA,
K.K_NAMA, K.K_BAGIAN

FROM NOTA N, MEMBER_TABLE M, KARYAWAN K, JENIS_LAYANAN JL, DETIL_NOTA DN, DETIL_KARYAWAN DK, OUTLET O,
(SELECT N.N_NO AS N_NO, SUM(JL.J_HARGA * DN.DN_KUANTITAS) AS JUMLAH
FROM MEMBER_TABLE M, NOTA N, DETIL_NOTA DN, JENIS_LAYANAN JL
WHERE M.M_NO = N.M_NO  AND N.N_NO = DN.N_NO AND JL.J_ID = DN.J_ID
GROUP BY N.N_NO) Z

WHERE N.N_NO = DN.N_NO AND N.N_NO = DK.N_NO AND M.M_NO = N.M_NO AND K.K_KODE = DK.K_KODE AND JL.J_ID = DN.J_ID AND O.O_ID = K.O_ID AND N.N_NO = Z.N_NO
ORDER BY N.N_NO;

-- LAPORAN TRANSAKSI LEBIH DARI 50RB (BLOM ADA YG DIATAS 100RB) --
SELECT M.M_NO AS NO_MEMBER, M.M_NAMA, N.N_NO AS NO_NOTA, Z.JUMLAH AS TOTAL_BAYAR
FROM MEMBER_TABLE M, NOTA N,
(SELECT N.N_NO AS N_NO, SUM(JL.J_HARGA * DN.DN_KUANTITAS) AS JUMLAH
FROM MEMBER_TABLE M, NOTA N, DETIL_NOTA DN, JENIS_LAYANAN JL
WHERE M.M_NO = N.M_NO  AND N.N_NO = DN.N_NO AND JL.J_ID = DN.J_ID
GROUP BY N.N_NO) Z
WHERE N.M_NO = M.M_NO AND N.N_NO = Z.N_NO AND Z.JUMLAH>50000;

-- LAPORAN LAYANAN PALING LARIS --
SELECT JL.J_NAMA AS J_ID, COUNT(JL.J_NAMA) AS TOTAL
FROM NOTA N, DETIL_NOTA DN, JENIS_LAYANAN JL
WHERE N.N_NO = DN.N_NO AND DN.J_ID = JL.J_ID
GROUP BY JL.J_NAMA
ORDER BY COUNT(JL.J_NAMA) DESC;

-- LAPORAN PEMASUKAN PER BULAN --
SELECT TO_CHAR(TO_DATE(n.N_TGLAMBIL, 'DD-MON-YY'), 'MM') AS BULAN, SUM(Z.JUMLAH) AS PEMASUKAN
FROM NOTA N,
(SELECT N.N_NO AS N_NO, SUM(JL.J_HARGA * DN.DN_KUANTITAS) AS JUMLAH
FROM MEMBER_TABLE M, NOTA N, DETIL_NOTA DN, JENIS_LAYANAN JL
WHERE M.M_NO = N.M_NO AND N.N_NO = DN.N_NO AND DN.J_ID = JL.J_ID
GROUP BY N.N_NO) Z
WHERE N.N_NO = Z.N_NO
GROUP BY TO_CHAR(TO_DATE(n.N_TGLAMBIL, 'DD-MON-YY'), 'MM')
ORDER BY TO_CHAR(TO_DATE(n.N_TGLAMBIL, 'DD-MON-YY'), 'MM');

