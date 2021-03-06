
--Library Database System--

     --Create Tables--
create table Library_Branch(
BranchID int not null primary key,
BranchName varchar(100) not null,
BranchAddress varchar(150) not null)

create table Publisher(
PublisherName varchar(100) not null primary key,
publisherAddress Varchar(150) not null,
PublisherPhone varchar(20))

create table Books(
BookID int not null primary key,
BookTitle varchar(70) not null,
Publishername varchar(100) foreign key references Publisher(PublisherName))

create table Book_Authors(
Book_ID int foreign key references Books(BookID),
AuthorName varchar(70))

create table Book_Copies(
Book_Id int foreign key references Books(BookID),
Branch_ID int foreign key references Library_Branch(BranchID),
Number_of_Copies int not null)

create table Borrower(
CardNum int not null primary key,
BorrowerName varchar(70) not null,
BorrowerAddress varchar(150) not null,
BorrowerPhone varchar(20) not null)

create table Book_Loans(
Book_id int foreign key references Books(BookID),
Branch_ID int foreign key references Library_Branch(BranchID),
Cardnum int foreign key references Borrower(CardNum),
DateOut date,
DateDue date)



         --Inserts--
insert into Library_Branch values
(1,'ِِAlef','132 El-Sayed El-Merghany, Almazah, Heliopolis, Cairo Governorate'),
(2,'Eqra','Al Manawat, El-Giza، Giza Governorate'),
(3,'Meramar','138 El Hegaz St, El-Bostan, Heliopolis, Cairo Governorate'),
(4,'Kotob','2 Taha Hussein, Abu Al Feda, Zamalek, Cairo Governorate'),
(5,'Sky','el shaikh zayed، Al Sheikh Zayed, Giza Governorate'),
(6,'Shourouk','El Wahat Rd, First 6th of October, Giza Governorate'),
(7,'Diwan','105 Abou Bakr El-Sedeek, Almazah, Heliopolis, Cairo Governorate')

insert into Publisher values
('1000 Books for Publishing','15 Al Sebaq, El-Bostan, Heliopolis, Cairo Governorate','01288041865'),
('HarperCollins','195 Broadway New York, NY 10007 USA','1-800-242-7737'),
('Anchor Books','THE EDITORS,Knopf,1745 Broadway,New York','1-754-365-9585'),
('BLOOMSBURY','Bloomsbury,London,UK','1256302699'),
('Thomas Egerton','272 Blackburn Rd,Egerton,Bolton BL7 9SR,UK','1204301774'),
('El-Rawaq','186 Ramses','20812006'),
('Simon & Schuster','57 Littlefield Street Avon, MA','508-427-7100'),
('DoubleDay','THE EDITORS,Knopf,1745 Broadway,New York','1-866-250-3166'),
('George Allen & Unwin','83 Alexander St Crows Nest, NSW 2065. AUSTRALIA','(612)84250100')

insert into Books values
(1,'Sherlock Holmes','1000 Books for Publishing'),
(2,'The Selection','HarperCollins'),
(3,'UP IN THE AIR','Anchor Books'),
(4,'Harry Potter and the Prisoner of Azkaban','BLOOMSBURY'),
(5,'The Sun Book','El-Rawaq'),
(6,'Antichristos','El-Rawaq'),
(7,'Baqa','El-Rawaq'),
(8,'Pride and Prejudice','Thomas Egerton'),
(9,'Treasure Island','HarperCollins'),
(10,'HAMLET','Simon & Schuster'),
(11,'King Lear','Simon & Schuster'),
(12,'The Elite','HarperCollins'),
(13,'Harry Potter and the Cursed Child','BLOOMSBURY'),
(14,'The DA VINCI CODE','DoubleDay'),
(15,'She: The History of Adventure','Thomas Egerton'),
(16,'The Lion, The Witch and The Wardrobe','DoubleDay'),
(17,'The dream of the red chamber','BLOOMSBURY'),
(18,'Harry Potter and the Sorcerer’s stone','BLOOMSBURY'),
(19,'The Little Prince','George Allen & Unwin'),
(20,'The Fellowship of the ring','George Allen & Unwin'),
(21,'The Tale of two cities','DoubleDay'),
(22,'Don Quixote','George Allen & Unwin'),
(23,'Life is what you make it','1000 Books for Publishing'),
(24,'Where good ideas come from','1000 Books for Publishing'),
(25,'Moonwalking with Einstein','Thomas Egerton')

insert into Book_Authors values
(1,'Arthur Conan'),
(2,'Kiera Cass'),
(3,'Walter Kirn'),
(4,'J.K.ROWLING'),
(5,'Mahmoud Allam'),
(6,'Ahmed Khaled'),
(7,'Nourhan Abo Bakr'),
(8,'Jane Austen'),
(9,'Robert Louis Stevenson'),
(10,'Shakespeare'),
(11,'Shakespeare'),
(12,'Kiera Cass'),
(13,'J.K.ROWLING'),
(14,'Dane Brown'),
(15,'H.RIDER HAGGARD'),
(16,'C.S.Lewis'),
(17,'CAO Xueqin'),
(18,'J.K.ROWLING'),
(19,'Antoine De Saint-Exupery'),
(20,'J.R.R. Tolkien'),
(21,'Charles Dickens'),
(22,'Miguel de Cervantes'),
(23,'Peter Buffett'),
(24,'Steven Johnson'),
(25,'Joshua Foer')

