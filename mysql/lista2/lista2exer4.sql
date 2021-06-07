create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Frutas",true);
insert tb_categoria (descricao, ativo) values ("Verduras ",true);
insert tb_categoria (descricao, ativo) values ("Legumes",true);
insert tb_categoria (descricao, ativo) values ("Produtos sem açúcar",true);
insert tb_categoria (descricao, ativo) values ("Produtos sem lactose",true);
insert tb_categoria (descricao, ativo) values ("Produtos sem glúten",true);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco float not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Alface",1.80,30,2);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Caixa de bombom de mashmallow",55.00,30,4);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Pão fatiado integral",22.00,30,6);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Laranja",3.00,30,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Pão de queijo",25.00,30,5);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Maçã",2.50,30,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Cenoura",1.00,30,3);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Creme de avelã",20.00,30,4);

select * from tb_produto;
select * from tb_categoria;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "C%";

select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria 
from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;

select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria 
from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where tb_categoria.descricao like "Legum%";

drop database db_cidade_das_carnes;
