REM   Script: DBMS_BLOOD BANK DONATION DATABASE MANAGEMENT SYSTEM
REM   BLOOD BANK

CREATE TABLE Manager ( 
M_id integer NOT NULL,  
M_Name varchar (30), 
M_PNo integer, 
PRIMARY KEY (M_id));

INSERT into Manager VALUES (101, 'Anuj', 4613959623);

INSERT into Manager VALUES (102, 'Labdhi', 4623959671);

INSERT into Manager VALUES(103, 'Hemanshi', 4633959601);

INSERT into Manager VALUES (104, 'Keshav',4694959677);

INSERT into Manager VALUES(105, 'Harsh',4695957671);

INSERT into Manager VALUES (106, 'Devyash',4696959671);

INSERT into Manager VALUES(107, 'Sreeja',4697959671);

INSERT into Manager VALUES(108, 'Naman',4698959671);

INSERT into Manager VALUES (109, 'Kartik',4699959671);

INSERT into Manager VALUES(110, 'Aryan',4693859671);

SELECT * FROM Manager;

CREATE TABLE City ( 
City_ID integer NOT NULL,  
City_name varchar(30),  
PRIMARY KEY (City_ID));

INSERT into City VALUES(1100,'Mumbai');

INSERT into City VALUES(1200,'Delhi');

INSERT into City VALUES(1300,'Chandigarh');

INSERT into City VALUES(1400,'Meerut');

INSERT into City VALUES(1500,'Ludhiana');

INSERT into City VALUES(1600,'Bhilwara');

INSERT into City VALUES(1700,'Rajkot');

INSERT into City VALUES(1800,'Bhavnagar');

INSERT into City VALUES(1900,'Jaunpur');

INSERT into City VALUES(2000,'Mirzapur');

SELECT * FROM City;

CREATE TABLE Disease_Finder (  
dfind_ID integer NOT NULL,   
dfind_name varchar(30) NOT NULL,   
dfind_PNo integer, 
PRIMARY KEY (dfind_ID));

INSERT into Disease_Finder VALUES(11,'Prabh',4693804221);

INSERT into Disease_Finder VALUES(12,'Dhruv',4693804222);

INSERT into Disease_Finder VALUES(13,'Abhinav',4693804223);

INSERT into Disease_Finder VALUES(14,'Surya',4693804224);

INSERT into Disease_Finder VALUES(15,'Sashank',4693804225);

INSERT into Disease_Finder VALUES(16,'Ram',4693804126);

INSERT into Disease_Finder VALUES(17,'Abhimanyu',4693804227);

INSERT into Disease_Finder VALUES(18,'Arjun',4693804328);

INSERT into Disease_Finder VALUES(19,'Neelabjo',4693804429);

INSERT into Disease_Finder VALUES(20,'Gandhi',4693804510);

SELECT * FROM Disease_Finder;

CREATE TABLE Recording_Staff ( 
Reco_ID integer NOT NULL,  
Reco_Name varchar(30),  
Reco_PNo integer, 
PRIMARY KEY (Reco_ID));

INSERT into Recording_Staff VALUES(101212,'Sweety',9990987654);

INSERT into Recording_Staff VALUES(101312,'Paul',982314803);

INSERT into Recording_Staff VALUES(101412,'Garg',9908916553);

INSERT into Recording_Staff VALUES(101512,'laddha',9407474238);

INSERT into Recording_Staff VALUES(101612,'Jain',6261545527);

INSERT into Recording_Staff VALUES(101712,'Joshi',6261679783);

INSERT into Recording_Staff VALUES(101812,'Hemu',72249232321);

INSERT into Recording_Staff VALUES(101912,'Kevadiya',6453128553);

INSERT into Recording_Staff VALUES(101012,'Ghatiya',7321456789);

INSERT into Recording_Staff VALUES(101112,'Mr. Patan',4045856153);

SELECT * FROM Recording_Staff;

