#splitting table
use earlycodestore;
create table GroupA_Record select*from studentsperformance where raceethnicity= 'group A';
create table GroupB_Record select*from studentsperformance where raceethnicity= 'group B';
create table GroupC_Record select*from studentsperformance where raceethnicity= 'group C';
create table GroupD_Record select*from studentsperformance where raceethnicity= 'group D';
create table GroupE_Record select*from studentsperformance where raceethnicity= 'group E';
Alter table GroupA_Record add column ID int primary key not null auto_increment first;
Alter table GroupB_record add column ID int primary key not null auto_increment first;
Alter table GroupC_Record add column ID int primary key not null auto_increment first;
Alter table GroupD_Record add column ID int primary key not null auto_increment first;
Alter table GroupE_Record add column ID int primary key not null auto_increment first;

select* from  studentsperformance where lunch = 'standard' and mathscore > 85; #two conditions given must be met
select* from  studentsperformance where lunch = 'standard' or mathscore > 85;
select* from  studentsperformance where lunch = 'standard' and raceethnicity = 'group B';
select* from  studentsperformance where (lunch = 'standard' and raceethnicity = 'group B') or (readingscore<=55);
select* from  studentsperformance where lunch like 'st%';
select* from  studentsperformance where lunch like '%d';
select* from  studentsperformance where lunch like '%ed';
select* from  studentsperformance where lunch not like '%d';
select*from studentsperformance where mathscore in(55, 72,85,90,100 ); #in is a replacenent for or
select* from  studentsperformance where writingscore<> 75;
select* from  studentsperformance where parentallevelofeducation is null;
select* from  studentsperformance where parentallevelofeducation is not null;
select* from  studentsperformance where readingscore between 60 and 75; #between works for numeric values
select groupA_record.gender, groupA_record.raceethnicity,groupA_record.lunch, groupB_record.gender, groupB_record.raceethnicity,groupB_record.lunch from groupA_record inner join groupB_record on GroupA_record.ID = groupB_record.ID;
select groupA_record.gender, groupA_record.raceethnicity,groupA_record.lunch, groupB_record.gender, groupB_record.raceethnicity,groupB_record.lunch from groupA_record left join groupB_record on GroupA_record.ID = groupB_record.ID;
select groupA_record.gender, groupA_record.raceethnicity,groupA_record.lunch, groupB_record.gender, groupB_record.raceethnicity,groupB_record.lunch from groupA_record right join groupB_record on GroupA_record.ID = groupB_record.ID;
select ID, gender, lunch from groupA_record cross join groupB_record;