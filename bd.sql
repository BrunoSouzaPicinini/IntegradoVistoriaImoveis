-- Schema: aula

-- DROP SCHEMA aula;

CREATE SCHEMA aula
  AUTHORIZATION postgres;


CREATE TABLE aula.cadImovel (
  idImovel SERIAL,
  quadra VARCHAR(45) NULL,
  lote VARCHAR(45) NULL,
  metragemTerreno DECIMAL(12,2) NULL,
  metragemImovel DECIMAL(12,2) NULL,
  logradouro VARCHAR(45) NULL,
  bairro VARCHAR(45) NULL,
  complemento VARCHAR(45) NULL,
  numero int NULL,
  cep VARCHAR(45) NULL,
  PRIMARY KEY (idImovel));


CREATE TABLE IF NOT EXISTS aula.cadPessoa (
  idPessoa SERIAL ,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (idPessoa));


CREATE TABLE aula.movVistoria (
  idVistoria SERIAL,
  data DATE NULL,
  Observacao VARCHAR(45) NULL,
  idImovel INT NOT NULL,
  idPessoa INT NOT NULL,
  PRIMARY KEY (idVistoria),
  CONSTRAINT fk_movVistoria_cadImovel1
    FOREIGN KEY (idImovel)
    REFERENCES aula.cadImovel (idImovel),
  CONSTRAINT fk_movVistoria_cadPessoa1
    FOREIGN KEY (idPessoa)
    REFERENCES aula.cadPessoa (idPessoa));

CREATE TABLE IF NOT EXISTS aula.cadItem (
  idItem SERIAL ,
  descricao VARCHAR(45) NULL,
  PRIMARY KEY (idItem));
  
CREATE TABLE aula.movItensVistoria (
  idItensVistoria SERIAL,
  idImovel INT NOT NULL,
  idItem INT NOT NULL,
  observacao VARCHAR(45) NULL,
  PRIMARY KEY (idItensVistoria),
  CONSTRAINT un_itensVistoria UNIQUE (idImovel, idItem),
  CONSTRAINT fk_movVistoria_has_cadItem_movVistoria1
    FOREIGN KEY (idImovel)
    REFERENCES aula.movVistoria (idVistoria),
  CONSTRAINT fk_movVistoria_has_cadItem_cadItem1
    FOREIGN KEY (idItem)
    REFERENCES aula.cadItem (idItem));