CREATE TABLE Hospital_Info_1 ( 
Hosp_ID integer NOT NULL,  
Hosp_name varchar(30),  
City_ID integer,   
M_id integer, 
PRIMARY KEY (Hosp_ID), 
FOREIGN KEY (City_ID) REFERENCES City(City_ID), 
FOREIGN KEY (M_id) REFERENCES Manager(M_id));

INSERT into Hospital_Info_1 VALUES(1,'Cooper Hospital',1100,101);

INSERT into Hospital_Info_1 VALUES(2,'Seven Hills',1200,103);

INSERT into Hospital_Info_1 VALUES(3,'Kokilaben Ambani',1300,103);

INSERT into Hospital_Info_1 VALUES(4,'Apollo Spectra',1400,104);

INSERT into Hospital_Info_1 VALUES(5,'SL Raheja',1800,103);

INSERT into Hospital_Info_1 VALUES(6,'Jaslok',1300,106);

INSERT into Hospital_Info_1 VALUES(7,'Fortis',1300,102);

INSERT into Hospital_Info_1 VALUES(8,'Lilavati',1200,106);

INSERT into Hospital_Info_1 VALUES(9,'Bombay Hospital',1500,109);

INSERT into Hospital_Info_1 VALUES(10,'Hinduja',1700,105);

SELECT * FROM Hospital_Info_1;

CREATE TABLE Hospital_Info_2 (  
Hosp_ID integer NOT NULL,    
Hosp_name varchar(30),   
Hosp_required_Bgrp varchar(10),   
Hosp_required_qnty integer, 
PRIMARY KEY (Hosp_ID,Hosp_required_Bgrp));

INSERT into Hospital_Info_2 VALUES(1,'Cooper Hospital','A+',20);

INSERT into Hospital_Info_2 VALUES(1,'Cooper Hospital','AB+',0);

INSERT into Hospital_Info_2 VALUES(1,'Cooper Hospital','A-',40);

INSERT into Hospital_Info_2 VALUES(1,'Cooper Hospital','B-',10);

INSERT into Hospital_Info_2 VALUES(1,'Cooper Hospital','AB-',20);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','A+',40);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','AB+',20);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','A-',10);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','B-',30);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','B+',0);

INSERT into Hospital_Info_2 VALUES(2,'Seven Hills','AB-',10);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','A+',0);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','AB+',0);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','A-',0);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','B-',20);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','B+',10);

INSERT into Hospital_Info_2 VALUES(3,'Kokilaben Ambani','AB-',0);

INSERT into Hospital_Info_2 VALUES(4,'Apollo Spectra','A+',10);

INSERT into Hospital_Info_2 VALUES(5,'SL Raheja','B+',30);

INSERT into Hospital_Info_2 VALUES(4,'Apollo Spectra','A-',40);

INSERT into Hospital_Info_2 VALUES(7,'Fortis','B-',40);

INSERT into Hospital_Info_2 VALUES(8,'Lilavati','B+',10);

INSERT into Hospital_Info_2 VALUES(9,'Bombay Hospital','AB-',20);

SELECT * FROM Hospital_Info_2;

CREATE TABLE Recipient(  
Reci_ID integer NOT NULL,  
Reci_name varchar(30),   
Reci_age integer,    
Reci_Brgp varchar(30),  
Reci_Bqnty decimal(2,1),  
Reco_ID integer,   
City_ID integer,  
M_id integer,   
Reci_sex varchar(30),  
Reci_reg_date varchar(50), 
PRIMARY KEY (Reci_id), 
FOREIGN KEY (M_id) REFERENCES Manager(M_id), 
FOREIGN KEY (City_ID) REFERENCES City(City_ID), 
FOREIGN KEY (Reco_ID) REFERENCES Recording_Staff(Reco_ID));

INSERT into Recipient VALUES(10001,'Anant',25,'B+',1.5,101212,1100,101,'M','2015-12-17');

INSERT into Recipient VALUES(10002,'Aashish',60,'A+',1,101312,1100,102,'M','2015-12-16');

