create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id int auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

insert tb_categoria (tipo, descricao) values ("Genérico","Medicamento registrado pelo nome genérico ou químico da substância ativa que o compõe, mas que não possui os testes de biodisponibilidade.");
insert tb_categoria (tipo, descricao) values ("Refêrencia","Medicamento com eficácia, segurança e qualidade comprovada pela ANVISA e são medicamentos com mais de 40 anos no mercado.");
insert tb_categoria (tipo, descricao) values ("Alopático","Medicamento feito de substâncias processadas, ou seja, que já passaram por um processo de extração, purificação e síntese.");
insert tb_categoria (tipo, descricao) values ("Fitoterápico","Medicamento feito exclusivamente à base de plantas.");
insert tb_categoria (tipo, descricao) values ("Homeopático","Medicamento com substâncias capazes de causar sintomas de uma determinada doença no organismo sadio para que o sistema imunológico defenda a doença");

create table tb_produto(
id int auto_increment,
nome varchar(255) not null,
preco double not null,
quantidade int not null,
categoria_id int not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, preco, quantidade, categoria_id) values ("Maracugina",20,120,4);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Monocordil",50,80,2);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Ginseng",30,90,4);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Dipirona",2,150,1);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Paracetamol",15,100,3);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Caralluma",60,70,4);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Rivotril",48,80,2);
insert tb_produto (nome, preco, quantidade, categoria_id) values ("Ostrearum",50,25,5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "B%";

select nome, preco, quantidade, tb_categoria.tipo as categoria_remedio, tb_categoria.descricao as descricao_remedio 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, preco, quantidade, tb_categoria.tipo as categoria_remedio, tb_categoria.descricao as descricao_remedio 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo like "Refêrencia";

drop database db_farmacia_do_bem;
