create database assinantes;

use assinantes;

create table assinante(
  cd_assinante int not null auto_increment primary key,
  nm_assinante varchar(150),
  cd_ramo int not null,
  cd_tipo int not null,
  cd_endereco int not null
);

create table ramo_atividade(
  cd_ramo int not null auto_increment primary key,
  ds_ramo varchar(150)
);

create table tipo_assinante(
  cd_tipo int not null auto_increment primary key,
  ds_tipo varchar(150)
);

create table endereco(
  cd_endereco int not null auto_increment primary key,
  ds_endereco varchar(150),
  complemento varchar(150),
  bairro varchar(150),
  CEP varchar(12),
  cd_municipio int not null,
  cd_telefone int not null
);

create table municipio(
  cd_municipio int not null auto_increment primary key,
  ds_municipio varchar(150)
);

create table telefone(
  cd_telefone int not null auto_increment primary key,
  ddd int,
  n_telefone varchar(13)
);

alter table assinante add constraint ass_ramo foreign key (cd_ramo) references ramo_atividade(cd_ramo);

alter table assinante add constraint ass_tipo foreign key (cd_tipo) references tipo_assinante(cd_tipo);

alter table assinante add constraint ass_endereco foreign key (cd_endereco) references endereco(cd_endereco);

alter table endereco add constraint end_municipio foreign key (cd_municipio) references municipio(cd_municipio);

alter table endereco add constraint end_telfone foreign key (cd_telefone) references telefone(cd_telefone);

INSERT INTO tipo_assinante (ds_tipo) VALUES ('Pessoa Física');
INSERT INTO tipo_assinante (ds_tipo) VALUES ('Pessoa Jurídica');
INSERT INTO tipo_assinante (ds_tipo) VALUES ('Governo');
INSERT INTO municipio (ds_municipio) VALUES ('São Paulo');
INSERT INTO municipio (ds_municipio) VALUES ('Rio de Janeiro');
INSERT INTO municipio (ds_municipio) VALUES ('Belo Horizonte');
INSERT INTO telefone (ddd, n_telefone) VALUES (11, '91234-5678');
INSERT INTO telefone (ddd, n_telefone) VALUES (21, '98876-5432');
INSERT INTO telefone (ddd, n_telefone) VALUES (31, '98765-4321');
INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Rua das Flores, 123', 'Apto 101', 'Centro', '01010-000', 1, 1);

INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Avenida Paulista, 456', 'Sala 303', 'Bela Vista', '01310-000', 2, 2);

INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Rua da Liberdade, 789', 'Casa 1', 'Liberdade', '01501-000', 3, 3);

INSERT INTO ramo_atividade (ds_ramo) VALUES ('Tecnologia');
INSERT INTO ramo_atividade (ds_ramo) VALUES ('Educação');
INSERT INTO ramo_atividade (ds_ramo) VALUES ('Saúde');
-- Inserir municípios João Câmara, Natal e Pelotas
INSERT INTO municipio (ds_municipio) VALUES ('João Câmara');
INSERT INTO municipio (ds_municipio) VALUES ('Natal');
INSERT INTO municipio (ds_municipio) VALUES ('Pelotas');
-- Inserir tipo de assinante Residencial
INSERT INTO tipo_assinante (ds_tipo) VALUES ('Residencial');
-- Inserir telefones
INSERT INTO telefone (ddd, n_telefone) VALUES (84, '98123-4567'); -- Natal (DDD 84)
INSERT INTO telefone (ddd, n_telefone) VALUES (84, '98765-4321'); -- Natal (DDD 84)
INSERT INTO telefone (ddd, n_telefone) VALUES (53, '98123-1234'); -- Pelotas (DDD 53)
INSERT INTO telefone (ddd, n_telefone) VALUES (85, '99567-8901'); -- João Câmara (DDD 85)
-- Inserir endereços em João Câmara
INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Rua Central, 100', 'Casa 1', 'Centro', '59500-000', 1, 4);

INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Avenida São José, 250', 'Casa 2', 'Vila Nova', '59501-000', 1, 5);

-- Inserir endereços em Natal
INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Rua dos Mares, 150', 'Apartamento 402', 'Praia do Meio', '59000-000', 2, 1);

INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Avenida Engenheiro Roberto Freire, 1000', 'Apartamento 101', 'Capim Macio', '59080-000', 2, 2);

-- Inserir endereços em Pelotas
INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Rua 15 de Novembro, 456', 'Apartamento 3', 'Centro', '96010-000', 3, 3);

INSERT INTO endereco (ds_endereco, complemento, bairro, CEP, cd_municipio, cd_telefone) 
VALUES ('Avenida Ferreira Viana, 800', 'Casa 5', 'Areal', '96030-000', 3, 4);
-- Inserir assinantes do tipo Residencial em João Câmara
INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('José Oliveira', 1, 3, 1); -- Assinante Residencial, João Câmara

INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('Maria Costa', 1, 3, 2); -- Assinante Residencial, João Câmara

-- Inserir assinantes do tipo Residencial em Natal
INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('Carlos Souza', 1, 3, 3); -- Assinante Residencial, Natal

INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('Ana Pereira', 1, 3, 4); -- Assinante Residencial, Natal

-- Inserir assinantes do tipo Residencial em Pelotas
INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('Luiz Silva', 1, 3, 5); -- Assinante Residencial, Pelotas

INSERT INTO assinante (nm_assinante, cd_ramo, cd_tipo, cd_endereco) 
VALUES ('Fernanda Lima', 1, 3, 6); -- Assinante Residencial, Pelotas


select a.nm_assinante, e.ds_endereco, t.n_telefone from assinante as a inner join endereco as e on a.cd_endereco = e.cd_endereco right join telefone as t on e.cd_telefone = t.cd_telefone;

select a.nm_assinante, r.ds_ramo from assinante as a inner join ramo_atividade as r on a.cd_ramo = r.cd_ramo order by ds_ramo asc, nm_assinante asc;

select a.nm_assinante, t.ds_tipo, m.ds_municipio from assinante as a inner join tipo_assinante as t on a.cd_tipo = t.cd_tipo inner join endereco as e on a.cd_endereco = e.cd_endereco inner join municipio as m on e.cd_endereco = m.cd_municipio where ds_municipio = "Pelotas" and ds_tipo = "Residencial"; 

select a.nm_assinante, te.n_telefone,  t.ds_tipo,  e.ds_endereco from assinante as a inner join endereco as e on a.cd_endereco = e.cd_endereco right join telefone as te on e.cd_telefone = te.cd_telefone inner join tipo_assinante as t on a.cd_tipo = t.cd_tipo inner join municipio as m on e.cd_endereco = m.cd_municipio where ds_municipio = "Natal" or "Jõao Câmara" ;
