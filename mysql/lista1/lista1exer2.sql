-- criar um banco de dados
create database db_ecommerce;

-- acessar banco de dados
use db_ecommerce;

-- criar tabela
create table tb_produtos(
id int auto_increment,
tipo varchar(255) not null,
produto varchar(255) not null,
disponivel boolean not null,
preco double not null,
quantidade int not null,
primary key (id)
);

-- buscar dados
select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

-- inserir dados
insert into tb_produtos (tipo, produto, disponivel, preco, quantidade) values ("Estudo","Apostila",1,510,100);
insert into tb_produtos (tipo, produto, disponivel, preco, quantidade) values ("Eletrônico","TV 4K",1,2000,50);
insert into tb_produtos (tipo, produto, disponivel, preco, quantidade) values ("Estudo","Fichario",1,43,200);
insert into tb_produtos (tipo, produto, disponivel, preco, quantidade) values ("Eletrônico","Rádio",1,60,80);
insert into tb_produtos (tipo, produto, disponivel, preco, quantidade) values ("Estudo","Estojo",1,15,300);


-- atualizar e deletar dados
drop database db_ecommerce;

	



