--Author: JianPei Li
--SnkrsHome Database Design Version 1.0
DROP TABLE Customer
CREATE TABLE Customer(
Customer_ID 	int IDENTITY(1,1)  PRIMARY KEY,
E_Mail 			VARCHAR(255),
Password		VARCHAR(155),
PhoneNumber		VARCHAR(20),
FirstName		VARCHAR(20),
LastName		VARCHAR(20),
Country         VARCHAR(20),
State			VARCHAR(20),
City			VARCHAR(20),
ZipCode			VARCHAR(20),
MemberShip		VARCHAR(20),
Address         VARCHAR(255),
)

CREATE TABLE ShippingCom(
ShippingID 	VARCHAR(10) PRIMARY KEY,
Name		VARCHAR(20),
Address		VARCHAR(125),
)


DROP TABLE Orders
CREATE TABLE Orders(
Order_ID		int IDENTITY(1,1),
StartDate		DATE,
PaymentDate		DATE,
FinishedDate	DATE NULL,
CustomerID		INT,
ShipID			VARCHAR(10),
ItemList        VARCHAR(255) NULL,
PRIMARY KEY(Order_ID),
FOREIGN KEY(CustomerID) REFERENCES Customer(Customer_ID),
FOREIGN KEY(ShipID) REFERENCES ShippingCom(ShippingID ),
)

DROP TABLE Item
CREATE TABLE Item(
ItemID			VARCHAR(20)  PRIMARY KEY,
Name			VARCHAR(20),
Price			VARCHAR(20),
Image			VARCHAR(30),
Size			VARCHAR(20),
Quantity        int,
Description		VARCHAR(255),
)

CREATE TABLE Admin(
AdminID		int IDENTITY(1,1),
Account     VARCHAR(20),
Password    VARCHAR(40),
PRIMARY KEY(AdminID),
)
----Admin
INSERT INTO Admin VALUES('JasperAdministrator','123456');

----Customer
INSERT INTO Customer VALUES ('Joe123@gmail.com','123Joe','90372741','Joe','Lee',
'China','GuangDong','GuangZhou','511400','Bronze','Null');
INSERT INTO Customer VALUES ('Hans123@gmail.com','123Hans','90566441','Hans','Smith',
'UK','Engaland','London','514500','Bronze','Null');
INSERT INTO Customer VALUES ('David123@gmail.com','123David','90223741','David','Brown',
'China','ShangHai','ShangHai','516700','Bronze','Null');
INSERT INTO Customer VALUES ('Daved123@gmail.com','123David','90223741','Daved','Brown',
'China','ShangHai','ShangHai','576700','Bronze','Null');
---Item
INSERT INTO Item VALUES ('i001','Kobe11ftb','1000','ftb.jpg','42.5','10','Nike Kobe 11 Elite Low Black Mamba Collection Fade to Black');
INSERT INTO Item VALUES ('i002','LBJ17','200','monster.jpg','43','20','The Monstars have crash-landed in the Windy City, prepared to strip us of some of our greatest hardwood heroes');
INSERT INTO Item VALUES ('i003','JHVol4','250','Vol4.jpg','42','25','These basketball shoes are designed specifically for James Harden game to help him stay strong in the fourth quarter.');
INSERT INTO Item VALUES ('i004','PUMAClyde','180','Puma.jpg','40','25','PUMA Hoops foundation is Clyde. 1970s Walt Clyde Frazier himself was the first player to truly embody the idea of on-court and off-court swagger. ');
INSERT INTO Item VALUES ('i005','Kobe6Grinch','680','Kobe6.jpg','42.5','38','The Nike Zoom Kobe 6 ¡®Grinch¡¯ launched Christmas Day in 2010, featuring a Green Apple colorway that calls to mind to the Dr. Seuss character with a penchant for ruining everyone¡¯s famous December holiday');
---ShippingCom
INSERT INTO ShippingCom VALUES ('s001','FedEx','31 Kaki Bukit Road 3 #04-18/19, Techlink, 417818');
INSERT INTO ShippingCom VALUES ('s002','SF-express','7 Changi South Street 2, #01-01 Xilin Districentre Building C, Singapore 486415');
INSERT INTO ShippingCom VALUES ('s003','DHL','DHL Express ServicePoint - Esso Toa Payoh Lorong 2');
---Orders
INSERT INTO Orders VALUES ('2020-02-10','2020-02-10','2020-04-10','1','s002','LBJ 17-Size:43-Quantity:1');
INSERT INTO Orders VALUES ('2020-06-17','2020-06-18','2020-06-23','1','s001','JH Vol4-Size:42-Quantity:1');
INSERT INTO Orders VALUES ('2020-04-25','2020-04-26','2020-04-29','3','s002','PUMA Clyde-Size:40-Quantity:1');
INSERT INTO Orders VALUES ('2020-07-12','2020-07-12','2020-08-18','2','s003','Kobe 6 Grinch-Size:42.5-Quantity:1');

-------For make Test and Try
SELECT ItemID,Name,Price,Image,Size,Description 
FROM Item ORDER BY Name;

SELECT Customer_ID 
FROM Customer c WHERE c.E_Mail = 'Joe123@gmail.com' AND c.Password = '123Joe'

INSERT INTO Customer(E_Mail,Password,FirstName,LastName) VALUES ('afaf@ok.com','ojbk','Joe','Smith')

UPDATE Customer SET Country = 'US', State = 'California', City = 'Las Angeles', ZipCode='511489' WHERE Customer.E_Mail = 'Daved123@gmail.com'
UPDATE Customer SET Country =  'US', State ='California', City = 'Las Angeles', ZipCode= '511489', Address = 'OKOKOK', PhoneNumber = '43243' WHERE Customer.E_Mail = 'Daved123@gmail.com'

INSERT INTO Orders(StartDate,PaymentDate,CustomerID,ShipID,ItemList) VALUES ('2020-11-29','2020-11-29','1','s001','LBJ 17,43')

UPDATE Customer SET Password = 'ABCDEF' WHERE E_Mail = 'Joe123@gmail.com'

SELECT * FROM Admin WHERE Password = '123456';

UPDATE Admin SET Password = '123456' WHERE Account = 'JasperAdministrator'