INSERT into Recipient VALUES(10003,'Aaloo',35,'AB+',0.5,101312,1200,102,'M','2015-10-17');

INSERT into Recipient VALUES(10004,'Ridhit',66,'B+',1,101212,1300,104,'M','2016-11-17');

INSERT into Recipient VALUES(10005,'Pranav',53,'B-',1,101412,1400,105,'M','2015-04-17');

INSERT into Recipient VALUES(10006,'Srivalli',45,'O+',1.5,101512,1500,105,'M','2015-12-17');

INSERT into Recipient VALUES(10007,'Isha',22,'AB-',1,101212,1500,101,'F','2015-05-17');

INSERT into Recipient VALUES(10008,'Anisha',25,'B+',2,101412,1300,103,'F','2015-12-14');

INSERT into Recipient VALUES(10009,'Rohan',30,'A+',1.5,101312,1100,104,'M','2015-02-16');

INSERT into Recipient VALUES(10010,'Saurav',25,'AB+',3.5,101212,1200,107,'M','2016-10-17');

SELECT * FROM Recipient;

CREATE TABLE Blood_Donor( 
Bd_ID integer NOT NULL,  
Bd_name varchar(30),  
Bd_age integer CHECK (Bd_age>=18),  
Bd_sex varchar(10),   
Bd_Bgroup varchar(10),   
Bd_reg_date varchar(50),    
Reco_ID integer,  
City_ID integer,  
PRIMARY KEY (Bd_ID), 
FOREIGN KEY (Reco_ID) REFERENCES Recording_Staff(Reco_ID), 
FOREIGN KEY (City_ID) REFERENCES City(City_ID));

INSERT into Blood_Donor VALUES(150221,'Smit',25,'M','B+','2015-12-17',101212,1100);

INSERT into Blood_Donor VALUES(160011,'Kiara',35,'F','A+','2016-11-22',101212,1100);

INSERT into Blood_Donor VALUES(160101,'Vansh',22,'M','O+','2016-01-04',101312,1200);

INSERT into Blood_Donor VALUES(150011,'Triaksh',29,'M','O+','2015-07-19',101412,1300);

INSERT into Blood_Donor VALUES(150021,'Prithvi',42,'F','A-','2015-12-24',101412,1300);

INSERT into Blood_Donor VALUES(150121,'Siddhant',44,'M','AB+','2015-08-28',101212,1200);

INSERT into Blood_Donor VALUES(160031,'Pranavi',33,'F','AB-','2016-02-06',101212,1400);

INSERT into Blood_Donor VALUES(160301,'Yashvi',31,'F','AB+','2016-09-10',101312,1200);

INSERT into Blood_Donor VALUES(160091,'Saqib',24,'M','B-','2016-10-15',101312,1500);

INSERT into Blood_Donor VALUES(160401,'Dharm',29,'M','O-','2016-12-17',101212,1200);

SELECT * FROM Blood_Donor;

CREATE TABLE Blood_Specimen (  
Specimen_Number integer NOT NULL,   
B_group varchar(10),   
Status integer,  
dfind_ID integer,  
M_id integer,  
PRIMARY KEY (Specimen_Number,B_group), 
FOREIGN KEY (M_id) REFERENCES Manager(M_id), 
FOREIGN KEY (dfind_ID) REFERENCES Disease_Finder(dfind_ID));

INSERT into Blood_Specimen VALUES(1001, 'B+', 1,11,101);

INSERT into Blood_Specimen VALUES(1002, 'O+', 1,12,102);

INSERT into Blood_Specimen VALUES(1003, 'AB+', 1,11,102);

INSERT into Blood_Specimen VALUES(1004, 'O-', 1,13,103);

INSERT into Blood_Specimen VALUES(1005, 'A+', 0,14,101);

INSERT into Blood_Specimen VALUES(1006, 'A-', 1,13,104);

INSERT into Blood_Specimen VALUES(1007, 'AB-', 1,15,104);

