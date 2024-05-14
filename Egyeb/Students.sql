create database University;

USE University;

CREATE TABLE disciplines (
  DiscID varchar(5) PRIMARY KEY,
  DName varchar(30),
  CreditNr int
);


CREATE INDEX MixedIndex on disciplines (DiscID, CreditNr);


/*Data for the table disciplines */

insert into disciplines (DiscID,DName,CreditNr) values ('DB1','Databases 1', 7);
insert into disciplines (DiscID,DName,CreditNr) values ('DS','Data Structures',6);
insert into disciplines (DiscID,DName,CreditNr) values ('CP','C Programming',8);
insert into disciplines (DiscID,DName,CreditNr) values ('ST','Statistics',5);
insert into disciplines (DiscID,DName,CreditNr) values ('LT','Lattice Theory',8);
insert into disciplines (DiscID,DName,CreditNr) values ('OOP','Object Oriented Programming',6);
insert into disciplines (DiscID,DName,CreditNr) values ('AI','Artificial Intelligence',8);
insert into disciplines (DiscID,DName,CreditNr) values ('OS','Operating Systems',3);
insert into disciplines (DiscID,DName,CreditNr) values ('DB2','Databases 2',6);
insert into disciplines (DiscID,DName,CreditNr) values ('MA','Math Analysis',7);
insert into disciplines (DiscID,DName,CreditNr) values ('SI','Software Engineering',6);
insert into disciplines (DiscID,DName,CreditNr) values ('AL','Algebra',4);


/*Table structure for table specialization */


CREATE TABLE specialization (
  SpecID varchar(5) PRIMARY KEY,
  SpecName varchar(40),
  Language varchar(20) 
);

/*Data for the table specialization */

insert into specialization (SpecID,SpecName,Language) values ('I','Informatics','English');
insert into specialization (SpecID,SpecName,Language) values ('MI','Mathematics Informatics','English');
insert into specialization (SpecID,SpecName,Language) values ('M','Mathematics','English');
insert into specialization (SpecID,SpecName,Language) values ('P','Physics','German');
insert into specialization (SpecID,SpecName,Language) values ('CM','Computational Mathematics','German');
insert into specialization (SpecID,SpecName,Language) values ('A','Automatization','French');
insert into specialization (SpecID,SpecName,Language) values ('ING','Engineering','French');
insert into specialization (SpecID,SpecName,Language) values ('C','Calculators','French');
insert into specialization (SpecID,SpecName,Language) values ('MP','Mathematics and Physics','German');


/*Table structure for table groups */

CREATE TABLE groups (
  GroupId int PRIMARY KEY,
  SpecID varchar(20) REFERENCES specialization (SpecID)
);

/*Data for the table groups */

insert into groups (GroupId,SpecID) values (531,'I');
insert into groups (GroupId,SpecID) values (532,'I');
insert into groups (GroupId,SpecID) values (533,'I');
insert into groups (GroupId,SpecID) values (631,'MI');
insert into groups (GroupId,SpecID) values (632,'MI');
insert into groups (GroupId,SpecID) values (633,'MI');
insert into groups (GroupId,SpecID) values (431,'M');
insert into groups (GroupId,SpecID) values (432,'M');
insert into groups (GroupId,SpecID) values (931,'P');
insert into groups (GroupId,SpecID) values (451,'CM');
insert into groups (GroupId,SpecID) values (452,'CM');
insert into groups (GroupId,SpecID) values (731,'A');
insert into groups (GroupId,SpecID) values (732,'A');
insert into groups (GroupId,SpecID) values (831,'ING');
insert into groups (GroupId,SpecID) values (832,'ING');
insert into groups (GroupId,SpecID) values (833,'ING');
insert into groups (GroupId,SpecID) values (834,'ING');
insert into groups (GroupId,SpecID) values (331,'C');
insert into groups (GroupId,SpecID) values (332,'C');
insert into groups (GroupId,SpecID) values (231,'MP');
insert into groups (GroupId,SpecID) values (232,'MP');
insert into groups (GroupId,SpecID) values (233,'MP');

/*Table structure for table students */

CREATE TABLE students (
  StudID int PRIMARY KEY,
  GroupId int REFERENCES groups (GroupID),
  StudName varchar(20),
  Email varchar(20) 
);

/*Data for the table students */

