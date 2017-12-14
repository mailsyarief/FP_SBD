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
FOREIGN KEY (N_NO) REFERENCES NOTA(N_NO);

ALTER TABLE DETIL_NOTA
ADD CONSTRAINT FK_J_ID
FOREIGN KEY (J_ID) REFERENCES JENIS_LAYANAN(J_ID);

ALTER TABLE NOTA
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

-- insert data member --
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
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0022', 'Adelbert Paydon', '12/Sep/1995', '532 Granby Plaza', '082086047838', 'L', '21/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0023', 'Solomon Massimo', '15/Aug/1995', '73819 Muir Hill', '085068374695', 'P', '29/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0024', 'Loren Calam', '26/Apr/1996', '30070 Kennedy Pass', '084824989114', 'L', '27/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0025', 'Glen Benoit', '16/July/1997', '92379 Fulton Place', '087958614022', 'P', '27/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0026', 'Janean Pendleton', '29/Mar/1995', '07521 Weeping Birch Court', '084378846802', 'P', '16/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0027', 'Morgen Pitkethly', '12/Nov/1994', '2404 Lyons Parkway', '081532568652', 'P', '15/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0028', 'Dermot Kadwallider', '25/Apr/1996', '29 Melby Court', '089789304861', 'P', '21/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0029', 'Alwyn Weatherburn', '12/May/1994', '09 3rd Avenue', '089861110638', 'L', '27/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0030', 'Evangelina McGaughay', '5/May/1995', '12224 Lawn Park', '089243452863', 'P', '24/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0031', 'Bernarr Barg', '20/June/1998', '65 Shoshone Way', '086339327311', 'L', '26/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0032', 'Harmon Roden', '24/Feb/1996', '1500 Russell Avenue', '081336714067', 'P', '13/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0033', 'Guillema Shade', '8/Nov/1994', '53 Vahlen Road', '083448838316', 'P', '25/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0034', 'Chere Mewha', '22/Jan/1997', '99 Summit Center', '086329083853', 'L', '9/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0035', 'Didi Caiger', '3/Mar/1998', '08 Bultman Street', '087018787759', 'L', '23/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0036', 'Caryl Tomlins', '15/Nov/1994', '716 Mcguire Plaza', '084695789846', 'L', '3/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0037', 'Stacy Riddler', '18/July/1996', '37949 Manley Terrace', '089237570024', 'P', '6/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0038', 'Imelda Allbut', '24/Oct/1996', '1 Hoard Circle', '081006383238', 'P', '2/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0039', 'Kellina Ramet', '31/May/1996', '45450 Katie Lane', '084591443216', 'L', '26/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0040', 'Ximenez Cumberbatch', '2/Oct/1998', '386 Union Alley', '087707729809', 'L', '26/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0041', 'Rayshell D''Antonio', '19/Nov/1996', '82951 Logan Way', '084783987538', 'P', '6/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0042', 'Marjory Frankcomb', '22/May/1994', '6 Sauthoff Junction', '089837027954', 'L', '5/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0043', 'Shell Howsin', '12/Dec/1996', '2 Fuller Street', '080951966559', 'P', '3/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0044', 'Yorker Sego', '27/July/1995', '9784 Valley Edge Hill', '085211537086', 'P', '30/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0045', 'Jonas Fillan', '24/July/1997', '9246 Mcguire Circle', '084156860394', 'P', '1/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0046', 'Flint McNutt', '27/Aug/1997', '841 Ludington Plaza', '082892837382', 'L', '6/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0047', 'Ginnifer Shadbolt', '21/Sep/1996', '5165 Manufacturers Terrace', '085823780959', 'P', '25/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0048', 'Birch Harfleet', '11/Feb/1996', '97251 Stone Corner Avenue', '080205084793', 'L', '5/Jan/2018');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0049', 'Abran Richardet', '22/Mar/1998', '9 Spaight Street', '088087817063', 'P', '13/Dec/2017');
insert into MEMBER_TABLE (m_no, m_nama, m_tgllahir, m_alamat, m_telp, m_jkel, m_tgldaftar) values ('M0050', 'Georgeta Clampe', '15/Mar/1995', '03962 Magdeline Junction', '084064892592', 'P', '14/Dec/2017');

-- insert data jenis layanan --
insert into JENIS_LAYANAN values ('J01', 'Cuci Kering', '5000');
insert into JENIS_LAYANAN values ('J02', 'Cuci Kering Setrika', '7000');
insert into JENIS_LAYANAN values ('J03', 'Cuci Kering Kilat', '10000');
insert into JENIS_LAYANAN values ('J04', 'Setrika', '3000');
insert into JENIS_LAYANAN values ('J05', 'Bed Cover', '20000');

-- NAMBAHIN FK K_KODE DI NOTA --
ALTER TABLE NOTA
ADD K_KODE_2 CHAR(5);

ALTER TABLE NOTA
ADD CONSTRAINT FK_K_KODE_2
FOREIGN KEY (K_KODE_2) REFERENCES KARYAWAN(K_KODE)

ALTER TABLE NOTA
ADD K_KODE_3 CHAR(5)


ALTER TABLE NOTA
ADD CONSTRAINT FK_K_KODE_3
FOREIGN KEY (K_KODE_3) REFERENCES KARYAWAN(K_KODE)


-- insert data nota --
insert into NOTA value ('1', 'K1001', 'M0001', '11/Jan/2018', '14/Jan/2018', '15/Jan/2018', '1', 'R01', '5000', '10', 'K2001', 'K3001')
