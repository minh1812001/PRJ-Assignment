
USE PRJ_Assignment
create table category (
	[id] [int] IDENTITY(1,1) NOT NULL,
	name VARCHAR(255)
);
insert into category (id, name) values (1, 'Hoa Qua');
insert into category (id, name) values (2, 'Dong Vat');
insert into category (id, name) values (3, 'Khac');

create table Product (
	[id] [int] IDENTITY(1,1) NOT NULL,
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

create table Role (
	[id] [int] IDENTITY(1,1) NOT NULL,
	role_name VARCHAR(255)
);
SET IDENTITY_INSERT Role ON
insert into Role (id, role_name) values (1, 'user');
insert into Role (id, role_name) values (2, 'mod');
insert into Role (id, role_name) values (3, 'admin');
SET IDENTITY_INSERT Role OFF
create table [User] (
	[id] [int] IDENTITY(1,1) NOT NULL,
	role_id Int,
	username VARCHAR(255),
	password VARCHAR(255),
	email VARCHAR(255),
	phone VARCHAR(255),
	full_name VARCHAR(255),
	dob DATE,
	gender VARCHAR(255),
	avatar VARCHAR(255),
	created_date DATE
);
ALTER TABLE [User]
ADD Foreign KEY (role_id) REFERENCES Role(id);

SET IDENTITY_INSERT [User] ON
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (1, 2, 'Alix', 'Qvfv37rc', 'alydford0@photobucket.com', '+46 255 474 4244', 'Alix Lydford', '3/13/1987', 'Male', 'http://dummyimage.com/124x100.png/5fa2dd/ffffff', '11/9/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (2, 2, 'Petey', 'On2laLvcNf0F', 'pblondin1@reddit.com', '+33 111 191 8926', 'Petey Blondin', '8/18/1997', 'Male', 'http://dummyimage.com/198x100.png/dddddd/000000', '1/23/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (3, 2, 'Mavis', '6p2VPd', 'mfathers2@telegraph.co.uk', '+81 222 745 0649', 'Mavis Fathers', '8/5/1979', 'Male', 'http://dummyimage.com/120x100.png/5fa2dd/ffffff', '2/23/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (4, 3, 'Nikolaos', 'A80cSGa', 'nlambkin3@vk.com', '+86 745 283 9852', 'Nikolaos Lambkin', '8/22/1987', 'Female', 'http://dummyimage.com/243x100.png/ff4444/ffffff', '7/31/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (5, 2, 'Vally', '2DEjUrD', 'vmaddick4@squarespace.com', '+48 831 574 9312', 'Vally Maddick', '4/26/1991', 'Male', 'http://dummyimage.com/155x100.png/ff4444/ffffff', '11/30/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (6, 1, 'Flem', '2BP8Qmm8lOv', 'feyree5@guardian.co.uk', '+81 228 773 2443', 'Flem Eyree', '1/6/1994', 'Female', 'http://dummyimage.com/117x100.png/ff4444/ffffff', '10/16/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (7, 3, 'Rosy', '4t5FVJafD', 'rkemshell6@google.com.au', '+49 894 484 8654', 'Rosy Kemshell', '9/17/1979', 'Female', 'http://dummyimage.com/145x100.png/ff4444/ffffff', '3/12/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (8, 3, 'Valida', '5QZqbwWtxC', 'vdrinkale7@engadget.com', '+880 308 604 7021', 'Valida Drinkale', '2/20/1990', 'Female', 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', '6/23/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (9, 1, 'Rubin', '9myXsK', 'rscriviner8@de.vu', '+1 280 887 2581', 'Rubin Scriviner', '12/1/1990', 'Female', 'http://dummyimage.com/140x100.png/dddddd/000000', '8/31/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (10, 1, 'Janith', 'rV8V7Eiv7', 'jdealtry9@uiuc.edu', '+53 284 947 7670', 'Janith Dealtry', '7/18/1991', 'Female', 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', '7/1/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (11, 2, 'Kelci', 'BvXAcI', 'kberendsena@unesco.org', '+48 844 102 9498', 'Kelci Berendsen', '1/20/1999', 'Female', 'http://dummyimage.com/245x100.png/dddddd/000000', '5/12/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (12, 1, 'Vally', 'NqUT26N8CQy', 'vclayeb@diigo.com', '+62 572 340 6951', 'Vally Claye', '10/31/1992', 'Male', 'http://dummyimage.com/161x100.png/cc0000/ffffff', '6/25/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (13, 2, 'Levey', 'qq613Qi95T', 'lciraldoc@weather.com', '+86 472 689 3466', 'Levey Ciraldo', '5/10/1975', 'Female', 'http://dummyimage.com/187x100.png/dddddd/000000', '10/21/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (14, 2, 'Janie', 'p3k0AiZ', 'jpinwilld@goodreads.com', '+86 142 779 1916', 'Janie Pinwill', '12/1/1975', 'Female', 'http://dummyimage.com/213x100.png/cc0000/ffffff', '12/29/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (15, 3, 'Gretchen', 'rAxWMMNut', 'gsizee@un.org', '+7 454 593 1561', 'Gretchen Size', '12/19/1980', 'Female', 'http://dummyimage.com/154x100.png/cc0000/ffffff', '1/3/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (16, 2, 'Woodrow', 't6oYSy8', 'wgarrettsf@dedecms.com', '+86 201 315 7990', 'Woodrow Garretts', '7/12/1985', 'Male', 'http://dummyimage.com/238x100.png/ff4444/ffffff', '2/10/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (17, 2, 'Dare', 'SAPIQ4PVo1oq', 'dboughtwoodg@uiuc.edu', '+30 137 807 7547', 'Dare Boughtwood', '4/18/1999', 'Female', 'http://dummyimage.com/170x100.png/5fa2dd/ffffff', '6/2/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (18, 2, 'Essie', '1xbAPJf', 'eganingh@behance.net', '+86 976 824 6079', 'Essie Ganing', '8/12/1978', 'Male', 'http://dummyimage.com/213x100.png/dddddd/000000', '11/17/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (19, 2, 'Robinett', '5RLLm6v', 'rstaiti@aboutads.info', '+55 800 482 0385', 'Robinett Stait', '8/26/1991', 'Male', 'http://dummyimage.com/182x100.png/cc0000/ffffff', '8/3/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (20, 2, 'Damara', 'vZNGzCTGL', 'dbenfordj@vinaora.com', '+86 586 802 0691', 'Damara Benford', '4/8/1993', 'Male', 'http://dummyimage.com/213x100.png/cc0000/ffffff', '7/28/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (21, 1, 'Leo', '6od2FwZ', 'lharrisonk@soundcloud.com', '+55 977 612 8458', 'Leo Harrison', '8/8/1978', 'Male', 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', '7/31/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (22, 3, 'Harriet', 'MKbuoTkaM', 'hpullingerl@mysql.com', '+7 173 797 2994', 'Harriet Pullinger', '8/22/1975', 'Female', 'http://dummyimage.com/111x100.png/cc0000/ffffff', '3/19/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (23, 2, 'Alwin', 'UKpXPp151S5B', 'acowem@wisc.edu', '+420 769 996 4405', 'Alwin Cowe', '6/13/1983', 'Female', 'http://dummyimage.com/132x100.png/ff4444/ffffff', '1/18/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (24, 3, 'Rachael', 'CEt66XiM', 'rhadgraftn@altervista.org', '+7 689 792 3895', 'Rachael Hadgraft', '11/16/1977', 'Female', 'http://dummyimage.com/202x100.png/dddddd/000000', '3/1/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (25, 2, 'Courtnay', 'g1eH2cwh', 'cmitrikhino@rakuten.co.jp', '+992 428 873 6109', 'Courtnay Mitrikhin', '6/27/1996', 'Female', 'http://dummyimage.com/159x100.png/ff4444/ffffff', '8/9/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (26, 2, 'Linell', '1gsA7uH', 'lambroschp@gizmodo.com', '+86 839 114 3659', 'Linell Ambrosch', '8/26/1980', 'Female', 'http://dummyimage.com/114x100.png/5fa2dd/ffffff', '8/13/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (27, 1, 'Colman', '8IlTs50cmiMi', 'cochterlonyq@mysql.com', '+62 206 246 0759', 'Colman Ochterlony', '1/25/1993', 'Male', 'http://dummyimage.com/177x100.png/dddddd/000000', '1/12/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (28, 2, 'Belvia', 'zQZhi4UDx', 'bsentancer@huffingtonpost.com', '+385 108 238 6632', 'Belvia Sentance', '9/12/1977', 'Female', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', '10/29/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (29, 2, 'Gael', 'Ad06OTYY2BdG', 'gmactimpanys@phoca.cz', '+7 658 112 2999', 'Gael MacTimpany', '8/11/1994', 'Male', 'http://dummyimage.com/177x100.png/ff4444/ffffff', '2/11/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (30, 1, 'Natty', 'urCceVP1', 'nammert@patch.com', '+52 977 662 5568', 'Natty Ammer', '6/2/1999', 'Male', 'http://dummyimage.com/247x100.png/ff4444/ffffff', '12/19/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (31, 1, 'Lauralee', 'im4zYOP', 'lchatresu@over-blog.com', '+86 289 381 3067', 'Lauralee Chatres', '9/22/1976', 'Female', 'http://dummyimage.com/151x100.png/dddddd/000000', '4/21/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (32, 1, 'Pepi', 'qQYBKRjbMFIC', 'pvonv@purevolume.com', '+54 689 410 0696', 'Pepi Von Welldun', '5/7/1980', 'Male', 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', '1/18/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (33, 3, 'Karlik', 'KCce1Uiz6ea', 'kdrooganw@ftc.gov', '+220 690 791 3111', 'Karlik Droogan', '1/29/1976', 'Male', 'http://dummyimage.com/209x100.png/cc0000/ffffff', '2/17/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (34, 1, 'Devon', 'xAc7fSqYZvgE', 'dparkenx@amazon.co.jp', '+49 575 986 4315', 'Devon Parken', '11/24/1991', 'Female', 'http://dummyimage.com/191x100.png/dddddd/000000', '1/6/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (35, 3, 'Bogey', 'dE3woGn', 'bbloisy@4shared.com', '+86 326 179 7599', 'Bogey Blois', '12/1/1985', 'Male', 'http://dummyimage.com/114x100.png/cc0000/ffffff', '7/29/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (36, 1, 'Berton', 'SMykpf84o', 'bdrohunz@tiny.cc', '+1 318 618 0409', 'Berton Drohun', '4/8/1994', 'Male', 'http://dummyimage.com/212x100.png/dddddd/000000', '2/2/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (37, 2, 'Bartolemo', 'h2sLyAyZ', 'bianson10@woothemes.com', '+52 361 115 7529', 'Bartolemo I''anson', '6/7/1970', 'Female', 'http://dummyimage.com/203x100.png/5fa2dd/ffffff', '11/24/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (38, 3, 'Cassius', 'kgJJ0Kl', 'cgilardoni11@acquirethisname.com', '+1 521 941 9125', 'Cassius Gilardoni', '6/6/1976', 'Female', 'http://dummyimage.com/103x100.png/dddddd/000000', '5/16/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (39, 2, 'Tomi', 'PQ3V4zEYz', 'twinger12@smugmug.com', '+503 988 408 1847', 'Tomi Winger', '1/10/1972', 'Male', 'http://dummyimage.com/239x100.png/dddddd/000000', '3/26/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (40, 1, 'Clarey', 'NAzZoRiOZXQt', 'chadfield13@odnoklassniki.ru', '+63 244 372 8456', 'Clarey Hadfield', '10/10/1989', 'Female', 'http://dummyimage.com/124x100.png/dddddd/000000', '1/3/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (41, 1, 'Jordan', 'BU8oGvN', 'jingledow14@boston.com', '+687 836 887 7671', 'Jordan Ingledow', '12/23/1996', 'Male', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', '9/12/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (42, 2, 'Fannie', 'nWFYpgMeRRc0', 'fhanscome15@nyu.edu', '+86 366 814 7023', 'Fannie Hanscome', '10/22/1979', 'Female', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff', '6/29/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (43, 2, 'Angelia', 'pAHn6Ip2', 'ablunsen16@bbb.org', '+98 507 963 1734', 'Angelia Blunsen', '5/4/1988', 'Male', 'http://dummyimage.com/180x100.png/ff4444/ffffff', '7/24/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (44, 1, 'Charline', 'pFC17tzBV', 'cboyett17@google.com.au', '+62 507 354 3689', 'Charline Boyett', '5/15/1971', 'Female', 'http://dummyimage.com/191x100.png/cc0000/ffffff', '5/16/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (45, 2, 'Rahal', 'tlhKMkwhx', 'rrolfi18@twitter.com', '+371 302 208 5376', 'Rahal Rolfi', '6/14/1984', 'Female', 'http://dummyimage.com/205x100.png/5fa2dd/ffffff', '3/23/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (46, 1, 'Hilde', 'rtqSUmcVESea', 'hsewley19@mozilla.org', '+54 886 314 1780', 'Hilde Sewley', '11/2/1994', 'Female', 'http://dummyimage.com/126x100.png/dddddd/000000', '2/26/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (47, 2, 'Tish', 'ePDu2ZLp', 'tkitson1a@pinterest.com', '+687 323 237 1051', 'Tish Kitson', '2/13/1972', 'Female', 'http://dummyimage.com/135x100.png/cc0000/ffffff', '7/9/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (48, 1, 'Bette-ann', 'YpgMGfoyw', 'bcruz1b@thetimes.co.uk', '+242 159 842 7722', 'Bette-ann Cruz', '4/14/1998', 'Female', 'http://dummyimage.com/191x100.png/cc0000/ffffff', '11/4/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (49, 1, 'Bernetta', 'YKGbsjwIZuf', 'btry1c@drupal.org', '+1 349 170 7162', 'Bernetta Try', '4/26/1988', 'Female', 'http://dummyimage.com/171x100.png/cc0000/ffffff', '3/2/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (50, 1, 'Licha', 'sE6Pwu0Pt', 'lpagden1d@seesaa.net', '+86 906 621 2695', 'Licha Pagden', '1/1/1996', 'Female', 'http://dummyimage.com/137x100.png/dddddd/000000', '8/8/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (51, 3, 'Linzy', 'ptCPxEe8', 'locannavan1e@shinystat.com', '+244 182 728 7878', 'Linzy O''Cannavan', '5/13/1975', 'Female', 'http://dummyimage.com/209x100.png/ff4444/ffffff', '8/5/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (52, 2, 'Delia', 'i6ql5sruV', 'dchaperling1f@psu.edu', '+86 776 715 8501', 'Delia Chaperling', '11/3/1986', 'Female', 'http://dummyimage.com/153x100.png/5fa2dd/ffffff', '1/26/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (53, 2, 'Danila', 'hS7EgZw', 'dsanford1g@opera.com', '+7 524 616 4734', 'Danila Sanford', '11/25/1993', 'Female', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff', '2/9/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (54, 3, 'Aridatha', 'EZoMGUwxi7', 'aplimmer1h@webnode.com', '+86 675 261 4089', 'Aridatha Plimmer', '6/23/1996', 'Female', 'http://dummyimage.com/233x100.png/cc0000/ffffff', '6/9/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (55, 1, 'Arne', 'rTuzzqu', 'ashrimpling1i@about.me', '+86 570 870 6940', 'Arne Shrimpling', '11/7/1994', 'Female', 'http://dummyimage.com/205x100.png/cc0000/ffffff', '3/16/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (56, 3, 'Bryn', 'i52fwsP', 'bdorie1j@furl.net', '+86 888 348 2777', 'Bryn Dorie', '12/9/1973', 'Female', 'http://dummyimage.com/213x100.png/dddddd/000000', '7/23/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (57, 2, 'Otho', 'VbZOxcSX', 'ofreund1k@rambler.ru', '+256 108 233 2615', 'Otho Freund', '4/4/1988', 'Male', 'http://dummyimage.com/194x100.png/dddddd/000000', '3/29/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (58, 2, 'Rosanna', 'eMsl4f', 'rclinning1l@chicagotribune.com', '+84 742 335 4999', 'Rosanna Clinning', '10/28/1985', 'Male', 'http://dummyimage.com/228x100.png/ff4444/ffffff', '3/24/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (59, 1, 'Yehudit', 'keuhxYs2eq', 'yrigeby1m@storify.com', '+56 965 240 8886', 'Yehudit Rigeby', '8/20/1987', 'Male', 'http://dummyimage.com/201x100.png/dddddd/000000', '2/22/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (60, 2, 'Nevsa', 'Mho6Ejlw', 'nlidgerton1n@digg.com', '+86 788 973 2932', 'Nevsa Lidgerton', '2/4/1978', 'Male', 'http://dummyimage.com/161x100.png/5fa2dd/ffffff', '1/3/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (61, 1, 'Andrus', 'BQcB8mlXvq', 'askowcraft1o@domainmarket.com', '+86 197 350 5124', 'Andrus Skowcraft', '2/24/1982', 'Male', 'http://dummyimage.com/225x100.png/dddddd/000000', '5/9/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (62, 3, 'Malissa', 'Wx4i84', 'mginglell1p@networksolutions.com', '+86 332 731 0022', 'Malissa Ginglell', '6/7/1995', 'Male', 'http://dummyimage.com/177x100.png/dddddd/000000', '4/21/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (63, 1, 'Emlyn', 'QQzLfAUIB', 'espruce1q@businesswire.com', '+62 561 405 9544', 'Emlyn Spruce', '9/26/1985', 'Male', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', '2/13/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (64, 2, 'Corinna', '3luLnNwds', 'crolin1r@ocn.ne.jp', '+51 722 252 3714', 'Corinna Rolin', '2/28/1991', 'Male', 'http://dummyimage.com/205x100.png/5fa2dd/ffffff', '12/3/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (65, 1, 'Alys', 'xvYARwm', 'abizley1s@google.it', '+591 214 785 6660', 'Alys Bizley', '1/29/1989', 'Female', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff', '1/28/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (66, 3, 'Evangelin', 'Xp50KzTT9', 'egaylord1t@slashdot.org', '+351 869 575 4466', 'Evangelin Gaylord', '5/13/1982', 'Male', 'http://dummyimage.com/136x100.png/dddddd/000000', '1/10/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (67, 1, 'Moll', 'QxAKS5', 'mscrivener1u@comsenz.com', '+351 552 934 3673', 'Moll Scrivener', '7/23/1990', 'Male', 'http://dummyimage.com/113x100.png/cc0000/ffffff', '8/17/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (68, 2, 'Nathaniel', 'WtChY7', 'nblance1v@feedburner.com', '+86 266 751 8473', 'Nathaniel Blance', '5/1/1997', 'Male', 'http://dummyimage.com/248x100.png/dddddd/000000', '12/12/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (69, 2, 'Dominik', 'NUPhD7gz', 'dgarralts1w@dailymotion.com', '+351 312 582 6210', 'Dominik Garralts', '8/31/1996', 'Female', 'http://dummyimage.com/183x100.png/5fa2dd/ffffff', '11/9/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (70, 2, 'Gerry', '4mDp3BZ0bg', 'gpringley1x@admin.ch', '+86 541 419 3996', 'Gerry Pringley', '11/15/1996', 'Female', 'http://dummyimage.com/172x100.png/dddddd/000000', '3/27/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (71, 2, 'Dal', 'eo7wys', 'dbruford1y@bandcamp.com', '+62 436 681 3578', 'Dal Bruford', '3/24/1981', 'Male', 'http://dummyimage.com/245x100.png/dddddd/000000', '5/30/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (72, 1, 'Patric', 'Fr7PBwT', 'ppeppard1z@usda.gov', '+51 740 130 2534', 'Patric Peppard', '3/25/1986', 'Female', 'http://dummyimage.com/124x100.png/ff4444/ffffff', '1/31/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (73, 1, 'Lavena', 'xjFi7w3pW', 'leberdt20@barnesandnoble.com', '+48 959 317 8997', 'Lavena Eberdt', '1/20/1974', 'Male', 'http://dummyimage.com/187x100.png/cc0000/ffffff', '12/1/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (74, 3, 'Gertruda', 'a32ZXZRSe', 'ggaddas21@usatoday.com', '+1 904 304 4720', 'Gertruda Gaddas', '5/19/1987', 'Female', 'http://dummyimage.com/140x100.png/5fa2dd/ffffff', '10/18/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (75, 3, 'Pen', 'VhrCun', 'pdoget22@bravesites.com', '+86 951 996 6959', 'Pen Doget', '5/31/1982', 'Male', 'http://dummyimage.com/157x100.png/5fa2dd/ffffff', '12/17/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (76, 1, 'Madison', 'UljgxkGRQhF', 'mdorin23@npr.org', '+266 955 359 4576', 'Madison Dorin', '5/14/1998', 'Male', 'http://dummyimage.com/214x100.png/cc0000/ffffff', '1/7/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (77, 2, 'Janette', 'ETWdCHdBa', 'jsoffe24@shutterfly.com', '+1 512 865 0047', 'Janette Soffe', '1/4/1993', 'Female', 'http://dummyimage.com/152x100.png/cc0000/ffffff', '6/19/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (78, 1, 'Karlene', 'zZnBBj', 'ktaylor25@shutterfly.com', '+7 800 835 1414', 'Karlene Taylor', '2/21/1984', 'Male', 'http://dummyimage.com/121x100.png/5fa2dd/ffffff', '6/27/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (79, 1, 'Rowland', 'HYqO6dSWyMRv', 'rbowering26@nydailynews.com', '+81 680 454 3721', 'Rowland Bowering', '5/12/1993', 'Male', 'http://dummyimage.com/231x100.png/ff4444/ffffff', '9/24/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (80, 3, 'Baryram', 'JUJKV9iAU2BM', 'bwestoff27@istockphoto.com', '+7 478 805 5828', 'Baryram Westoff', '10/3/1996', 'Male', 'http://dummyimage.com/250x100.png/dddddd/000000', '2/4/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (81, 2, 'Shurlock', 'v8nqFHZ', 'ssatterly28@smugmug.com', '+375 942 331 2644', 'Shurlock Satterly', '6/27/1988', 'Female', 'http://dummyimage.com/205x100.png/dddddd/000000', '5/30/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (82, 1, 'Inigo', 'xNIryUdnZ', 'isweedland29@topsy.com', '+86 573 710 9706', 'Inigo Sweedland', '1/31/1994', 'Female', 'http://dummyimage.com/213x100.png/ff4444/ffffff', '10/12/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (83, 2, 'Roley', 'IRr8VkdB3', 'rmacneill2a@issuu.com', '+7 604 810 3247', 'Roley MacNeill', '2/6/1979', 'Male', 'http://dummyimage.com/120x100.png/5fa2dd/ffffff', '9/4/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (84, 3, 'Aurelia', 'ZvZerlTeGlpL', 'aklemensiewicz2b@ftc.gov', '+57 176 482 4734', 'Aurelia Klemensiewicz', '12/6/1991', 'Male', 'http://dummyimage.com/112x100.png/5fa2dd/ffffff', '8/27/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (85, 2, 'Laurella', 'SXaUKe6WaW', 'lmonini2c@oakley.com', '+48 344 944 6922', 'Laurella Monini', '12/31/1999', 'Male', 'http://dummyimage.com/124x100.png/cc0000/ffffff', '9/5/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (86, 3, 'Lancelot', 'xA83kNMsCl', 'lwinsom2d@cpanel.net', '+62 631 456 4472', 'Lancelot Winsom', '2/11/1972', 'Female', 'http://dummyimage.com/186x100.png/ff4444/ffffff', '2/15/2022');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (87, 1, 'Starr', 'TfhWNoZYSp', 'snorthing2e@usgs.gov', '+20 616 478 8860', 'Starr Northing', '1/21/1995', 'Male', 'http://dummyimage.com/215x100.png/dddddd/000000', '7/18/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (88, 3, 'Quinn', 'j85tcY', 'qtabour2f@amazon.de', '+7 579 485 4339', 'Quinn Tabour', '10/14/1988', 'Male', 'http://dummyimage.com/121x100.png/dddddd/000000', '9/14/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (89, 2, 'Valencia', 'Jl0cq3S', 'vbackwell2g@samsung.com', '+962 569 524 7932', 'Valencia Backwell', '8/6/1996', 'Female', 'http://dummyimage.com/196x100.png/ff4444/ffffff', '10/10/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (90, 1, 'Julie', 'WSGXXS6VoKrb', 'jspollen2h@youtube.com', '+420 298 477 1875', 'Julie Spollen', '10/1/1990', 'Female', 'http://dummyimage.com/215x100.png/ff4444/ffffff', '10/31/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (91, 2, 'Gertrude', 'EVD2vhe', 'glatta2i@oaic.gov.au', '+62 174 261 6402', 'Gertrude Latta', '11/10/1982', 'Male', 'http://dummyimage.com/228x100.png/ff4444/ffffff', '1/13/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (92, 2, 'Dorian', 'LGWv5wXm', 'dotoole2j@smugmug.com', '+62 837 196 6552', 'Dorian O''Toole', '5/26/1981', 'Female', 'http://dummyimage.com/156x100.png/5fa2dd/ffffff', '7/26/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (93, 3, 'Dierdre', 'kTex1TTF', 'ducchino2k@noaa.gov', '+66 638 930 6342', 'Dierdre Ucchino', '2/21/1977', 'Male', 'http://dummyimage.com/174x100.png/dddddd/000000', '5/15/2020');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (94, 2, 'Shandeigh', '6GgFf73ZmU9', 'sdhillon2l@ask.com', '+64 584 127 0218', 'Shandeigh Dhillon', '7/8/1994', 'Male', 'http://dummyimage.com/118x100.png/dddddd/000000', '3/9/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (95, 2, 'Gretchen', 'Nao8OtCndW', 'gseaborn2m@blinklist.com', '+54 139 730 3019', 'Gretchen Seaborn', '3/30/1980', 'Female', 'http://dummyimage.com/244x100.png/dddddd/000000', '5/22/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (96, 3, 'Mitchel', '2wcqSmCT', 'modooghaine2n@auda.org.au', '+27 721 318 3622', 'Mitchel O''Dooghaine', '7/28/1976', 'Female', 'http://dummyimage.com/204x100.png/dddddd/000000', '10/21/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (97, 1, 'Basile', 'Cks0gcLGPP', 'brodwell2o@harvard.edu', '+380 988 122 4979', 'Basile Rodwell', '3/26/1983', 'Female', 'http://dummyimage.com/157x100.png/cc0000/ffffff', '10/4/2021');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (98, 3, 'Ainsley', 'mNnTL7c189', 'acrabtree2p@wikia.com', '+33 165 714 9911', 'Ainsley Crabtree', '11/10/1999', 'Female', 'http://dummyimage.com/178x100.png/ff4444/ffffff', '10/27/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (99, 3, 'Maible', 'peaPSnmZZ', 'mniblock2q@tamu.edu', '+54 518 131 2820', 'Maible Niblock', '5/30/1970', 'Male', 'http://dummyimage.com/110x100.png/5fa2dd/ffffff', '10/18/2019');
insert into [User] (id, role_id, username, password, email, phone, full_name, dob, gender, avatar, created_date) values (100, 3, 'Rourke', '5XW0YtWRgw', 'rheadan2r@va.gov', '+86 520 519 7287', 'Rourke Headan', '9/13/1990', 'Male', 'http://dummyimage.com/105x100.png/cc0000/ffffff', '2/15/2019');
SET IDENTITY_INSERT [User] OFF 
create table [Shipping] (
	id INT IDENTITY(1,1) NOT NULL,
	name VARCHAR(255),
	phone VARCHAR(255),
	address VARCHAR(255)
);
SET IDENTITY_INSERT [Shipping] ON
insert into [Shipping] (id, name, phone, address) values (1, 'Mortie Jefford', '+86 549 549 9861', '8 Bayside Way');
insert into [Shipping] (id, name, phone, address) values (2, 'Tildie Blaisdale', '+7 892 672 3503', '15 Ronald Regan Hill');
insert into [Shipping] (id, name, phone, address) values (3, 'Portie Alway', '+352 919 523 9401', '2137 Monterey Circle');
insert into [Shipping] (id, name, phone, address) values (4, 'Mella Fido', '+351 478 101 0249', '02 Morning Park');
insert into [Shipping] (id, name, phone, address) values (5, 'Uriah Josse', '+46 999 366 4530', '37124 Mifflin Way');
insert into [Shipping] (id, name, phone, address) values (6, 'Dionysus Quadling', '+351 847 337 3116', '3 Arapahoe Junction');
insert into [Shipping] (id, name, phone, address) values (7, 'Donnajean Oakeshott', '+380 811 704 1050', '5554 Sutherland Lane');
insert into [Shipping] (id, name, phone, address) values (8, 'Darius Gilford', '+48 238 129 7738', '964 Grim Park');
insert into [Shipping] (id, name, phone, address) values (9, 'Glynnis Leyre', '+380 906 797 3588', '379 Fairview Drive');
insert into [Shipping] (id, name, phone, address) values (10, 'Carlotta Stanbridge', '+86 807 970 1557', '68 Oak Valley Lane');
insert into [Shipping] (id, name, phone, address) values (11, 'Faun Kirkhouse', '+385 142 511 8400', '0 Swallow Street');
insert into [Shipping] (id, name, phone, address) values (12, 'Avigdor Garrud', '+62 658 948 8721', '51 Alpine Pass');
insert into [Shipping] (id, name, phone, address) values (13, 'Lombard Force', '+62 267 224 7148', '3894 Pierstorff Plaza');
insert into [Shipping] (id, name, phone, address) values (14, 'Dido Domenichelli', '+55 119 487 6879', '1252 Vermont Street');
insert into [Shipping] (id, name, phone, address) values (15, 'Jehu Guitel', '+57 128 206 2693', '321 Twin Pines Avenue');
insert into [Shipping] (id, name, phone, address) values (16, 'Wolfgang Brevitt', '+86 934 219 7634', '87 Schlimgen Alley');
insert into [Shipping] (id, name, phone, address) values (17, 'Linnet Hiscoke', '+7 451 536 0348', '23 Boyd Parkway');
insert into [Shipping] (id, name, phone, address) values (18, 'Dom Hasselby', '+86 517 546 9229', '48646 Fallview Trail');
insert into [Shipping] (id, name, phone, address) values (19, 'Hannis Taye', '+598 715 539 8170', '6674 Memorial Place');
insert into [Shipping] (id, name, phone, address) values (20, 'Dirk Beuscher', '+86 702 142 3242', '77 Vernon Plaza');
insert into [Shipping] (id, name, phone, address) values (21, 'Wayland Pluvier', '+33 350 114 6802', '42 Mesta Terrace');
insert into [Shipping] (id, name, phone, address) values (22, 'Rutherford Barensen', '+351 152 531 3628', '465 Pearson Center');
insert into [Shipping] (id, name, phone, address) values (23, 'Winfield Arnhold', '+967 620 305 1363', '0 Mandrake Avenue');
insert into [Shipping] (id, name, phone, address) values (24, 'Melinde Reen', '+62 539 771 9724', '2 Eagle Crest Junction');
insert into [Shipping] (id, name, phone, address) values (25, 'Beryl Concannon', '+7 473 687 1638', '03445 Vera Court');
insert into [Shipping] (id, name, phone, address) values (26, 'Netta Shaughnessy', '+212 205 779 7606', '8430 Golden Leaf Lane');
insert into [Shipping] (id, name, phone, address) values (27, 'Corbie Sedcole', '+63 293 297 6088', '11387 Buell Alley');
insert into [Shipping] (id, name, phone, address) values (28, 'Alvinia Fogden', '+86 750 160 2202', '312 Buhler Point');
insert into [Shipping] (id, name, phone, address) values (29, 'Madge Summons', '+58 307 869 7969', '32867 Rusk Drive');
insert into [Shipping] (id, name, phone, address) values (30, 'Dudley Cana', '+34 948 458 1449', '53257 Hoepker Point');
SET IDENTITY_INSERT [Shipping] OFF 
create table Orders (
	id INT IDENTITY(1,1) NOT NULL ,
	user_id INT ,
	totalPrice [float] NULL ,
	note VARCHAR(255),
	created_date DATE,
	shipping_id INT, 
);
ALTER TABLE Orders 
ADD Foreign KEY (shipping_id) REFERENCES [Shipping](id);
ALTER TABLE Orders
ADD Foreign KEY (account_id) REFERENCES Category(id);
SET IDENTITY_INSERT Orders ON
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (1, 17, 6449739, 'Grouse, sage', '7/4/2022', 24);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (2, 71, 4230703, 'Marmot, hoary', '11/5/2021', 14);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (3, 88, 8385942, 'Field flicker', '8/5/2022', 5);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (4, 82, 1675913, 'Water monitor', '1/31/2021', 14);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (5, 41, 9017757, 'Pine squirrel', '3/30/2021', 4);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (6, 28, 7459850, 'Turkey vulture', '9/21/2021', 3);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (7, 32, 7934467, 'Capuchin, white-fronted', '10/19/2022', 30);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (8, 50, 4199803, 'Stork, european', '1/23/2021', 7);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (9, 15, 5435074, 'Creeper, black-tailed tree', '4/28/2022', 7);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (10, 69, 5019999, 'Pale-throated three-toed sloth', '8/6/2021', 4);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (11, 5, 1817476, 'Dragon, netted rock', '1/24/2022', 30);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (12, 30, 7849248, 'Amazon parrot (unidentified)', '10/15/2022', 2);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (13, 24, 9133468, 'Heron, black-crowned night', '5/21/2022', 5);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (14, 79, 3246941, 'White-necked raven', '4/24/2021', 1);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (15, 24, 5739524, 'Beaver, american', '3/20/2022', 6);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (16, 89, 6277425, 'Common wallaroo', '11/12/2021', 20);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (17, 33, 2784859, 'Short-nosed bandicoot', '9/29/2021', 21);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (18, 75, 2442303, 'Cormorant, javanese', '8/27/2022', 5);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (19, 12, 9795876, 'Cheetah', '1/27/2022', 5);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (20, 79, 4678892, 'Chilean flamingo', '9/28/2021', 19);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (21, 77, 6221136, 'Little grebe', '6/18/2021', 22);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (22, 81, 3548007, 'Owl, white-browed', '5/29/2022', 16);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (23, 40, 1201709, 'Common goldeneye', '2/8/2022', 17);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (24, 1, 296608, 'King vulture', '10/1/2022', 18);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (25, 81, 4352117, 'North American river otter', '12/21/2021', 19);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (26, 39, 4790720, 'Albatross, galapagos', '10/1/2022', 16);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (27, 2, 3849372, 'Common goldeneye', '10/22/2022', 5);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (28, 7, 7557999, 'Possum, western pygmy', '9/23/2021', 30);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (29, 72, 2509248, 'Three-banded plover', '5/10/2021', 12);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (30, 37, 782207, 'Egret, great', '3/12/2021', 7);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (31, 6, 3814842, 'Yellow-billed hornbill', '3/3/2022', 6);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (32, 37, 106994, 'Beaver, north american', '1/28/2021', 1);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (33, 85, 1284097, 'Tree porcupine', '2/22/2021', 28);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (34, 66, 592369, 'Marine iguana', '1/3/2022', 16);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (35, 14, 6406291, 'Civet (unidentified)', '5/25/2021', 23);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (36, 55, 7767222, 'Brown antechinus', '5/29/2021', 3);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (37, 50, 2945596, 'Deer, barasingha', '2/22/2021', 26);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (38, 67, 2383541, 'Lion, galapagos sea', '2/24/2021', 28);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (39, 70, 9274719, 'Parakeet, rose-ringed', '8/21/2021', 14);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (40, 14, 5607537, 'Deer, roe', '11/21/2021', 26);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (41, 76, 8280998, 'Leadbeateri''s ground hornbill', '12/9/2021', 9);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (42, 41, 5177629, 'Buffalo, asian water', '1/20/2022', 10);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (43, 10, 1964847, 'Bustard, stanley', '8/29/2021', 17);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (44, 43, 571733, 'Nile crocodile', '7/29/2021', 7);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (45, 64, 6972656, 'Flicker, field', '4/9/2021', 17);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (46, 32, 8757581, 'Common green iguana', '11/11/2021', 26);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (47, 86, 5818277, 'Palm squirrel', '4/8/2022', 24);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (48, 18, 2893088, 'Water moccasin', '11/11/2022', 25);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (49, 97, 3648350, 'Brazilian otter', '11/16/2021', 17);
insert into Orders (id, user_id, totalPrice, note, created_date, shipping_id) values (50, 1, 5138650, 'Monitor lizard (unidentified)', '10/26/2021', 21);
SET IDENTITY_INSERT Orders OFF 

create table OrderDetail (
	id INT IDENTITY(1,1) NOT NULL ,
	order_id INT,
	productName VARCHAR(255),
	productImage VARCHAR(255),
	productPrice [float] ,
	quantity INT
);
SET IDENTITY_INSERT OrderDetail ON 
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (1, 6, 'Bar Mix - Lemon', 'http://dummyimage.com/204x100.png/ff4444/ffffff', 86, 94);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (2, 33, 'Cheese - Fontina', 'http://dummyimage.com/212x100.png/dddddd/000000', 6, 30);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (3, 18, 'Soup Campbells Mexicali Tortilla', 'http://dummyimage.com/225x100.png/dddddd/000000', 29, 26);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (4, 33, 'Corn - Cream, Canned', 'http://dummyimage.com/180x100.png/cc0000/ffffff', 91, 20);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (5, 13, 'Swiss Chard - Red', 'http://dummyimage.com/182x100.png/cc0000/ffffff', 15, 10);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (6, 11, 'Garlic - Peeled', 'http://dummyimage.com/210x100.png/ff4444/ffffff', 34, 24);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (7, 29, 'Parasol Pick Stir Stick', 'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 98, 48);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (8, 29, 'Sea Bass - Fillets', 'http://dummyimage.com/118x100.png/dddddd/000000', 18, 57);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (9, 5, 'Pepper - Black, Crushed', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', 37, 77);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (10, 24, 'Kolrabi', 'http://dummyimage.com/190x100.png/dddddd/000000', 2, 1);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (11, 21, 'Basil - Dry, Rubbed', 'http://dummyimage.com/144x100.png/cc0000/ffffff', 13, 37);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (12, 8, 'Beer - Sleeman Fine Porter', 'http://dummyimage.com/167x100.png/ff4444/ffffff', 72, 14);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (13, 10, 'Bouillion - Fish', 'http://dummyimage.com/226x100.png/ff4444/ffffff', 95, 89);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (14, 43, 'Pepper - Orange', 'http://dummyimage.com/211x100.png/ff4444/ffffff', 60, 7);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (15, 4, 'Squash - Sunburst', 'http://dummyimage.com/104x100.png/cc0000/ffffff', 58, 43);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (16, 16, 'Onions - Vidalia', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 85, 11);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (17, 45, 'Paper - Brown Paper Mini Cups', 'http://dummyimage.com/214x100.png/cc0000/ffffff', 67, 1);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (18, 24, 'Potatoes - Yukon Gold 5 Oz', 'http://dummyimage.com/148x100.png/ff4444/ffffff', 86, 53);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (19, 32, 'Bagelers - Cinn / Brown Sugar', 'http://dummyimage.com/244x100.png/5fa2dd/ffffff', 46, 6);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (20, 40, 'Peach - Fresh', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 40, 24);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (21, 22, 'Spice - Onion Powder Granulated', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 98, 6);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (22, 29, 'Water - Mineral, Carbonated', 'http://dummyimage.com/129x100.png/5fa2dd/ffffff', 23, 6);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (23, 41, 'Butcher Twine 4r', 'http://dummyimage.com/218x100.png/ff4444/ffffff', 1, 56);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (24, 38, 'Plaintain', 'http://dummyimage.com/158x100.png/dddddd/000000', 78, 98);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (25, 45, 'Island Oasis - Raspberry', 'http://dummyimage.com/249x100.png/cc0000/ffffff', 23, 96);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (26, 41, 'Bonito Flakes - Toku Katsuo', 'http://dummyimage.com/247x100.png/cc0000/ffffff', 68, 47);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (27, 18, 'Lamb - Rack', 'http://dummyimage.com/109x100.png/ff4444/ffffff', 56, 14);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (28, 10, 'Soup Campbells - Italian Wedding', 'http://dummyimage.com/146x100.png/dddddd/000000', 83, 80);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (29, 12, 'Beef - Striploin Aa', 'http://dummyimage.com/177x100.png/dddddd/000000', 75, 62);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (30, 27, 'Wine - White, Riesling, Henry Of', 'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 37, 2);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (31, 8, 'Container - Foam Dixie 12 Oz', 'http://dummyimage.com/180x100.png/dddddd/000000', 42, 87);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (32, 31, 'English Muffin', 'http://dummyimage.com/109x100.png/dddddd/000000', 28, 17);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (33, 5, 'Beef - Kindney, Whole', 'http://dummyimage.com/125x100.png/cc0000/ffffff', 20, 3);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (34, 48, 'Lemonade - Kiwi, 591 Ml', 'http://dummyimage.com/248x100.png/cc0000/ffffff', 19, 50);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (35, 43, 'Lamb - Shanks', 'http://dummyimage.com/226x100.png/cc0000/ffffff', 89, 32);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (36, 9, 'Sea Bass - Fillets', 'http://dummyimage.com/119x100.png/cc0000/ffffff', 87, 84);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (37, 4, 'Nutmeg - Ground', 'http://dummyimage.com/174x100.png/cc0000/ffffff', 79, 35);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (38, 7, 'Beef - Ox Tongue', 'http://dummyimage.com/199x100.png/cc0000/ffffff', 96, 68);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (39, 48, 'Salami - Genova', 'http://dummyimage.com/245x100.png/dddddd/000000', 69, 73);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (40, 13, 'Bread - Petit Baguette', 'http://dummyimage.com/233x100.png/cc0000/ffffff', 86, 19);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (41, 46, 'Pasta - Shells, Medium, Dry', 'http://dummyimage.com/225x100.png/dddddd/000000', 88, 27);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (42, 14, 'Juice - Cranberry 284ml', 'http://dummyimage.com/160x100.png/dddddd/000000', 1, 35);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (43, 50, 'Liners - Banana, Paper', 'http://dummyimage.com/241x100.png/5fa2dd/ffffff', 75, 42);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (44, 38, '7up Diet, 355 Ml', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 15, 69);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (45, 17, 'Food Colouring - Red', 'http://dummyimage.com/124x100.png/cc0000/ffffff', 12, 34);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (46, 33, 'Chicken - Livers', 'http://dummyimage.com/237x100.png/dddddd/000000', 51, 14);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (47, 13, 'Haggis', 'http://dummyimage.com/154x100.png/ff4444/ffffff', 78, 45);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (48, 7, 'Cookies - Englishbay Oatmeal', 'http://dummyimage.com/166x100.png/cc0000/ffffff', 65, 99);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (49, 19, 'Appetizer - Sausage Rolls', 'http://dummyimage.com/215x100.png/ff4444/ffffff', 7, 70);
insert into OrderDetail (id, order_id, productName, productImage, productPrice, quantity) values (50, 33, 'Butter Ripple - Phillips', 'http://dummyimage.com/238x100.png/dddddd/000000', 77, 73);
SET IDENTITY_INSERT OrderDetail OFF
