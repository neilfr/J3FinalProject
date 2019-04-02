DROP database IF EXISTS bookingsystem_db;
CREATE database bookingsystem_db;
USE bookingsystem_db;

CREATE TABLE client (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  Name CHAR(50) NOT NULL DEFAULT '',
  CreditCard CHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`));
INSERT INTO client VALUES (1,'Archie Archibald','1234 56789 0123');
INSERT INTO client VALUES (2,'Bobby Bluenote', '0987 6543 2109');
INSERT INTO client VALUES (3,'Cathy Cooper', '4567 8901 2345');

CREATE TABLE hall (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  Name CHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`));
INSERT INTO hall VALUES (1,'Albertine');
INSERT INTO hall VALUES (2,'Blush Noisette');
INSERT INTO hall VALUES (3,'Chestnut Rose');

CREATE TABLE booking (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  HallID INT(11) NOT NULL,
  ClientID INT(11) NOT NULL,
  Date DATE NOT NULL,
  PRIMARY KEY (`ID`));
INSERT INTO booking VALUES (1,1,1,'2019-05-03');
INSERT INTO booking VALUES (2,1,3,'2019-05-04');
INSERT INTO booking VALUES (3,3,2,'2019-05-05');
INSERT INTO booking VALUES (4,2,2,'2019-05-11');