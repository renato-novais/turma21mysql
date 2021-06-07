create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza(
id int auto_increment,
sabor varchar(255) not null,
ingredientes varchar (255) not null,
borda_recheada boolean not null,
qtd_Pizza varchar(255) not null,
preco_unit double not null,
primary key (id)
);

insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Calabresa","calabresa e cebola",true,100,30);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Sensação","morando e chocolate",true,60,48);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Frango catupiry","frango desfiado com catupiry",true,90,42);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Muçarela","queijo, azeitona e tomate",true,100,30);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Atum","atum sólido e cebola",true,60,48);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Brócolis","brócolis, molho de tomate",true,30,50);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Couve-Flor"," alho-poró, cebola roxa, molho de tomate, pimenta-do-reino",true,40,55);
insert tb_pizza (sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit) values ("Prestígio","coco e chocolate",true,30,58);

create table tb_categoria(
id int auto_increment,
tipo varchar(255) not null,
com_carne boolean,
especialidade varchar(255),
pizza_id int,
primary key (id),
foreign key (pizza_id) references tb_pizza (id)
);

insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", true, "Tradicional", 1);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Doce", false, "Especial", 2);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", true, "Tradicional", 3);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", false, "Tradicional", 4);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", true, "Tradicional", 5);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", false, "Vegana", 6);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Salgada", false, "Vegana", 7);
insert tb_categoria (tipo, com_carne, especialidade, pizza_id) values ("Doce", false, "Especial", 8);

select * from tb_pizza;
select * from tb_categoria;

select sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit, tb_categoria.tipo as categoria, tb_categoria.com_carne as possui_carne, tb_categoria.especialidade as especialidade
from tb_pizza inner join tb_categoria on tb_pizza.id = tb_categoria.pizza_id;

select * from tb_pizza where preco_unit > 45;
select * from tb_pizza where preco_unit between 29 and 60;
select * from tb_pizza where sabor like "C%";

select sabor, ingredientes, borda_recheada, qtd_Pizza, preco_unit, tb_categoria.tipo as categoria, tb_categoria.com_carne as possui_carne, tb_categoria.especialidade as especialidade
from tb_pizza inner join tb_categoria on tb_pizza.id = tb_categoria.pizza_id where especialidade like "Vegana";

drop database db_pizzaria_legal;









