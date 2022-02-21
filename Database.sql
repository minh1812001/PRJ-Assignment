CREATE DATABASE PRJ_Assignment
USE PRJ_Assignment
create table category (
	id INT,
	name VARCHAR(255)
);
insert into category (id, name) values (1, 'Hoa Qua');
insert into category (id, name) values (2, 'Dong Vat');
insert into category (id, name) values (3, 'Khac');

create table Product (
	id INT,
	name VARCHAR(255),
	quantity INT,
	price DECIMAL(9,1),
	description VARCHAR(255),
	imageURL VARCHAR(255),
	Created_date DATE,
	category_id INT 
);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (1, 'Xoai', 77, 3711152.0, 'Unspecified color vision deficiencies', 'http://dummyimage.com/239x216.png/ff4444/ffffff', '2021-12-19', 1);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (2, 'Cam', 16, 1688516.9, 'Toxic effect of carb monx from oth source, slf-hrm, sequela', 'http://dummyimage.com/238x218.png/dddddd/000000', '2020-08-20', 1);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (3, 'Ga', 73, 4477750.8, 'Nondisp fx of proximal phalanx of r thm, init for opn fx', 'http://dummyimage.com/131x199.png/5fa2dd/ffffff', '2021-04-04', 2);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (4, 'De', 48, 3877495.1, 'Driver of military vehicle injured nontraf, sequela', 'http://dummyimage.com/187x126.png/cc0000/ffffff', '2021-01-16', 2);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (5, 'Bo', 37, 9188041.0, 'Pedl cyc driver inj in nonclsn trnsp acc in traf, sequela', 'http://dummyimage.com/209x217.png/dddddd/000000', '2020-02-15', 2);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (6, 'Ruou khu andehit', 42, 2214114.8, 'Nondisp fx of distal phalanx of left middle finger, sequela', 'http://dummyimage.com/231x248.png/dddddd/000000', '2020-11-01', 3);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (7, 'Can cau ca', 55, 2470854.0, 'Benign neoplasm of right bronchus and lung', 'http://dummyimage.com/197x174.png/ff4444/ffffff', '2020-03-20', 3);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (8, 'Leu cam trai', 7, 9476120.0, 'Displ bicondylar fx unsp tibia, 7thN', 'http://dummyimage.com/250x208.png/dddddd/000000', '2021-01-02', 3);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (9, 'Cui kho', 9, 2177227.1, 'Chronic angle-closure glaucoma, right eye, mild stage', 'http://dummyimage.com/182x134.png/ff4444/ffffff', '2020-06-13', 3);
insert into Product (id, name, quantity, price, description, imageURL, Created_date, category_id) values (10, 'Den', 93, 6183858.0, 'Nondisp transverse fracture of shaft of unsp tibia, sequela', 'http://dummyimage.com/169x150.png/cc0000/ffffff', '2020-05-12', 3);

ALTER TABLE Product
ADD Foreign KEY (category_id) REFERENCES Category(id);