insert into students (StudID,GroupId,StudName,Email) values (1,531,'John Foreman','JohnForeman@email.co');
insert into students (StudID,GroupId,StudName,Email) values (2,531,'Ashley Cole','Ashley Cole@email.co');
insert into students (StudID,GroupId,StudName,Email) values (3,531,'David Lineker','David Lineker@email.');
insert into students (StudID,GroupId,StudName,Email) values (4,531,'John Smith','JohnSmith@email.com');
insert into students (StudID,GroupId,StudName,Email) values (5,533,'Robert White','RobertWhite@email.co');
insert into students (StudID,GroupId,StudName,Email) values (6,533,'Monica Tyson','MonicaTyson@email.co');
insert into students (StudID,GroupId,StudName,Email) values (7,533,'Eva Blum','EvaBlum@email.com');
insert into students (StudID,GroupId,StudName,Email) values (8,532,'Nicolas Pitt','NicolasPitt@email.co');
insert into students (StudID,GroupId,StudName,Email) values (9,631,'Richard Roberts','RichardRoberts@email');
insert into students (StudID,GroupId,StudName,Email) values (11,631,'Julia Gere','JuliaGere@email.com');
insert into students (StudID,GroupId,StudName,Email) values (12,631,'Paul Smith','PaulSmith@email.com');
insert into students (StudID,GroupId,StudName,Email) values (13,632,'Paul Quimby','PaulQuimby@email.com');
insert into students (StudID,GroupId,StudName,Email) values (14,632,'Jack Curtis','JackCurtis@email.com');
insert into students (StudID,GroupId,StudName,Email) values (15,632,'Jennifer Ant','JenniferAnt@email.co');
insert into students (StudID,GroupId,StudName,Email) values (16,431,'Marc Alda','MarcAlda@email.com');
insert into students (StudID,GroupId,StudName,Email) values (17,432,'Orson Bauer','OrsonBauer@email.com');
insert into students (StudID,GroupId,StudName,Email) values (18,432,'Irving Benatar','IrvingBenatar@email.');
insert into students (StudID,GroupId,StudName,Email) values (19,432,'Garth Brooks','GarthBrooks@email.co');
insert into students (StudID,GroupId,StudName,Email) values (20,931,'Irene Cates','IreneCates@email.com');
insert into students (StudID,GroupId,StudName,Email) values (21,931,'Julia Chase','JuliaChase@email.com');
insert into students (StudID,GroupId,StudName,Email) values (22,931,'Cyd Child','CydChild@email.com');
insert into students (StudID,GroupId,StudName,Email) values (23,931,'Ashley Cole','AshleyCole2@email.co');
insert into students (StudID,GroupId,StudName,Email) values (24,451,'Miley Divine','MileyDivine@email.co');
insert into students (StudID,GroupId,StudName,Email) values (25,451,'Julia Derek','JuliaDerek@email.com');
insert into students (StudID,GroupId,StudName,Email) values (26,451,'Susan Denver','SusanDenver@email.co');
insert into students (StudID,GroupId,StudName,Email) values (27,451,'Jean Harrison','JeanHarrison@email.c');
insert into students (StudID,GroupId,StudName,Email) values (28,731,'Judy Hudson','JudyHudson@email.com');
insert into students (StudID,GroupId,StudName,Email) values (29,731,'Monica Han','MonicaHan@email.com');
insert into students (StudID,GroupId,StudName,Email) values (30,732,'Maria Jillian','MariaJillian@email.c');
insert into students (StudID,GroupId,StudName,Email) values (31,732,'Jay Lewis','JayLewis@email.com');
insert into students (StudID,GroupId,StudName,Email) values (32,831,'Chuck Ocean','ChuckOcean@email.com');
insert into students (StudID,GroupId,StudName,Email) values (33,831,'Frank Orlando','FrankOrlando@email.c');
insert into students (StudID,GroupId,StudName,Email) values (34,831,'Luke Polanski','LukePolanski@email.c');
insert into students (StudID,GroupId,StudName,Email) values (35,833,'River Pop','RiverPop@email.com');
insert into students (StudID,GroupId,StudName,Email) values (36,833,'Natalie Phoenix','NataliePhoenix@email');
insert into students (StudID,GroupId,StudName,Email) values (37,833,'Jane Rooney','JaneRooney@email.com');
insert into students (StudID,GroupId,StudName,Email) values (38,832,'Theresa Rule','TheresaRule@email.co');
insert into students (StudID,GroupId,StudName,Email) values (39,832,'Susan Sarandon','SusanSarandon@email.');
insert into students (StudID,GroupId,StudName,Email) values (40,834,'George Ryder','GeorgeRyder@email.co');
insert into students (StudID,GroupId,StudName,Email) values (41,834,'Nina Simmons','NinaSimmons@email.co');
insert into students (StudID,GroupId,StudName,Email) values (42,834,'Donna Sutherland','DonnaSutherland@emai');
insert into students (StudID,GroupId,StudName,Email) values (43,331,'Tiffany Streisand','TiffanyStreisand@ema');
insert into students (StudID,GroupId,StudName,Email) values (44,331,'Steven Twain','StevenTwain@email.co');
insert into students (StudID,GroupId,StudName,Email) values (45,331,'Bobby VOx','BobbyVox@email.com');
insert into students (StudID,GroupId,StudName,Email) values (46,332,'Bono Buren','BonoBuren@email.com');
insert into students (StudID,GroupId,StudName,Email) values (47,332,'Burt Waters','BurtWaters@email.com');
insert into students (StudID,GroupId,StudName,Email) values (48,231,'Julia Wayne','JuliaWayne@email.com');
insert into students (StudID,GroupId,StudName,Email) values (49,232,'Jane Rooney','JaneRooney2@email.co');
insert into students (StudID,GroupId,StudName,Email) values (50,233,'Rosa White','RosaWhite@email.com');


