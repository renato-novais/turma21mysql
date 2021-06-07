-- criar um banco de dados
create database db_escola;

-- acessar banco de dados
use db_escola;

-- criar tabela
create table tb_alunos(
id int auto_increment,
nome varchar(255),
ensino varchar(255),
ano int,
periodo varchar(255),
nota double,
primary key(id)
);

-- buscar dados
select * from tb_alunos;
select * from tb_alunos where nota >= 7;
select * from tb_alunos where nota < 7;

-- inserir dados
insert into tb_alunos (nome, ensino, ano, periodo, nota) values ("Renato","Medio",3,"Manhã",10);
insert into tb_alunos (nome, ensino, ano, periodo, nota) values ("Giovanna","Fundamental",3,"Manhã",10);
insert into tb_alunos (nome, ensino, ano, periodo, nota) values ("Larissa","Medio",3,"Noite",6);
insert into tb_alunos (nome, ensino, ano, periodo, nota) values ("Lucas","Medio",3,"Manhã",8);
insert into tb_alunos (nome, ensino, ano, periodo, nota) values ("Vagner","Fundamental",3,"Tarde",5);

-- atualizar e deletar dados
update tb_alunos set nota = 7 where id = 3;

drop database db_escola;
