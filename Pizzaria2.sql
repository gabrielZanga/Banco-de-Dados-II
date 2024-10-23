create database pizzaria;
use pizzaria;

create table cliente(
cliente_id int not null auto_increment,
telefone varchar(15),
nome varchar(30),
logradouro varchar(30),
numero decimal(5.0),
complemento varchar(30) null,
bairro varchar(30),
referencia varchar(30),
primary key (cliente_id)
);

create table pedido(
pedido_id int not null auto_increment,
cliente_id int not null,
dataa datetime,
valor decimal(5.2),
primary key (pedido_id),
foreign key (cliente_id) references cliente(cliente_id)
);

create table pizza(
pizza_id int not null auto_increment,
nome varchar(30),
descricao varchar(30),
valor decimal(4.2),
primary key (pizza_id)
);

create table item_pedido(
pedido_id int not null,
pizza_id int not null,
quantidade decimal(2.0),
valor decimal(5.2),
foreign key (pizza_id) references pizza(pizza_id),
foreign key (pedido_id) references pedido(pedido_id)
);

create table fornecedores (
    fornecedor_id int primary key,
    nome varchar(50),
    Bairro varchar(50),
    cidade varchar(50)    
);


insert into cliente(telefone,nome,logradouro,numero,bairro) values ('11 11111111','Gabriel Vieira','Rua Tobias de Aguiar','111','Centro');
insert into cliente(telefone,nome,logradouro,numero,bairro) values ('22 22222222','Bruna Dantas','Rua das Rosas','222','Cantareira');
insert into cliente(telefone,nome,logradouro,numero,bairro) values ('33 33333333','Carlos Vieira','Rua das Avencas','333','Bela Vista');
insert into cliente(telefone,nome,logradouro,numero,bairro) values ('44 44444444','Julia Silva','Rua dos Cravos','444','Cantareira');
insert into cliente(telefone,nome,logradouro,numero,bairro) values ('55 55555555','Mariana Silva','Rua das Acácias','555','Bela Vista');
insert into cliente(telefone,nome,logradouro,numero,bairro) values ('66 66666666','Laura Madureira','Rua das Gardênias','666','Cantareira');

insert into pedido(cliente_id,dataa,valor) values (1,'2016-12-15 20:30',32.00);
insert into pedido(cliente_id,dataa,valor) values (2,'2016-12-15 20:38',40.00);
insert into pedido(cliente_id,dataa,valor) values (3,'2016-12-15 20:59',22.00);
insert into pedido(cliente_id,dataa,valor) values (1,'2016-12-17 22:00',42.00);
insert into pedido(cliente_id,dataa,valor) values (2,'2016-12-18 19:00',45.00);
insert into pedido(cliente_id,dataa,valor) values (3,'2016-12-18 21:12',44.00);
insert into pedido(cliente_id,dataa,valor) values (4,'2016-12-19 22:22',72.00);
insert into pedido(cliente_id,dataa,valor) values (6,'2016-12-19 22:26',34.00);

insert into pizza (nome,valor) values ("inglesa",15.00);
insert into pizza (nome,valor) values ("portuguesa",15.00);
insert into pizza (nome,valor) values ("4 queijos",25.00);
insert into pizza (nome,valor) values ("5 queijos",30.00);
insert into pizza (nome,valor) values ("provolone",35.00);

insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (1,1,1.0,15.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (1,4,1.0,15.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (2,3,2.0,40.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (3,5,1.0,22.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (4,3,1.0,20.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (4,5,1.0,22.00);
insert into item_pedido (pedido_id,pizza_id,quantidade,valor) values (5,1,3.0,45.00);

insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (1, 'Fornecedor A', 'Bela Vista', 'São Paulo');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (2, 'Fornecedor B', 'Cantareira', 'Rio de Janeiro');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (3, 'Fornecedor C', 'Primavera', 'São Paulo');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (4, 'Fornecedor D', 'Copacabana', 'Rio de Janeiro'); 
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (5, 'Fornecedor E', 'Jardins', 'São Paulo');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (6, 'Fornecedor F', 'Morumbi', 'Rio de Janeiro');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (7, 'Fornecedor G', 'Bela Vista', 'São Paulo');
insert into fornecedores (fornecedor_id, nome, bairro, cidade) values (8, 'Fornecedor H', 'Cantareira', 'Rio de Janeiro');


select * from pedido where dataa = (select min(dataa) from pedido);
select * from pedido where dataa = (select max(dataa) from pedido);

select * from pedido where valor = (select max(valor) from pedido);
select * from pedido where valor = (select min(valor) from pedido);

select nome from cliente order by nome asc;
select nome from cliente order by nome desc;

select upper(nome) from cliente;

select sum(valor) from pedido where dataa like '2016-12-18%';

select dataa from pedido where (select datediff(min(dataa), max(dataa)) from pedido);

/*GROUP BY*/
select pizza_id, sum(quantidade) from item_pedido group by pizza_id;

/*HAVING*/
select pizza_id, sum(quantidade) from item_pedido group by pizza_id having sum(quantidade) > 2;

/*DISTINCT*/
select distinct telefone from cliente;

/*UNION*/
select bairro from cliente union select bairro from fornecedores;

