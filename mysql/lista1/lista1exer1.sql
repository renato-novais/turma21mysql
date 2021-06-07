-- criar um banco de dados
create database db_rh;

-- acessar banco de dados
use db_rh;

-- criar tabela
create table tb_funcionares(
id bigint auto_increment,
nome varchar(255) not null,
cpf varchar (11) not null,
cargo varchar (255) not null,
ativo boolean,
salario float not null,
primary key (id)
);

-- buscar dados
select * from tb_funcionares; -- * -> traz todos os dados
select * from tb_funcionares order by salario ASC;
select * from tb_funcionares order by salario DESC;
select * from tb_funcionares where salario > 2000;
select * from tb_funcionares where salario < 2000;

-- inserir dados	
insert into tb_funcionares (nome, cpf, cargo, ativo, salario) values ("Renato","11111111111","desenvolvedor jr",true, 1000);
insert into tb_funcionares (nome, cpf, cargo, ativo, salario) values ("Lucas","22222222222","desenvolvedor pleno",true, 1800);
insert into tb_funcionares (nome, cpf, cargo, ativo, salario) values ("Vagner","33333333333","desenvolvedor senior",true, 2500);

update tb_funcionares set salario = 1800 where id = 2; -- atualiza o dado de uma posição da coluna
update tb_funcionares set CARGO = "desenvolvedor jr" where id = 1; -- atualiza o dado de uma posição da coluna
delete from tb_funcionares where id = 4; -- apaga o dado registrado 

alter table tb_funcionares -- adiciona coluna de atributo
add descricao varchar(255);

alter table tb_funcionares change descricao produtos varchar(255); -- altera o nome do atributo da coluna
alter table tb_funcionares;

drop database db_rh;