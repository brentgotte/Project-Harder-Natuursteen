DROP DATABASE IF EXISTS harder_natuursteen;
create database harder_natuursteen;

create table login
(
id int(10) auto_increment
primary key,
user varchar(50) not null,
password varchar(100) not null,
status varchar(50) not null,
constraint login_id_uindex
unique (id)
);


create table orders
(
id int auto_increment
primary key,
order_nummer int null,
aanmaak datetime default CURRENT_TIMESTAMP null,
afgehandeld varchar(3) charset latin1 null,
klant varchar(255) charset latin1 null,
opmerking varchar(255) charset latin1 null,
status varchar(255) charset latin1 null,
`update` timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
constraint orders_id_uindex
unique (id)
)
charset = utf8mb4;
