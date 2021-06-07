create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("Pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("Imbutidos",true);
insert tb_categoria (descricao, ativo) values ("Outros",true);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco float not null,
qtProduto int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id) -- chave estrangeira para relacionar tabelas
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);

select * from tb_produtos;
select * from tb produtos where nome like "%A%"; -- pesquisa e traz tudo que há entre os % %
select * from tb_produtos where preco in (20,30,40); -- pesquisa e traz todos os dados que estiverem entre parenteses
select * from tb_produtos where preco between 20 and 40; -- pesquisa e traz todos os dados que está entre os valores
select count(*) from tb_produtos; -- contagem de itens cadastrados
select avg(preco) as media from tb_produtos; -- calcula e mostra media da categoria solicitada, "as" muda o nome da categoria que realiza a operação
select sum(preco) from tb_produtos; -- calcula e mostra a soma de dete da categoria solicitada

-- sintaxe para inner join, une informações em comum de ambas tabelas
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria 
from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

-- sintaxe para left join, une informações em comum de ambas tabelas e trás informações não relacionadas da esquerda
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria 
from tb_produtos left join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

-- sintaxe para right join, une informações em comum de ambas tabelas e trás informações não relacionadas da direita
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria 
from tb_produtos right join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

drop database db_cidade_das_carnes;