/*Table structure for table marks */


CREATE TABLE marks (
  StudID int(10) REFERENCES students (StudID),
  DiscID varchar(20) REFERENCES disciplines (DiscID),
  Mark int,
  PRIMARY KEY (StudID,DiscID)
);

/*Data for the table marks */

insert into marks (StudID,DiscID,Mark) values (1,'DB1',10);
insert into marks (StudID,DiscID,Mark) values (1,'DS',9);
insert into marks (StudID,DiscID,Mark) values (2,'AI',9);
insert into marks (StudID,DiscID,Mark) values (2,'CP',9);
insert into marks (StudID,DiscID,Mark) values (3,'OOP',6);
insert into marks (StudID,DiscID,Mark) values (3,'ST',8);
insert into marks (StudID,DiscID,Mark) values (4,'AI',6);
insert into marks (StudID,DiscID,Mark) values (4,'LT',5);
insert into marks (StudID,DiscID,Mark) values (5,'DB2',7);
insert into marks (StudID,DiscID,Mark) values (5,'MA',8);
insert into marks (StudID,DiscID,Mark) values (5,'OS',4);
insert into marks (StudID,DiscID,Mark) values (6,'AL',6);
insert into marks (StudID,DiscID,Mark) values (6,'DB1',5);
insert into marks (StudID,DiscID,Mark) values (6,'SI',9);
insert into marks (StudID,DiscID,Mark) values (7,'CP',7);
insert into marks (StudID,DiscID,Mark) values (7,'DS',4);
insert into marks (StudID,DiscID,Mark) values (8,'LT',5);
insert into marks (StudID,DiscID,Mark) values (8,'OOP',8);
insert into marks (StudID,DiscID,Mark) values (8,'ST',8);
insert into marks (StudID,DiscID,Mark) values (9,'AI',5);
insert into marks (StudID,DiscID,Mark) values (9,'OS',8);
insert into marks (StudID,DiscID,Mark) values (11,'AL',10);
insert into marks (StudID,DiscID,Mark) values (11,'SI',10);
insert into marks (StudID,DiscID,Mark) values (12,'AI',10);
insert into marks (StudID,DiscID,Mark) values (12,'CP',10);
insert into marks (StudID,DiscID,Mark) values (12,'DB1',10);
insert into marks (StudID,DiscID,Mark) values (13,'DB1',9);
insert into marks (StudID,DiscID,Mark) values (13,'OS',9);
insert into marks (StudID,DiscID,Mark) values (14,'AL',9);
insert into marks (StudID,DiscID,Mark) values (14,'DB2',8);
insert into marks (StudID,DiscID,Mark) values (14,'MA',8);
insert into marks (StudID,DiscID,Mark) values (15,'AL',6);
insert into marks (StudID,DiscID,Mark) values (15,'SI',9);
insert into marks (StudID,DiscID,Mark) values (16,'CP',9);
insert into marks (StudID,DiscID,Mark) values (16,'OOP',8);
insert into marks (StudID,DiscID,Mark) values (17,'DB2',5);
insert into marks (StudID,DiscID,Mark) values (18,'DS',7);
insert into marks (StudID,DiscID,Mark) values (19,'AI',6);
insert into marks (StudID,DiscID,Mark) values (19,'LT',5);
insert into marks (StudID,DiscID,Mark) values (19,'MA',4);
insert into marks (StudID,DiscID,Mark) values (19,'OS',4);
insert into marks (StudID,DiscID,Mark) values (20,'DB1',4);
insert into marks (StudID,DiscID,Mark) values (20,'DB2',5);
insert into marks (StudID,DiscID,Mark) values (21,'AI',5);
insert into marks (StudID,DiscID,Mark) values (21,'SI',8);
insert into marks (StudID,DiscID,Mark) values (22,'ST',8);
insert into marks (StudID,DiscID,Mark) values (23,'AI',7);
insert into marks (StudID,DiscID,Mark) values (23,'LT',8);
insert into marks (StudID,DiscID,Mark) values (24,'OOP',7);
insert into marks (StudID,DiscID,Mark) values (25,'OS',7);
insert into marks (StudID,DiscID,Mark) values (26,'AL',8);
insert into marks (StudID,DiscID,Mark) values (26,'MA',4);
insert into marks (StudID,DiscID,Mark) values (27,'DS',5);
insert into marks (StudID,DiscID,Mark) values (27,'LT',9);
insert into marks (StudID,DiscID,Mark) values (27,'SI',8);
insert into marks (StudID,DiscID,Mark) values (28,'DS',4);
insert into marks (StudID,DiscID,Mark) values (29,'DS',9);
insert into marks (StudID,DiscID,Mark) values (30,'DS',6);
insert into marks (StudID,DiscID,Mark) values (31,'AI',5);
insert into marks (StudID,DiscID,Mark) values (31,'DS',7);
insert into marks (StudID,DiscID,Mark) values (31,'LT',6);
insert into marks (StudID,DiscID,Mark) values (32,'ST',8);
insert into marks (StudID,DiscID,Mark) values (33,'DB1',7);
insert into marks (StudID,DiscID,Mark) values (33,'DB2',8);
insert into marks (StudID,DiscID,Mark) values (33,'SI',9);
insert into marks (StudID,DiscID,Mark) values (34,'CP',8);
insert into marks (StudID,DiscID,Mark) values (34,'LT',4);
insert into marks (StudID,DiscID,Mark) values (34,'OOP',5);
insert into marks (StudID,DiscID,Mark) values (35,'OS',10);
insert into marks (StudID,DiscID,Mark) values (36,'SI',10);
insert into marks (StudID,DiscID,Mark) values (36,'ST',10);
insert into marks (StudID,DiscID,Mark) values (37,'DS',9);
insert into marks (StudID,DiscID,Mark) values (38,'CP',9);
insert into marks (StudID,DiscID,Mark) values (39,'OOP',9);
insert into marks (StudID,DiscID,Mark) values (40,'DS',10);
insert into marks (StudID,DiscID,Mark) values (40,'ST',9);
insert into marks (StudID,DiscID,Mark) values (41,'AL',5);
insert into marks (StudID,DiscID,Mark) values (41,'DB2',9);
insert into marks (StudID,DiscID,Mark) values (41,'MA',6);
insert into marks (StudID,DiscID,Mark) values (43,'LT',8);
insert into marks (StudID,DiscID,Mark) values (44,'OOP',6);
insert into marks (StudID,DiscID,Mark) values (45,'DS',7);
insert into marks (StudID,DiscID,Mark) values (45,'OS',5);
insert into marks (StudID,DiscID,Mark) values (46,'AI',4);
insert into marks (StudID,DiscID,Mark) values (46,'SI',8);
insert into marks (StudID,DiscID,Mark) values (47,'ST',8);
insert into marks (StudID,DiscID,Mark) values (48,'MA',9);
insert into marks (StudID,DiscID,Mark) values (49,'AL',6);
insert into marks (StudID,DiscID,Mark) values (50,'AI',7);
insert into marks (StudID,DiscID,Mark) values (50,'OOP',10);
insert into marks (StudID,DiscID,Mark) values (50,'OS',5);

