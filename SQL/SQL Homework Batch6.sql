--- Dia Restaurant ---
-- coding condition
-- Restaurant Owners
-- 5 table
-- 1 Fact, 4 dimension
-- google foreign
-- write 3 queries to analyze the data
-- 1 subquery or with clause
CREATE TABLE menu (
	menuid INT,
  menuname TEXT,
  PRIMARY KEY (menuid)
);


insert into menu values
  (1,'Steak'),
  (2,'Chicken'),
  (3,'T Bone'),
  (4,'Salad');

  
  
create table employee(
  employeeid int,
  name varchar(200),
  primary key(employeeid)
);

insert into employee values
  (1001,'Prasert'),
  (1002,'Somjai'),
  (1003,'Supakit');

create table branch(
  branchid int,
  branchname varchar(10),
  primary key(branchid)
);

insert into branch values
  (01,'Ladphraw'),
  (02,'Victory Manument'),
  (03,'Siam paragon');

create table orders(
  ordersid int,
  datetime date,
  totalprice int,
  primary key(ordersid)
);


insert into orders values
  (1231,'2022-8-30',1020),
  (1232,'2022-8-31',950),
  (1233,'2022-8-31',213),
  (1234,'2022-8-31',111),
  (1235,'2022-8-31',950);


create table factsales (
  customerid int,
  csname varchar(10),
  ordersid int,
  employeeid int,
  branchid int,
  menuid int,
  primary key(customerid)
  FOREIGN KEY (ordersid) REFERENCES orders(ordersid),
  FOREIGN KEY (employeeid) REFERENCES employee(employeeid),
  FOREIGN KEY (branchid) REFERENCES branch(branchid),
  FOREIGN KEY (menuid) REFERENCES menu(menuid)
);

insert into factsales values
  (11,'Chester',1231,1002,02,3),
  (12,'Amonnat',1234,1001,01,1),
  (13,'Ken',1232,1003,04,2),
  (14,'Smoothy',1233,1002,03,2);



-- sqlcommand

.mode markdown
.header on

select csname,totalprice,branchname,datetime 
from factsales as fs
join orders as od
  on fs.ordersid = od.ordersid
join branch as br
  on fs.branchid = br.branchid
order by totalprice desc;

--As we can see the victory manument is the most profitable branch--

-- what is the most popular food in our restaurant
select csname,count(menuname)as quantity,menuname
from factsales as fs 
join menu on fs.menuid = menu.menuid
group by menuname;

-- so the most popular food in our restaurant is chicken

select max(totalprice),name from (
  select csname,name,totalprice 
  from factsales as fs
  join employee as em
    on fs.employeeid = em.employeeid
   join orders as od
  on fs.ordersid = od.ordersid
  );

-- the best sales is Employee name somjai

