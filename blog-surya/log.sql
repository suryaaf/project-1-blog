create table supplier(
ID_supplier int(5) primary key,
nama varchar(50),
telp int(16),
email varchar(50));

create table catalog(
ID_buku int(5) primary key,
ID_supplier int(5),
ISBN int(13),
judul varchar(50),
pengarang varchar(50),
penerbit varchar(20),
tahun_terbit date,
stock int(10),
harga_jual varchar(15),
harga_beli varchar(15),
foreign key(ID_supplier) references supplier(ID_supplier));

create table pelanggan(
ID_pelanggan integer(6) primary key,
nama varchar(50),
telp int(16),
alamat varchar(50),
email varchar(50),
no_kartu int(16));

create table akun(
ID_akun int(6) primary key,
ID_pelanggan int(6),
username varchar(20),
password varchar(20),
foreign key(ID_pelanggan) references pelanggan(ID_pelanggan));

create table pemesanan(
ID_pemesanan int(9) primary key,
ID_buku int(5),
ID_pelanggan int(6),
tanggal date,
jumlah int(10),
alamat_kirim varchar(50),
foreign key(ID_buku) references catalog(ID_buku),
foreign key(ID_pelanggan) references pelanggan(ID_pelanggan));

create table kurir(
ID_kurir int(5) primary key,
nama varchar(50),
telp int(16),
email varchar(50));

create table pengiriman(
ID_pengiriman int(9) primary key,
ID_pemesanan int(9),
ID_kurir int(5),
tgl_kirim date,
tgl_terima date,
status varchar(20),
no_resi int(15),
foreign key(ID_pemesanan) references pemesanan(ID_pemesanan),
foreign key(ID_kurir) references kurir(ID_kurir));

insert into pelanggan values
('1','surya','081234367890','jl. lokcari','suryabagus@gmail.com','1234123497341234'),
('2','arizona','086434567891','jl. titan','restabolehh@gmail.com','2345234522742345'),
('3','surya','0812348237892','jl. tirtomoyo','dutya@gmail.com','4856345634563456'),
('4','rayhan','081234568593','jl. bunut','rehangajoko22@gmail.com','45674536583274567'),
('5','kehed','081234537894','jl. ngandongan','kehedsangardewe@gmail.com','567856723854785678'),
('6','yusuf','081184567895','jl. arjosari','yusufngepil77@gmail.com','6789678929472789'),
('7','bogel','081234567596','jl. sulfat','bogelasolole@gmail.com','7890782957257890'),
('8','sural','089234567897','jl. mendit','kecotselalu@gmail.com','8901890189010501'),
('9','wahyu','081234374898','jl. sawojajar','wahyugoang@gmail.com','9012917490129012'),
('10','cebok','086295567899','jl. gondanglegi','cebokgedangan@gmail.com','0123012759330123');

insert into akun values
('10','1','yauda','fhdig'),
('20','2','fjfgw','fufne'),
('30','3','sdufg','fgijb'),
('40','4','dbjge','vbuie'),
('50','5','renud','fgbnj'),
('60','6','rwrei','vjkwq'),
('70','7','gvjio','wksmv'),
('80','8','qsoif','wnsou'),
('90','9','wjnrb','wquib'),
('100','10','wekmn','ebjiw');

insert into supplier values
('1','juhan','089872173211','juhan@gmail.com'),
('2','sugeng','08987684212','sugeng@gmail.com'),
('3','sulis','089876543378','sulis@gmail.com'),
('4','iriana','0898765017723','iriana@gmail.com'),
('5','bari','089872842215','bari@gmail.com'),
('6','nanang','089828462216','nanang@gmail.com'),
('7','alam','0898746723217','alam@gmail.com'),
('8','durya','089876543218','surya@gmail.com'),
('9','suliono','089875423219','suliono@gmail.com'),
('10','orphan','056276543210','orphan@gmail.com');

insert into catalog values
('1010','1','14645','komputer','and','suliono','2001-01-01','960','Rp50.000,00','Rp55.000,00'),
('1020','2','27556','celana','sule','suliono','2001-01-02','740','Rp50.000,00','Rp55.000,00'),
('1030','3','83667','pc','agung','suliono','2001-01-03','450','Rp12.000,00','Rp15.000,00'),
('1040','4','47355','keyboard','makmur','suliono','2001-01-04','670','Rp32.000,00','Rp35.000,00'),
('1050','5','55789','buku','andre','suliono','2001-01-05','230','Rp56.000,00','Rp60.000,00'),
('1060','6','67583','kucing','yuyli','suliono','2001-01-06','430','Rp34.000,00','Rp37.000,00'),
('1070','7','57301','hp','sule','suliono','2001-01-07','130','Rp23.000,00','Rp25.000,00'),
('1080','8','85252','heandset','and','suliono','2001-01-08','650','Rp24.000,00','Rp27.000,00'),
('1090','9','90853','klabang','agung','suliono','2001-01-09','120','Rp98.000,00','Rp100.000,00'),
('2000','10','09534','baju','agung','suliono','2001-01-10','790','Rp67.000,00','Rp70.000,00');

insert into kurir values
('1','surya','088127246789','surya@gmail.com'),
('2','tobrut','088364567891','tobrut@gmail.com'),
('3','andre','088345853912','andre@gmail.com'),
('4','guntur','0884567578353','guntur@gmail.com'),
('5','bintang','088567591234','bintang@gmail.com'),
('6','goang','0757625912345','goang@gmail.com'),
('7','ahlan','0885783533456','ahn@gmail.com'),
('8','rahmat','088891963567','rahmat@gmail.com'),
('9','bagus','088918635678','bagus@gmail.com'),
('10','agos','088012852678','agos@gmail.com');

insert into pemesanan values
('1','1010','1','2020-01-01','60','jl. adigung'),
('2','1020','2','2020-01-02','40','jl. lawang'),
('3','1030','3','2020-01-03','40','jl. pakis'),
('4','1040','4','2020-01-04','60','jl. tumpang'),
('5','1050','5','2020-01-05','10','jl. batu bara'),
('6','1060','6','2020-01-06','70','jl. kidul'),
('7','1070','7','2020-01-07','90','jl. srilaya'),
('8','1080','8','2020-01-08','60','jl. panglima'),
('9','1090','9','2020-01-09','90','jl. lulayy'),
('10','2000','10','2020-01-10','60','jl. rejik');

insert into pengiriman values
('1','1','1','2020-01-01','2020-01-02','terkirim','97355'),
('2','2','2','2020-01-02','2020-01-03','terkirim','74654'),
('3','3','3','2020-01-03','2020-01-04','terkirim','76763'),
('4','4','4','2020-01-04','2020-01-05','terkirim','67862'),
('5','5','5','2020-01-05','2020-01-06','terkirim','75821'),
('6','6','6','2020-01-06','2020-01-07','terkirim','47519'),
('7','7','7','2020-01-07','2020-01-08','terkirim','35528'),
('8','8','8','2020-01-09','2020-01-09','terkirim','26757'),
('9','9','9','2020-01-09','2020-01-10','terkirim','19756'),
('10','10','10','2020-01-10','2020-01-11','terkirim','09776');
