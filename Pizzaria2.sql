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
pizza_id int not null,
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

insert into cliente(telefone,nome,logradouro,numero,bairro) values (1,'11 11111111','Gabriel Vieira','Rua Tobias de Aguiar','111','Centro');
insert into cliente(telefone,nome,logradouro,numero,bairro) values (2,'22 22222222','Bruna Dantas','Rua das Rosas','222','Cantareira');
insert into cliente(telefone,nome,logradouro,numero,bairro) values (3,'33 33333333','Carlos Vieira','Rua das Avencas','333','Bela Vista');
insert into cliente(telefone,nome,logradouro,numero,bairro) values (4,'44 44444444','Julia Silva','Rua dos Cravos','444','Cantareira');
insert into cliente(telefone,nome,logradouro,numero,bairro) values (5,'55 55555555','Mariana Silva','Rua das Acácias','555','Bela Vista');
insert into cliente(telefone,nome,logradouro,numero,bairro) values (6,'66 66666666','Laura Madureira','Rua das Gardênias','666','Cantareira');

insert into pedido(cliente_id,dataa,valor) values (1,'2016-12-15 20:30',32.00);
insert into pedido(cliente_id,dataa,valor) values (2,'2016-12-15 20:38',40.00);
insert into pedido(cliente_id,dataa,valor) values (3,'2016-12-15 20:59',22.00);
insert into pedido(cliente_id,dataa,valor) values (1,'2016-12-17 22:00',42.00);
insert into pedido(cliente_id,dataa,valor) values (2,'2016-12-18 19:00',45.00);
insert into pedido(cliente_id,dataa,valor) values (3,'2016-12-18 21:12',44.00);
insert into pedido(cliente_id,dataa,valor) values (4,'2016-12-19 22:22',72.00);
insert into pedido(cliente_id,dataa,valor) values (6,'2016-12-19 22:26',34.00);