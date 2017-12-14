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
	N_UANGMUKA INTEGER,
	N_JUMLAHCUCIAN INTEGER
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
	DN_DISKON INTEGER
);


ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_N_NO
ADD FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_J_ID
ADD FOREIGN KEY (J_ID) REFERENCES JENIS_LAYANAN(J_ID);

ALTER TABLE NOTA
ADD CONSTRAINT FK_K_KODE
ADD FOREIGN KEY (K_KODE) REFERENCES KARYAWAN(K_KODE);

ALTER TABLE NOTA
ADD CONSTRAINT FK_M_NO
ADD FOREIGN KEY (M_NO) REFERENCES MEMBER_TABLE(M_NO);

--ini command