select count(*) from students;

/* Data manipulation  */

update students set email = 'RosaWhite@gmail.com' where StudID = 50;
update marks set Mark = 6 where StudID = 50 and DiscID = 'OS';
update marks set Mark = 6 where StudID = 49 and DiscID = 'OS';


delete from marks where StudID = 50 and DiscID = 'OOP';
delete from marks where StudID = 49 and DiscID = 'OOP';

delete from students where StudID = 50;
delete from students where GroupId = 531;

/  index creation

CREATE INDEX on disciplines(DiscID);

select distinct groupId from students;

select StudName, students.GroupId, Email
from students, groups, specialization
where students.GroupId = groups.GroupId
and groups.SpecID = specialization.SpecID
and SpecName = 'Mathematics';

select mark from marks
where StudID = 50 and DiscID = 'OS';

select DName, CreditNr, Mark
from students, marks, disciplines
where students.StudID = marks.StudID
and marks.discID = disciplines.discID
and StudName = 'Rosa White';

select StudName, students.GroupId, Email
from students
where Email like '%email.com';

select StudID, discID, mark from marks
where StudID = 50 or StudID = 41;

select StudID, avg(Mark) as avg_Mark, min(Mark) as min_Mark, max(Mark) as max_Mark
from marks
where mark > 4
group by StudID;


select DName, avg(Mark) as avg_Mark
from marks, disciplines
where marks.discID = disciplines.discID
and mark > 4
group by DName;


/* Bonus */

insert into disciplines values ('AL','Algebra', 4);   /* without list of columns  */

select * from disciplines order by DiscID;