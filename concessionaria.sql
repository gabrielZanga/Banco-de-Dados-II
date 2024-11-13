create database concessionaria;

use concessionaria;

create table cliente (
    cpf int not null primary key,
    nome varchar(60),
    dtnasc date
);

create table modelo (
    codmod int not null primary key,
    desc_2 varchar(40)
);

create table veiculo (
    placa varchar(8) primary key,
    modelo_codmod int,
    cliente_cpf int,
    cor varchar(20),
    constraint Rel_03 foreign key (modelo_codmod) references modelo(codmod),
    constraint Rel_02 foreign key (cliente_cpf) references cliente(cpf)
);

create table patio (
    num int not null primary key auto_increment,
    ender varchar(40),
    capacidade integer
);

create table estaciona (
    cod int not null primary key auto_increment,
    patio_num integer,
    veiculo_placa varchar(8),
    dtentrada varchar(10),
    dtsaida varchar(10),
    hsentrada varchar(10),
    hssaida varchar(10),
    constraint rel_08 foreign key (patio_num) references patio(num),
    constraint rel_06 foreign key (veiculo_placa) references veiculo(placa)
);


insert into cliente (cpf, nome, dtnasc) values (123456789, 'Gabriel Vieira', '2007-01-01');
insert into cliente (cpf, nome, dtnasc) values (987654321, 'João Paulo', '2007-02-02');
insert into cliente (cpf, nome, dtnasc) values (112233445, 'Luiza', '2007-03-03');
insert into cliente (cpf, nome, dtnasc) values (569697089, 'Maria Eduarda', '2006-04-04');
insert into cliente (cpf, nome, dtnasc) values (399878665, 'Alexandre', '2001-05-05');
insert into cliente (cpf, nome, dtnasc) values (399238445, 'André Victor', '2000-04-06');
insert into cliente (cpf, nome, dtnasc) values (796243445, 'Antonio', '1999-06-04');
insert into cliente (cpf, nome, dtnasc) values (399648445, 'Caroline', '2005-02-03');
insert into cliente (cpf, nome, dtnasc) values (399245645, 'Willian', '1994-09-07');
insert into cliente (cpf, nome, dtnasc) values (345638445, 'Cruz', '1997-01-08');


insert into modelo (codmod, desc_2) values (1, 'Sedan');
insert into modelo (codmod, desc_2) values (2, 'Suv');
insert into modelo (codmod, desc_2) values (3, 'Hatchback');
insert into modelo (codmod, desc_2) values (4, 'Convertible');
insert into modelo (codmod, desc_2) values (5, 'Pickup');
insert into modelo (codmod, desc_2) values (6, 'Minivan');
insert into modelo (codmod, desc_2) values (7, 'Moto');

insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('ABC1234', 1, 123456789, 'Preto');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('DEF5678', 2, 987654321, 'Branco');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('GHI9012', 3, 399878665, 'Vermelho');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('JKL3456', 4, 112233445, 'Azul');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('MNO7890', 5, 569697089, 'Prata');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('JJJ2020', 1, 399238445, 'Preto');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('JEG1010', 2, 796243445, 'Branco');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('EXT4321', 3, 399648445, 'Vermelho');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('EKT5678', 4, 399245645, 'Verde');
insert into veiculo (placa, modelo_codmod, cliente_cpf, cor) values ('MJK0987', 5, 345638445, 'Cinza');


insert into patio (num, ender, capacidade) values (1, 'Rua A, 100', 50);
insert into patio (num, ender, capacidade) values (2, 'Av. Padre Salústio, 200', 75);
insert into patio (num, ender, capacidade) values (3, 'Praça da Sé, 300', 100);
insert into patio (num, ender, capacidade) values (4, 'Av. Bandeirantes, 400', 125);
insert into patio (num, ender, capacidade) values (5, 'Av. Getúlio Vargas, 500', 150);

insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (1, 1, 'ABC1234', '2023-01-01', '2023-01-02', '08:00', '18:00');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (2, 2, 'DEF5678', '2023-01-03', '2023-01-04', '09:00', '19:00');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (3, 3, 'GHI9012', '2023-01-05', '2023-01-06', '10:00', '20:00');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (4, 4, 'JKL3456', '2023-01-07', '2023-01-08', '11:00', '21:00');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (5, 5, 'MNO7890', '2023-01-09', '2023-01-10', '12:00', '22:00');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (6, 1, 'JJJ2020', '2023-01-11', '2023-01-12', '08:30', '18:30');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (7, 2, 'JEG1010', '2023-01-13', '2023-01-14', '09:30', '19:30');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (8, 3, 'EXT4321', '2023-01-15', '2023-01-16', '10:30', '20:30');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (9, 4, 'EKT5678', '2023-01-17', '2023-01-18', '11:30', '21:30');
insert into estaciona (cod, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) values (10, 5, 'MJK0987', '2023-01-19', '2023-01-20', '12:30', '22:30');


/*EX1*/
select veiculo.placa, cliente.nome from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf;

/*EX2*/
select cliente.cpf, cliente.nome, veiculo.placa from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf 
where veiculo.placa = 'jjj2020';

/*EX3*/
select veiculo.placa, veiculo.cor, estaciona.cod from veiculo
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where estaciona.cod = 1;

/*EX4*/
select veiculo.placa, estaciona.dtentrada, estaciona.cod from veiculo
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where estaciona.cod = 1;

/*EX5*/
select veiculo.placa, estaciona.dtentrada, modelo.desc_2 from veiculo
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
inner join modelo on veiculo.modelo_codmod = modelo.codmod
where year(estaciona.dtentrada) >= 2000;

/*EX6*/
select patio.ender, estaciona.dtentrada, estaciona.dtsaida,estaciona.veiculo_placa from estaciona
inner join patio on estaciona.patio_num = patio.num
where estaciona.veiculo_placa = 'jeg1010';

/*EX7*/
select count(*), veiculo.cor from estaciona
inner join veiculo on estaciona.veiculo_placa = veiculo.placa
where veiculo.cor = 'verde';

/*EX8*/
select cliente.nome, veiculo.modelo_codmod from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf
where veiculo.modelo_codmod = 1;

/*EX9*/
select veiculo.placa, estaciona.hsentrada, estaciona.hssaida, veiculo.cor from veiculo
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where veiculo.cor = 'verde';

/*EX10*/
select * from estaciona
where veiculo_placa = 'jjj2020';

/*EX11*/
select cliente.nome, estaciona.cod from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where estaciona.cod = 2;

/*EX12*/
select cliente.cpf, estaciona.cod from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where estaciona.cod = 3;

/*EX13*/
select modelo.desc_2, estaciona.cod from veiculo
inner join modelo on veiculo.modelo_codmod = modelo.codmod
inner join estaciona on veiculo.placa = estaciona.veiculo_placa
where estaciona.cod = 2;

/*EX14*/
select veiculo.placa, cliente.nome, modelo.desc_2 from veiculo
inner join cliente on veiculo.cliente_cpf = cliente.cpf
inner join modelo on veiculo.modelo_codmod = modelo.codmod;