INSERT into Blood_Specimen VALUES(1008, 'AB-', 0,11,105);

INSERT into Blood_Specimen VALUES(1009, 'B+', 1,13,105);

INSERT into Blood_Specimen VALUES(1010, 'O+', 0,12,105);

INSERT into Blood_Specimen VALUES(1011, 'O+', 1,13,103);

INSERT into Blood_Specimen VALUES(1012, 'O-', 1,14,102);

INSERT into Blood_Specimen VALUES(1013, 'B-', 1,14,102);

INSERT into Blood_Specimen VALUES(1014, 'AB+', 0,15,101);

SELECT * FROM Blood_Specimen;

INSERT into Recipient VALUES(10011,'Rohit',24,'A+',1.5,101312,1200,105,'M','2017-01-06');

SELECT * FROM RECIPIENT;

DELETE  
FROM Blood_Donor 
WHERE Bd_name = 'Prithvi';

SELECT * FROM Blood_Donor;

UPDATE Manager 
SET M_PNo = 4695951249 
WHERE M_Name = 'Harsh';

SELECT * FROM MANAGER;

SELECT  * 
FROM Blood_Donor 
WHERE Bd_sex ='M' AND Bd_Bgroup = 'O+';

SELECT  Bd_ID, Bd_name, Bd_age, Bd_sex 
FROM Blood_Donor 
WHERE Bd_Bgroup = 'O-' 
UNION 
SELECT Reci_ID, Reci_name, Reci_age, Reci_Sex 
FROM RECIPIENT 
WHERE Reci_Brgp = 'AB+';

SELECT Reci_ID, Reci_name, Reci_age, Reci_Brgp, Reci_Bqnty, RO.Reco_Name 
FROM Recipient RE, Recording_Staff RO 
WHERE RE.Reco_ID = RO.Reco_ID AND RE.Reco_ID = '101212';

SELECT Specimen_Number, B_group   
FROM Blood_Specimen,Disease_Finder 
WHERE Blood_Specimen.dfind_ID = Disease_Finder.dfind_ID AND dfind_name = 'Prabh' AND status = 1;

Select bd_ID,bd_name,reci_ID,reci_name  
FROM Blood_Donor, Recipient   
WHERE bd_Bgroup = reci_Brgp AND Blood_Donor.City_ID = Recipient.City_ID;

SELECT Hosp_ID,Hosp_name, City_ID, Hospital_Info_1.M_id  
FROM Hospital_Info_1, Manager 
WHERE Manager.M_id = Hospital_Info_1.M_id AND Manager.M_id=103;

SELECT Manager.M_id, M_Name, Recipient.Reci_Name, Recipient.Reci_Brgp, B_group  
FROM Manager, Recipient, Blood_Specimen  
WHERE Recipient.M_id = Blood_Specimen.M_id AND Recipient.Reci_Brgp = Blood_Specimen.B_group AND status = 1;

SELECT AVG(Hosp_required_qnty) 
FROM Hospital_Info_2 
WHERE Hosp_Name = 'Cooper Hospital';

SELECT SUM(Reci_Bqnty) 
FROM Recipient 
WHERE Reci_Brgp = 'B+';

SELECT Recipient.City_ID, Reci_name, Reci_age, Reci_Brgp, Reci_Bqnty, City_Name 
FROM Recipient, City 
WHERE Recipient.City_ID = City.City_ID AND Reci_Bqnty  
IN 
(SELECT MAX(Reci_Bqnty)  
FROM Recipient);

SELECT Bd_ID, Bd_name, Bd_age, Bd_sex, Bd_Bgroup 
FROM Blood_Donor 
WHERE City_ID 
NOT IN 
(SELECT City_ID  
FROM CITY 
WHERE City_ID = 1100);

SELECT Bd_ID, Bd_name, Bd_age, Bd_sex, Bd_Bgroup 
FROM Blood_Donor 
WHERE City_ID != 1100;

