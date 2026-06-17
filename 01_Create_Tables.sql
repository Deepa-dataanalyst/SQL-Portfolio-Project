/*customers*/

create table customers(
customer_id int primary key,
customer_name varchar(20),
city varchar(30),
age int
);
/*DNA Kits*/

create table Health_Kits(
kit_id int primary key,
kit_type varchar(30),
price decimal(10,2)
);

/*Orders*/
create table Orders1(
order_id int primary key,
customer_id int,
kit_id int,
order_date date,
foreign key(customer_id)references
customers(customer_id),
foreign key (kit_id) references
Health_Kits(kit_id)
);

