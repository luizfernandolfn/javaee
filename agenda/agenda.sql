create database dbagenda;
show databases;
use dbagenda;
create table contatos(
	idcon int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50)
);
show tables;
describe contatos;

/* CRUD CREATE*/
insert into contatos (nome, fone, email) values ('Bill Gatesd', '99999-1111', 'bill@outlook.com');

/* CRUD READ*/
select * from contatos;
select * from contatos order by nome;
select * from contatos where idcon = 5;

/* CRUD UPDATE*/
update contatos set nome="Luiz Fernando Nunes", fone="35984597193", email="luizfernandolfn@gmail.com" where idcon=2;
/* CRUD DELETE*/