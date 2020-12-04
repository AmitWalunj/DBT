CREATE database Assignment1;
use Assignment1;
show databases;

CREATE TABLE Member (
    Member_ID int(5),
    Member_Name varchar(30) ,
    Member_Adress varchar(50),
    Acc_Open_Date Date,
   Membership_type varchar(20) ,
    Penalty_Amount int(7)
);
CREATE TABLE Books (
    Book_No int(6),
    Book_Name varchar(30) ,
    Author_nmae varchar(30),
    Cost int(7),
	Category char(10) 
    
);
CREATE TABLE Issue (
    Lib_issue_id int(10),
    Book_No int(6) ,
    Member_Id int(5),
    Issue_Date date,
	Return_date Date
    
);


select * from  Member;


desc Member;
desc Books;
desc Issue; 

Alter table Member
drop column Penalty_Amount;

desc Member;

insert into Member(Member_ID,Member_Name,Member_Adress,Acc_Open_Date,Membership_type)
	        values(1,"Richa Sharma",'Pune',"2010/12/5","Lifetime");
insert into Member(Member_ID,Member_Name,Member_Adress,Acc_Open_Date,Membership_type)
            values(2,"Garima Sena",'Pune',sysdate(),"Annual");
insert into Member(Member_ID,Member_Name,Member_Adress,Acc_Open_Date,Membership_type)
            values(3,"Vijay Sharma",'Pune',"2015/1/5","Annual");
insert into Member(Member_ID,Member_Name,Member_Adress,Acc_Open_Date,Membership_type)
            values(4," Rakesh Gund",'Mumbai',"2019/5/8","Lifetime");
insert into Member(Member_ID,Member_Name,Member_Adress,Acc_Open_Date,Membership_type)
            values(5,"Raj Prakash",'Pune',"2013/12/8","Lifetime");
            
select * from member;

insert into Books values (101,"let us C","Denis Ritchie",450,"System");
insert into Books values (102,"Oracle - Complete Ref","Loni",550,"database");
insert into Books values (103,"mastering SOL","Loni",250,"Database");
insert into Books values (104,"PL SQL-Ref","ScottUrman",750,"Database");




select * from Books;
delete  FROM  BOOKS WHERE BOOK_NAME;


UPDATE books SET Cost =300 WHERE Book_No =103;

update Books
set Cost = 300 
where Book_No = 103;


drop table issue;



CREATE TABLE Issue (
    Lib_issue_id int(10),
    Book_No int(6) ,
    Member_Id int(5),
    Issue_Date date,
	Return_date Date
    
);

select * from issue;

insert into issue values (7001,101,1,'10-Dec-06');
insert into issue values (7002,102,2,"25/12/06");
insert into issue values (7003,104,2,"15/01/06");
insert into issue values (7004,101,1,"04/06/06");
insert into issue values (7005,104,2,"15/11/06");
insert into issue values (7006,101,3,"18/02/06");