insert into Book_Copies values
(1,1,3),(1,2,5),(1,3,1),(1,4,8),(1,5,15),(1,6,7),(1,7,16),
(2,1,6),(2,2,2),(2,3,1),(2,4,12),(2,5,3),(2,6,4),(2,7,6),
(3,1,3),(3,2,3),(3,3,2),(3,4,8),(3,5,6),(3,6,2),(3,7,3),
(4,1,6),(4,2,9),(4,3,2),(4,4,6),(4,5,13),(4,6,12),(4,7,6),
(5,1,16),(5,2,3),(5,3,7),(5,4,1),(5,5,5),(5,6,6),(5,7,1),
(6,1,8),(6,2,8),(6,3,4),(6,4,2),(6,5,4),(6,6,2),(6,7,9),
(7,1,10),(7,2,6),(7,3,5),(7,4,10),(7,5,2),(7,6,8),(7,7,1),
(8,1,9),(8,2,1),(8,3,9),(8,4,5),(8,5,2),(8,6,4),(8,7,9),
(9,1,5),(9,2,3),(9,3,7),(9,4,5),(9,5,4),(9,6,9),(9,7,5),
(10,1,2),(10,2,9),(10,3,7),(10,4,2),(10,5,3),(10,6,8),(10,7,2),
(11,1,9),(11,2,5),(11,3,6),(11,4,2),(11,5,15),(11,6,1),(11,7,5),
(12,1,3),(12,2,10),(12,3,7),(12,4,5),(12,5,5),(12,6,3),(12,7,8),
(13,1,6),(13,2,1),(13,3,4),(13,4,8),(13,5,2),(13,6,6),(13,7,12),
(14,1,12),(14,2,9),(14,3,6),(14,4,5),(14,5,5),(14,6,1),(14,7,2),
(15,1,7),(15,2,2),(15,3,6),(15,4,12),(15,5,15),(15,6,3),(15,7,7),
(16,1,3),(16,2,4),(16,3,2),(16,4,9),(16,5,1),(16,6,2),(16,7,3),
(17,1,4),(17,2,5),(17,3,3),(17,4,1),(17,5,2),(17,6,5),(17,7,7),
(18,1,9),(18,2,1),(18,3,5),(18,4,5),(18,5,9),(18,6,2),(18,7,9),
(19,1,9),(19,2,0),(19,3,8),(19,4,1),(19,5,2),(19,6,6),(19,7,6),
(20,1,14),(20,2,7),(20,3,0),(20,4,3),(20,5,2),(20,6,1),(20,7,4),
(21,1,3),(21,2,9),(21,3,8),(21,4,1),(21,5,3),(21,6,4),(21,7,0),
(22,1,0),(22,2,12),(22,3,6),(22,4,5),(22,5,2),(22,6,8),(22,7,10),
(23,1,17),(23,2,6),(23,3,2),(23,4,3),(23,5,6),(23,6,7),(23,7,1),
(24,1,9),(24,2,2),(24,3,8),(24,4,5),(24,5,5),(24,6,6),(24,7,7),
(25,1,8),(25,2,6),(25,3,1),(25,4,7),(25,5,6),(25,6,3),(25,7,8)

insert into Borrower values
(102,'Ahmed Shawky','El sayed Fyad st,El Arbeen,Suez Governorate','01154338430'),
(115,'Ali Osama','Taha Hussein Rd,El Nozha,Cairo Governorate','01125989902'),
(219,'Hassan Yossef','El-Montaza St,El Nozha, Cairo Governorate','01254778522'),
(278,'Khaled Talat','Sheikh Ismail Sadeq Adawy,New Cairo,Cairo Governorate','01012148600'),
(348,'Mostafa Ahmed','Zoher Sabri,Nasr City, Cairo Governorate','01023258970'),
(351,'Yasmen Khaled','Ibn Hagdam,El-Zaytoun Sharkeya,Cairo Governorate','01245896302'),
(364,'Taha El-Sayed','Al Omraneyah Ash Sharqeyah,El Omraniya,Giza Governorate','01524382704'),
(424,'Mohamed Ali','Hussein Hafez,Abu Qatadah,Giza Governorate','01140300289')

insert into Book_Loans values
(1,1,102,'2020-02-08','2020-04-13'),
(3,5,115,'2020-04-30','2020-06-18'),
(17,2,219,'2020-01-06','2020-03-15'),
(7,7,278,'2020-04-28','2020-05-05'),
(10,3,348,'2020-04-29','2020-05-08'),
(15,4,351,'2020-01-02','2020-02-18'),
(22,6,364,'2020-08-02','2020-09-15'),
(25,3,424,'2020-03-03','2020-03-29'),
(9,1,102,'2020-05-05','2020-06-01'),
(12,5,115,'2020-06-03','2020-07-03'),
(5,7,219,'2020-10-01','2020-11-02'),
(18,6,278,'2020-04-04','2020-04-30'),
(14,2,348,'2020-02-02','2020-03-02'),
(24,6,351,'2020-03-08','2020-03-19'),
(11,4,364,'2020-06-01','2020-06-29'),
(9,3,424,'2020-05-09','2020-06-11')


          --Functions--
select SUM(Number_of_Copies) As All_Number_of_Copies 
from Book_Copies
where Book_Id=1

select SUM(Number_of_Copies) As All_Number_of_Copies 
from Book_Copies
where Branch_ID=4

select COUNT(Book_ID) As Number_of_Books
from Book_Authors
where AuthorName='J.K.ROWLING'

select BookID,BookTitle
from Books
where Publishername='BLOOMSBURY' order by BookID

select BookID,BookTitle
from Books
where Publishername='George Allen & Unwin' order by BookTitle

select Branch_ID,Number_of_Copies
from Book_Copies
where Book_Id=3 order by Branch_ID

select *
from Book_Loans
where DateDue>'2020-04-30' order by Branch_ID

select *
from Book_Loans
where Cardnum=424 order by Branch_ID

select *
from Borrower
where BorrowerName like '_A%'

select *
from Book_Authors
where AuthorName like '%k%'