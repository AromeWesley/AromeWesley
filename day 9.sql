use earlycodestore;
alter table clothingtables add column ProductLocation varchar(255) not null;
alter table clothingtables add column ProductDiscount float not null;
desc clothingtables;
insert into clothingtables(productID, ProductName, ProductDetails, ProductPrice, ProductLocation, ProductDiscount) values
(1, 'Jones wear Marsh up', 'Jones wear hoodee for men', 5000, 'Abuja', 5),
(2, 'Oblique Zipper', 'Mens Oblique Zipper', 3899, 'Lagos only', 48),
(3, 'VEJARO DO1','VEJARO DO1 for Ladies office wear', 3640,'Lagos and Abuja only', 59),
(4, 'Vintage','Mens vintage shirt patterned short',3280,'All State', 54),
(5,'VEJARO DO2','VEJARO DO2 for Ladies Office Wear', 3640,'Lagos and Abuja only', 59),
(6,'Gown', 'Women Long gown Office Dress Female Party', 2980, 'All State', 51),
(7, 'Navy Blue Dress','Detail Flare Navy Blue Dress',4940,'Abuja Only', 51 ),
(8,'Jeans', '2PCs Smart Stock Jeans Mixed Black and Blue', 10015,'All State',9),
(9,'Fitted Jeans', '2 in 1 Means Stretch Slim Fitted Jeans Black and Blue', 7290, 'Abuja Only', 43),
(10, 'Gown','Red V-neck Bodycon Sleeveless Dress', 3000, 'All States', 5);
#how to see the changes introduced
select * from clothingtables;
#to make alterations
update clothingtables set productName = 'VEJARO DOO' where productID = 3;
select * from clothingtables;
#to delete
select*from clothingtables;
delete from clothingtables where productID = 10;
select * from clothingtables;

select productName from clothingtables;
select* from clothingtables where productPrice <=5000;
create index secondaryindex on clothingtables(ProductLocation);
show indexes from clothingtables;
select * from clothingtables where productLocation = 'Abuja Only';
drop index secondary on clothingtables;
show index from clothingtables;