Create database earlycodestore;
use earlycodestore;
create table clothings(productID int not null primary key auto_increment, productName varchar(255) not null, 
productDesc varchar(255) not null, productPrice float not null);

alter table clothings add column productlocation varchar(100)not null;
desc clothings;
alter table clothings modify column productlocation varchar(255) null;
desc clothings;
alter table clothings change column productDesc ProductDetails varchar(255) not null;
desc clothings;
alter table clothings drop column productlocation;
desc clothings;
alter table clothings rename to clothingTables;
desc clothingTables;
show tables;