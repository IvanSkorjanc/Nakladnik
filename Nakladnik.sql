# sipanje na server

/*
c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "C:\Nakladnik.sql"
*/

drop database if exists Nakladnik;
create database Nakladnik default character set utf8;
use Nakladnik;


create table nakladnik (
id int not null primary key auto_increment,
ime varchar (50) not null,
mjesto int not null,
email varchar (50) not null
);

create table djelo (
id int not null primary key auto_increment,
ime varchar (100) not null,
pisac varchar (50) not null,
nakladnik int not null
);

create table mjesto (
id int not null primary key auto_increment,
ime varchar (50) not null
);

create table nakladnik_djelo (
nakladnik int not null,
djelo int not null
);


alter table nakladnik_djelo add foreign key (nakladnik) references nakladnik(id);
alter table nakladnik_djelo add foreign key (djelo) references djelo(id);

alter table nakladnik add foreign key (mjesto) references mjesto(id); 

insert into mjesto (ime)
values
# id 1
('Zagreb');

insert into nakladnik (ime,mjesto,email)
values
# id 1
('Alfa',1,'info@alfa.hr'),
# id 2
('Begen',1,'begen@zg.t-com.hr'),
# id 3
('Aquarius Records',1,'prodaja@aquarius-records.com'),
# id 4
('Disput',1,'disput@disput.hr'),
# id 5
('Durieux',1,'redakcija@durieux.hr'),
# id 6
('Egmont',1,'info@cro.egmont.com');

insert into djelo (ime,pisac,nakladnik)
values
# id 1
('Novac','Charles Peguy',1),
# id 2
('S HRVATSKOM U SRCU','Tin Kolumbić',1),
# id 3
('Raskrižje','Fate Velaj',1),
# id 4
('Mali princ','Antoine de Saint Exupery',2),
# id 5
('THE WIZARD OF OZ','Lyman Frank Baum',2),
# id 6
('ALICE’S ADVENTURES IN WONDERLAND','Lewis Carroll',2),
# id 7
('Sve, Samo Ne Romatinka','Marko Podrug',3),
# id 8
('Life On Tour With Bowie','Sean Mayes',3),
# id 9
('Metallica-Justice For All','Joel Mciver',3),
# id 10
('PONEKAD LAŽEM','Alice Feeney',6),
# id 11
('POSLJEDNJA ŽELJA','Andrzej Sapkowski',6),
# id 12
('MAČ SUDBINE','Andrzej Sapkowski',6),
# id 13
('DEBELI I MRŠAVI','Anton Pavlovič Čehov',4),
# id 14
('RAZMATRANJA NEPOLITIČNOG ČOVJEKA','Thomas Mann',4),
# id 15
('STAZOM PORED DRUMA','Zdravko Malić',4),
# id 16
('700 dana opsade','Željko Ivanković',5),
# id 17
('Anastasia','Dalibor Šimpraga',5),
# id 18
('Bajke za plažu','Simo Mraović',5);



insert into nakladnik_djelo (nakladnik,djelo)
values
(1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),
(3,8),(3,9),(6,10),(6,11),(6,12),(4,13),
(4,14),(4,15),(5,16),(5,17),(5,18);

