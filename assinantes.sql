create database assinatura;

use assinatura;

create table ramo_atividade(
cd_ramo int not null primary key,
ds_ramo int not null
);

create table tipo_assinante(
cd_tipo int not null primary key,
ds_tipo int not null
);

create table assinante(
cd_assinante int not null primary key,
nm_assinante int not null,
ass_ramo int not null,
ass_tipo int not null,
foreign key (ass_ramo) references ramo_atividade (cd_ramo),
foreign key (ass_tipo) references tipo_assinante (cd_tipo)
);

create table endereco(
cd_endereco int not null primary key,
ds_endereco int not null,
complemento varchar(100),
bairro varchar(100),
cep varchar(20),
telefone varchar(20),
municipio varchar(50),
ass_end int not null,
foreign key (ass_end) references assinante (cd_assinante)
);