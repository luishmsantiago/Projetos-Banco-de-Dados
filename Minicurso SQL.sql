create database luis;

use luis;

create table pessoa(
idpessoa int not null auto_increment, -- autoincrement somente vai no ID
nome varchar(45) not null, -- todos precisam de not null para especificar as funções
data_nasc DATE not null, -- banco lê em (ano/mês/dia)
primary key (idpessoa) -- id pessoa é a chave principal da tabela, faz referência as tabelas
);

insert into pessoa (nome, data_nasc) values('João', "2001/01/01"); -- adicionar valores 
insert into pessoa (nome, data_nasc) values('Maria', "2001/01/01");

select * from pessoa; -- seleciona todas as informações da tabela pessoa

create table cidade(
idcidade int not null auto_increment primary key, -- ao invés de colocar primary key (idcidade), podemos deixar assim
nome varchar(45) not null,
estado varchar(45) not null
);

insert into cidade (nome, estado) values('Itajaí', 'SC');
insert into cidade (nome, estado) values('BC', 'SC');

select * from cidade;

create table empresa(
idempresa int not null auto_increment primary key, -- só se coloca um auto_increment
nome varchar(45),
area_atua varchar(45),
idcidade int not null,
foreign key (idcidade) references cidade (idcidade) -- referenciar que é chave estrangeira que pega como referencia a tabela cidade (idcidade)
);

insert into empresa (nome, area_atua, idcidade) values ('DeMilho', 'Alimentícia', 1);

select * from empresa;

create table trabalho(
idpessoa int not null,
idempresa int not null,
idtrabalho int not null auto_increment primary key,
salario double not null,
foreign key (idpessoa) references pessoa (idpessoa),
foreign key (idempresa) references empresa (idempresa)
);

insert into trabalho (salario, idpessoa, idempresa) values('1200', 2, 2);

select * from trabalho;

