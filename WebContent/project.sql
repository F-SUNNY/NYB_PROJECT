create database lastDB;
use	lastDB;

show tables;

create table product(
productid varchar(10) not null,
pname varchar(100) not null,
price int not null,
description text,
manufacturer varchar(100),
category varchar(100),
p_condition varchar(100),
p_condition_2 varchar(100),
fileName varchar(100),
primary key(productid)
);

desc product;
select*from product;

create table member(
id varchar(10) not null,
pw varchar(15) not null,
name varchar(15) not null,
email varchar(30),
nickname varchar(10),
primary key(id)
);

desc member;
select*from member;

create table buy(
id varchar(10) not null,
name varchar(500) not null,
phone varchar(500) not null,
address varchar(500),
how varchar(500),
primary key(id)
);

desc buy;
select*from buy;
