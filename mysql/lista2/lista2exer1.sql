create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagem(
id int auto_increment,
nome varchar(255) not null,
genero varchar(255) not null,
nivel int not null,
ataque int not null,
defesa int not null,
primary key (id)
);

-- populando tabela personagem
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Ragnar","Masculino",40,1800,1700);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Lagertha","Feminino",40,2500,1500);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Wanda","Feminino",100,3000,1100);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Okoye ","Feminino",60,2200,2200);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Mulan","Feminino",50,1900,1600);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Gandalf","Masculino",90,2900,1300);
insert tb_personagem (nome, genero, nivel, ataque, defesa) values ("Cap.América","Masculino",80,2500,3000);

create table tb_classe(
id int auto_increment,
tipo varchar(255) not null,
especial varchar(255) not null,
personagem_id int,
primary key (id),
foreign key (personagem_id) references tb_personagem (id)
);

-- populando tabela classe
insert tb_classe (tipo, especial, personagem_id) values ("Guereirro","Grito de guerra",1);
insert tb_classe (tipo, especial, personagem_id) values ("Arqueira","Flecha flamejante",2);
insert tb_classe (tipo, especial, personagem_id) values ("Feiticeira","Realidade Aterada",3);
insert tb_classe (tipo, especial, personagem_id) values ("Guerreira","Arremesso de Lança",4);
insert tb_classe (tipo, especial, personagem_id) values ("Guerreira","Retalhar",5);
insert tb_classe (tipo, especial, personagem_id) values ("Feiticeiro", "Rajada de Energia", 6);
insert tb_classe (tipo, especial, personagem_id) values ("Guerreiro","Arremesso de Escudo",7);
	
select * from tb_personagem;
select * from tb_classe;

select nome, genero, nivel, ataque, defesa, tb_classe.tipo as classe, tb_classe.especial as ataque_especial
from tb_personagem inner join tb_classe on tb_personagem.id = tb_classe.personagem_id; -- Inner join entre tabela classe e personagem

select * from tb_personagem where ataque > 2000; -- personagens com o poder de ataque maior do que 2000
select * from tb_personagem where defesa between 1000 and 2000; -- personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where nome like "C%"; --  buscando os personagens com a letra C.


--  traga todos os personagem de uma classe específica (guerreirx)
select nome, genero, nivel, ataque, defesa, tb_classe.tipo as classe, tb_classe.especial as ataque_especial
from tb_personagem inner join tb_classe on tb_personagem.id = tb_classe.personagem_id where tipo like "Gue%";

drop database db_generation_game_online;









