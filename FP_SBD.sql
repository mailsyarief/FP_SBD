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

-- DROP K_KODE, N_STATUS DI NOTA DAN DN_JUMLAH DI DETIL_NOTA  --
ALTER TABLE NOTA
DROP COLUMN K_KODE;

ALTER TABLE NOTA
DROP COLUMN N_STATUS;

ALTER TABLE DETIL_NOTA
DROP COLUMN DN_JUMLAH;

-- BIKIN NOTA --
INSERT INTO NOTA VALUES ('1', 'M0001', '8/JAN/2018', '10/JAN/2018', '10/JAN/2018', 'R01', '8000');
INSERT INTO DETIL_NOTA VALUES ('1', 'J02', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('1', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('1', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('1', 'K3001');

INSERT INTO NOTA VALUES ('2', 'M0001', '17/JAN/2018', '19/JAN/2018', '19/JAN/2018', 'R01', '5000');
INSERT INTO DETIL_NOTA VALUES ('2', 'J05', 'jangan pake pemutih', '0', '1');
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('2', 'K3001');

INSERT INTO NOTA VALUES ('3', 'M0002', '3/MAY/2018', '5/MAY/2018', '5/MAY/2018', 'R01', '5000');
INSERT INTO DETIL_NOTA VALUES ('3', 'J03', NULL, '10', '8');
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('3', 'K3002');

INSERT INTO NOTA VALUES ('4', 'M0003', '21/FEB/2018', '23/FEB/2018', '23/FEB/2018', 'R01', '10000');
INSERT INTO DETIL_NOTA VALUES ('4', 'J04', NULL, '10', '6');
INSERT INTO DETIL_NOTA VALUES ('4', 'J01', 'pake pemutih, bajunya putih semua', '0', '3');
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('4', 'K3001');

INSERT INTO NOTA VALUES ('5', 'M0004', '10/JAN/2018', '12/JAN/2018', '13/JAN/2018', 'R02', '7000');
INSERT INTO DETIL_NOTA VALUES ('5', 'J04', NULL, '0', '4');
INSERT INTO DETIL_KARYAWAN VALUES ('5', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('5', 'K3002');

INSERT INTO NOTA VALUES ('6', 'M0005', '18/JAN/2018', '20/JAN/2018', '21/JAN/2018', 'R01', '5000');
INSERT INTO DETIL_NOTA VALUES ('6', 'J03', NULL, '10', '7');
INSERT INTO DETIL_KARYAWAN VALUES ('6', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('6', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('6', 'K3002');

-- gua tambahin ya tam --
INSERT INTO NOTA VALUES ('7', 'M0007', '19/JAN/2018', '21/JAN/2018', '22/JAN/2018', 'R02', '5000');
INSERT INTO DETIL_NOTA VALUES ('7', 'J03', NULL, '10', '9');
INSERT INTO DETIL_KARYAWAN VALUES ('7', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('7', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('7', 'K3002');

INSERT INTO NOTA VALUES ('8', 'M0007', '1/FEB/2018', '10/FEB/2018', '11/FEB/2018', 'R02', '10000');
INSERT INTO DETIL_NOTA VALUES ('8', 'J05', 'Pake pelembut dan gaosah di setrika', '0', '4');
INSERT INTO DETIL_KARYAWAN VALUES ('8', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('8', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('8', 'K3001');

INSERT INTO NOTA VALUES ('9', 'M0007', '25/FEB/2018', '28/FEB/2018', '28/FEB/2018', 'R01', '10000');
INSERT INTO DETIL_NOTA VALUES ('9', 'J02', 'pakai air panas', '10', '15');
INSERT INTO DETIL_KARYAWAN VALUES ('9', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('9', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('9', 'K3001');

INSERT INTO NOTA VALUES ('10', 'M0007', '24/FEB/2018', '27/FEB/2018', '28/FEB/2018', 'R01', '10000');
INSERT INTO DETIL_NOTA VALUES ('10', 'J02', 'pakai air panas', '10', '15');
INSERT INTO DETIL_KARYAWAN VALUES ('10', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('10', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('10', 'K3001');

INSERT INTO NOTA VALUES ('11', 'M0007', '1/MAR/2018', '2/MAR/2018', '3/MAR/2018', 'R01', '5000');
INSERT INTO DETIL_NOTA VALUES ('11', 'J03', 'jangan pake pemutih', '20', '20');
INSERT INTO DETIL_KARYAWAN VALUES ('11', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('11', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('11', 'K3001');

INSERT INTO NOTA VALUES ('12', 'M0008', '3/MAR/2018', '5/MAR/2018', '6/MAR/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('12', 'J04', NULL, '0', '4');
INSERT INTO DETIL_KARYAWAN VALUES ('12', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('12', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('12', 'K3002');

INSERT INTO NOTA VALUES ('13', 'M0008', '3/MAR/2018', '5/MAR/2018', '6/MAR/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('13', 'J04', NULL, '0', '4');
INSERT INTO DETIL_KARYAWAN VALUES ('13', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('13', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('13', 'K3002');

INSERT INTO NOTA VALUES ('14', 'M0008', '1/APR/2018', '3/APR/2018', '4/APR/2018', 'R01', '0');
INSERT INTO DETIL_NOTA VALUES ('14', 'J05', NULL, '0', '2');
INSERT INTO DETIL_KARYAWAN VALUES ('14', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('14', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('14', 'K3002');

INSERT INTO NOTA VALUES ('15', 'M0008', '5/APR/2018', '6/APR/2018', '6/APR/2018', 'R01', '0');
INSERT INTO DETIL_NOTA VALUES ('15', 'J03', NULL, '20', '20');
INSERT INTO DETIL_KARYAWAN VALUES ('15', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('15', 'K2004');
INSERT INTO DETIL_KARYAWAN VALUES ('15', 'K3002');

INSERT INTO NOTA VALUES ('16', 'M0008', '9/APR/2018', '11/APR/2018', '11/APR/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('16', 'J03', NULL, '10', '10');
INSERT INTO DETIL_KARYAWAN VALUES ('16', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('16', 'K2004');
INSERT INTO DETIL_KARYAWAN VALUES ('16', 'K3002');

INSERT INTO NOTA VALUES ('17', 'M0008', '11/APR/2018', '14/APR/2018', '15/APR/2018', 'R01', '0');
INSERT INTO DETIL_NOTA VALUES ('17', 'J01', NULL, '10', '10');
INSERT INTO DETIL_KARYAWAN VALUES ('17', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('17', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('17', 'K3002');

INSERT INTO NOTA VALUES ('18', 'M0008', '2/MAY/2018', '12/MAY/2018', '13/MAY/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('18', 'J05', NULL, '0', '15');
INSERT INTO DETIL_KARYAWAN VALUES ('18', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('18', 'K2004');
INSERT INTO DETIL_KARYAWAN VALUES ('18', 'K3001');

INSERT INTO NOTA VALUES ('19', 'M0009', '1/JUN/2018', '4/JUN/2018', '5/JUN/2018', 'R01', '0');
INSERT INTO DETIL_NOTA VALUES ('19', 'J02', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('19', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('19', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('19', 'K3001');

INSERT INTO NOTA VALUES ('20', 'M0009', '4/JUN/2018', '7/JUN/2018', '8/JUN/2018', 'R01', '0');
INSERT INTO DETIL_NOTA VALUES ('20', 'J02', NULL, '10', '10');
INSERT INTO DETIL_KARYAWAN VALUES ('20', 'K1002');
INSERT INTO DETIL_KARYAWAN VALUES ('20', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('20', 'K3001');

INSERT INTO NOTA VALUES ('21', 'M0010', '2/JUL/2018', '8/JUL/2018', '9/JUL/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('21', 'J05', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('21', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('21', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('21', 'K3001');

INSERT INTO NOTA VALUES ('22', 'M0010', '2/JUN/2018', '8/JUN/2018', '9/JUN/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('22', 'J05', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('22', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('22', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('22', 'K3002');

INSERT INTO NOTA VALUES ('23', 'M0010', '2/MAY/2018', '8/MAY/2018', '9/MAY/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('23', 'J05', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('23', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('23', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('23', 'K3002');

INSERT INTO NOTA VALUES ('24', 'M0011', '2/JUL/2018', '8/JUL/2018', '9/JUL/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('24', 'J02', NULL, '10', '9');
INSERT INTO DETIL_KARYAWAN VALUES ('24', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('24', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('24', 'K3002');

INSERT INTO NOTA VALUES ('25', 'M0012', '13/MAY/2018', '17/MAY/2018', '17/MAY/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('25', 'J02', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('25', 'K1001');
INSERT INTO DETIL_KARYAWAN VALUES ('25', 'K2001');
INSERT INTO DETIL_KARYAWAN VALUES ('25', 'K3001');

INSERT INTO NOTA VALUES ('26', 'M0002', '13/MAY/2018', '17/MAY/2018', '17/MAY/2018', 'R02', '0');
INSERT INTO DETIL_NOTA VALUES ('26', 'J02', NULL, '0', '5');
INSERT INTO DETIL_KARYAWAN VALUES ('26', 'K1003');
INSERT INTO DETIL_KARYAWAN VALUES ('26', 'K2002');
INSERT INTO DETIL_KARYAWAN VALUES ('26', 'K3001');
--CAPEK--

-- NOTA --
select m.m_no as no_Member, m.m_nama as nama, m.M_ALAMAT as alamat, m.M_TELP as no_hp, n.n_no as no_nota, n.N_TGLMASUK, n.N_TGLJADI, n.N_TGLAMBIL,
jl.J_NAMA as pelayanan, dn.DN_KET as ket, dn.DN_KUANTITAS, jl.J_HARGA, (jl.j_harga * dn.dn_kuantitas) as jml,
(dn.DN_DISKON*z.jumlah/100) as diskon, z.jumlah, n.N_UANGMUKA, (z.jumlah-(n.N_UANGMUKA+(dn.DN_DISKON*z.jumlah/100))) as sisa, k.k_nama, k.K_BAGIAN
from member_table m, nota n, detil_nota dn, detil_karyawan dk, karyawan k, jenis_layanan jl, (select n.n_no as n_no, sum(jl.j_harga*dn.dn_kuantitas) as jumlah
from member_table m, nota n, detil_nota dn, jenis_layanan jl
where m.m_no = n.m_no and n.n_no = dn.n_no and dn.j_id = jl.j_id
group by n.n_no) z
where m.m_no = n.m_no and n.n_no = dk.N_NO and dk.k_kode = k.k_kode and n.n_no = dn.n_no and dn.j_id = jl.j_id and n.N_NO = z.n_no
order by n.n_no;

-- laporan member yg melakukan transaksi lebih dari 100RB--
select distinct m.m_no as no_Member, m.m_nama as nama, n.n_no as no_nota, z.jumlah
from member_table m, nota n, detil_nota dn, detil_karyawan dk, karyawan k, jenis_layanan jl, (select n.n_no as n_no, sum(jl.j_harga*dn.dn_kuantitas) as jumlah
from member_table m, nota n, detil_nota dn, jenis_layanan jl
where m.m_no = n.m_no and n.n_no = dn.n_no and dn.j_id = jl.j_id
group by n.n_no) z
where m.m_no = n.m_no and n.n_no = dk.N_NO and dk.k_kode = k.k_kode and n.n_no = dn.n_no and dn.j_id = jl.j_id and n.N_NO = z.n_no and z.jumlah>100000;

-- laporan layanan yg paling laris --
select jl.j_nama, z.total
from jenis_layanan jl, (select jl.j_id as j_id, count(jl.j_nama) as total
from nota n, detil_nota dn, jenis_layanan jl
where n.n_no = dn.n_no and dn.j_id = jl.j_id
group by jl.j_id) z
where jl.j_id = z.j_id
order by z.total desc;

-- laporan pemasukan per bulan --
select sum(z.jumlah), EXTRACT(MONTH FROM TO_DATE(n.N_TGLAMBIL, 'DD-MON-RR')) as bulan
from NOTA n, (select n.n_no as n_no, sum(jl.j_harga*dn.dn_kuantitas) as jumlah
from member_table m, nota n, detil_nota dn, jenis_layanan jl
where m.m_no = n.m_no and n.n_no = dn.n_no and dn.j_id = jl.j_id
group by n.n_no) z
where n.N_NO = z.n_no
group by EXTRACT(MONTH FROM TO_DATE(n.N_TGLAMBIL, 'DD-MON-RR'))
order by EXTRACT(MONTH FROM TO_DATE(n.N_TGLAMBIL, 'DD-MON-RR'));