CREATE TABLE police(
police_id int NOT NULL,
police_name VARCHAR(50),
address varchar(70),
post varchar(50),
phno bigint,
salary int,
PRIMARY KEY(police_id));

CREATE TABLE complaint(
complaint_id int NOT NULL,
register_name varchar(50),
register_address varchar(50),
description varchar(50),
police_id int,
date_reg date,
complaint_status varchar(25),
phno bigint, 
PRIMARY KEY(complaint_id),
FOREIGN KEY(police_id)REFERENCES police(police_id) ON DELETE CASCADE);

CREATE TABLE equipments(
item_id int NOT NULL,
item_name varchar(50),
date_purchased date,
assigned_policeID int,
FOREIGN KEY(assigned_policeID)REFERENCES police(police_id));

CREATE TABLE convict(
convict_id int NOT NULL,
convict_name varchar(50),
age int,
height float,
crime varchar(25),
police_incharge int,
FOREIGN KEY(police_incharge)REFERENCES police(police_id));

CREATE TABLE gunlicense(
owner_name varchar(50),
gun varchar(50),
address varchar(100),
phno bigint,
expiry_date date,
bullet_count int);

insert into police (police_id, police_name, address, post, phno,salary) values (1, 'Krissie Mannin', '33071 Annamark Junction', 'sub inspector', '7584351910',16000);
insert into police (police_id, police_name, address, post, phno,salary) values (2, 'Almeda ', '591 Dunning Junction', 'training dept', '6948647453',14000);
insert into police (police_id, police_name, address, post, phno,salary) values (3, 'Melony ', '7895 Starling Lane', 'Accounting Dept', '7106217218',14000);
insert into police (police_id, police_name, address, post, phno,salary) values (4, 'Emmett Yetman', '1 Lillian Way', 'constable', '6143730440',13000);
insert into police (police_id, police_name, address, post, phno,salary) values (5, 'Ferdinand ', '079 Charing Cross Court', 'constable', '1374432559',13000);
insert into police (police_id, police_name, address, post, phno,salary) values (6, 'Danya Loody', '86507 Longview Trail', 'constable', '7214842810',13000);
insert into police (police_id, police_name, address, post, phno,salary) values (7, 'Pren Croser', '31853 Red Cloud Road', 'IT dept', '7679031519',14000);
insert into police (police_id, police_name, address, post, phno,salary) values (8, 'wilson', '1055 Mendota Park', 'traffic', '6154906411',15000);
insert into police (police_id, police_name, address, post, phno,salary) values (9, 'Andeee Ordidge', '52 Sauthoff Pass', 'traffic head', '6002859821',16000);
insert into police (police_id, police_name, address, post, phno,salary) values (10, 'Robbi Hains', '20 Southridge Hill', 'constable', '5873234317',13000);
insert into police (police_id, police_name, address, post, phno,salary) values (11, 'Dalis Mil', '4 Eliot Hill', 'Support staff', '9467325732',12000);
insert into police (police_id, police_name, address, post, phno,salary) values (12, 'Daron Toolin', '77 Delladonna Crossing', 'station head', '9879888011',16000);
insert into police (police_id, police_name, address, post, phno,salary) values (13, 'Myrilla', '068 American Ash Avenue', 'head constable', '7752487677',15000);
insert into police (police_id, police_name, address, post, phno,salary) values (14, 'Karoly Rumbold', '26 Everett Terrace', 'constable', '8889897526',15000);
insert into police (police_id, police_name, address, post, phno,salary) values (15, 'Donni Sporrij', '57 Coleman Crossing', 'IT dept', '2332273087',14000);










insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (1, 'Josey', '6 Lakewood Hill', 'chain theft', 2, '2020-06-15', true, '4256625687');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (2, 'Lark', '00062 Saint Paul Center', 'house theft', 2, '2020-10-25', false, '8587752773');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (3, 'Alick', '45 Manufacturers Junction', 'neighbour problem', 3, '2020-05-12', false, '6017966872');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (4, 'Randolph', '7273 Schmedeman Plaza', 'assault', 2, '2019-06-15', false, '4473254261');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (5, 'Elie', '13628 Pawling Way', 'assault', 3, '2020-05-20', false, '2256091382');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (6, 'Berti', '9915 Homewood Avenue', 'construction problem', 2, '2020-12-30', false, '8569743865');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (7, 'Kip', '71 Mcguire Hill', 'neighbour problem', 2, '2020-12-30', false, '3705454461');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (8, 'Gaspar', '823 Crowley Drive', 'wallet theft', 5, '2020-1-31', false, '3096427488');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (9, 'Ali', '95 Macpherson Lane', 'assault', 2, '2020-06-15', false, '1217201713');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (10, 'Rubia', '157 Hansons Trail', 'late renewal of gun', 2, '2019-08-21', false, '4757573489');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (11, 'Corissa', '83 Express Drive', 'complaint on manager', 3, '2018-03-12', true, '9981037132');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (12, 'Cathee', '60121 Scott Terrace', 'apartment conflicts', 2, '2020-02-15', true, '5298714295');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (13, 'Flem', '8415 Ludington Pass', 'wallet theft', 3, '2020-07-02', false, '5417761872');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (14, 'Imogen', '304 Boyd Parkway', 'chain theft', 5, '2018-06-21', true, '8461603408');
insert into complaint (complaint_id, register_name, register_address, description, police_id, date_reg, complaint_status, phno) values (15, 'Marlin', '2 Goodland Way', 'parking problem near mall', 3, '2020-02-25', false, '3737106611');



insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (1,'Knife','2020-12-15',14);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (2,'Taser','2020-11-16',12);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (3,'Torch','2020-02-15',12);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (4,'Mace','2020-03-18',14);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (5,'Baton','2020-12-01',2);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (6,'Handgun','2020-05-15',4);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (7,'Flashlight','2020-01-01',3);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (8,'Handcuff','2020-02-15',15);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (9,'Tear gas','2018-12-15',12);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (10,'Radio','2020-02-15',10);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (11,'Pepper spray','2018-06-12',9);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (12,'Rifle','2019-12-05',6);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (13,'Shotgun','2020-05-12',4);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (14,'Pistol','2020-06-15',5);
insert into equipments (item_id,item_name,date_purchased,assigned_policeID) values (15,'Bulletproof vest','2020-05-12',4);



insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (1,'Ebonee Campanelli',49,5.4,'Imapired Driving',12);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (2,'Paton Muckley',68,6.2,'Elder Abuse',1);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (3,'Royall McConnal',58,4.8,'Sexual Assault',2);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (4	,'Garwin Cheesman',88,4.5,'Robbery',4);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (5	,'Antonia Toon',22,5.1,'Threats',5);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (6	,'Ignaz Newlove',43,6.0,'Child abuse',10);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (7	,'Rowan Farrow',72,6.2,'Animal cruelty',12);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (8,'Wilden Gillfillan',49,5.7,'Gang violence',12);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (9,'El Freen',60,6.0,'Torture',10);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (10,'Emily Varnam',86,5.9,'Murder',3);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (11,'Gaylene Boundley',89,5.10,'Terrorism',5);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (12,'Sayers Munkley',13,6.5,'Arson',5);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (13,'Germayne Ceaplen',44,5.8,'Bestiality',9);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (14,'Ulrika Heditch',50,5.6,'Slavery',9);
insert into convict(convict_id,convict_name,age,height,crime,police_incharge) values (15,'Anthony Alfonso',31,6.3,'Acid Attack',5);


insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values ('Harli Akester','Cannon','767 Memorial Parkway','6121679392','2021-02-01',60);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Kelby Bartholomew','German 88','968 New Castle Park','8736461067','2024-05-01',70);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Almira Sheach','Mortar','502 Schmedeman Terrace','5714019208','2022-01-12',100);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Averill Ioselevich','Paris Gun','37521 Vidon Park','4699952129','2021-12-30',50);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Paige Follett','Big Bertha','8645 Vera Road','7176299610','2025-03-01',70);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Herbie Sollars','Air gun','44460 Melby Street','9516394767','2025-06-18',80);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Jemimah Towll','Pistol','67th Avenue Point','3812786820','2024-12-10',88);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Hali Carrigan','Blowgun',' Westerfield Parkway','9841489731','2021-08-10',110);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Jannelle Gavrielly','Revolver','23 Miller Center','4863258911','2020-12-09',60);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Eli Blackborough','Musket','429 Glendale Parkway','7846694855','2020-12-30',90);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Winston Dallimare','Mauser Rifle','92300 Westerfield Pass','6078525508','2022-12-18',130);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Moyra Louys','Springfield Rifle','8180 Truax Trail','3986074919','2023-10-15',40);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Ashleigh Baggallay','Hand gun','698 Logan Lane','4463255802','2025-02-01',80);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Julissa Aslum','Machine gun','5 Anniversary Trail','3749833372','2025-08-10',100);
insert into gunlicense (owner_name,gun,address,phno,expiry_date,bullet_count) values  ('Tara Flagg','Sten gun','3459 Kipling Point','5797925182','2023-03-15',55);

 

 
create view active_case as (select c.complaint_id,c.register_name,c.register_address,c.description,c.police_id,c.date_reg,c.phno from complaint c where c.complaint_status = 1);
create view inactive_case as (select c.complaint_id,c.register_name,c.register_address,c.description,c.police_id,c.date_reg,c.phno from complaint c where c.complaint_status = 0);

