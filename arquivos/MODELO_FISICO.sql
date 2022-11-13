CREATE TABLE TIPO_PROPOSTA (
    id_proposta varchar(06) PRIMARY KEY,
    descricao_proposta varchar(100)   
);

CREATE TABLE PROPOSTA_LEGISLATIVA (
    id_legislativo varchar(15) PRIMARY KEY,
    resumo_legislativo varchar(100),
    status_legislativo char(15),
    FK_PL_TIPO_PROPOSTA_id varchar(06),
    FOREIGN KEY(FK_PL_TIPO_PROPOSTA_id) 
    REFERENCES TIPO_PROPOSTA(id_proposta)
);

CREATE TABLE UF (
    sigla char(2) PRIMARY KEY,
    nome_uf varchar(100)
);

CREATE TABLE TIPO_VOTO (
    id_tipo_voto varchar(6) PRIMARY KEY,
    descricao_voto varchar(15)
);

CREATE TABLE POLITICO (
    id_politico varchar(6) PRIMARY KEY,
    nome_politico varchar(150),
    sexo_politico varchar (1),
    FK_POLITICO_UF_sigla char (2),
    FOREIGN KEY(FK_POLITICO_UF_sigla)
    REFERENCES UF(sigla)
);

CREATE TABLE VOTA_PROPOSTA_LEGISLATIVA (
    FK_VOTO_PROPOSTA_LEGISLATIVA_id varchar(15),
    FK_VOTO_POLITICO_id varchar(6),
    FK_VOTO_TIPO_VOTO_id varchar(6),
    FOREIGN KEY(FK_VOTO_PROPOSTA_LEGISLATIVA_id)
    REFERENCES PROPOSTA_LEGISLATIVA(id_legislativo),
    FOREIGN KEY(FK_VOTO_POLITICO_id)
    REFERENCES POLITICO(id_politico),
    FOREIGN KEY(FK_VOTO_TIPO_VOTO_id)
    REFERENCES TIPO_VOTO(id_tipo_voto)
);

CREATE TABLE CARGO(
    id_cargo varchar(6) PRIMARY KEY,
    nome_cargo varchar(50),
    nivel_cargo varchar(20)
);

CREATE TABLE ASSUME(
    FK_ASSUME_CARGO_id varchar(6),
    FK_ASSUME_POLITICO_id varchar(6),
    inicio_mandato date,
    fim_mandato date,
    FOREIGN KEY(FK_ASSUME_POLITICO_id)
    REFERENCES POLITICO(id_politico),
    FOREIGN KEY(FK_ASSUME_CARGO_id)
    REFERENCES CARGO(id_cargo)
);

CREATE TABLE CLIENTE(
    id_cliente varchar(6) PRIMARY KEY,
    nome_cliente varchar(100),
    email_cliente varchar(50),
    senha_cliente varchar(50),
    nascimento_cliente date,
    FK_CLIENTE_UF_sigla char(2),
    FOREIGN KEY(FK_CLIENTE_UF_sigla)
    REFERENCES UF(sigla)
);

CREATE TABLE ACOMPANHA (
    FK_ACOMPANHA_CLIENTE_id varchar(6),
    FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id varchar(15),
    data_acompanha date,
    FOREIGN KEY(FK_ACOMPANHA_CLIENTE_id)
    REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY(FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id)
    REFERENCES PROPOSTA_LEGISLATIVA(id_legislativo)
);

CREATE TABLE COMISSAO (
    id_comissao varchar(6) PRIMARY KEY,
    nome_comissao varchar(100),
    periodo_comissao varchar(11)
);

CREATE TABLE DISCUTIDA (
    FK_DISCUTE_COMISSAO_id varchar(6),
    FK_DISCUTE_PROPOSTA_LEGISLATIVA_id varchar(15),
    data_inicio date,
    data_fim date,
    FOREIGN KEY(FK_DISCUTE_COMISSAO_id)
    REFERENCES COMISSAO(id_comissao),
    FOREIGN KEY(FK_DISCUTE_PROPOSTA_LEGISLATIVA_id)
    REFERENCES PROPOSTA_LEGISLATIVA(id_legislativo)
);

CREATE TABLE PARTIDO (
    numero_partido integer PRIMARY KEY,
    nome_partido varchar(100),
    clausula_barreira char(1),
    ano_fundacao date,
    descricao_partido varchar(255)
);

CREATE TABLE MODERA (
    FK_MODERA_POLITICO_id varchar(6),
    FK_MODERADO_POLITICO_id varchar(6),
    inicio_moderacao date,
    fim_moderacao date,
    FOREIGN KEY(FK_MODERA_POLITICO_id)
    REFERENCES POLITICO(id_politico),
    FOREIGN KEY(FK_MODERADO_POLITICO_id)
    REFERENCES POLITICO(id_politico)
);

CREATE TABLE PARTICIPA (
    FK_PARTICIPA_PARTIDO_id integer,
    FK_PARTICIPA_POLITICO_id varchar(6),
    participa_data_inicio date,
    participa_data_fim date,
    FOREIGN KEY(FK_PARTICIPA_PARTIDO_id)
    REFERENCES PARTIDO(numero_partido),
    FOREIGN KEY (FK_PARTICIPA_POLITICO_id)
    REFERENCES POLITICO(id_politico)
);

CREATE TABLE COMPOE (
    FK_COMPOE_COMISSAO_id varchar(6),
    FK_COMPOE_POLITICO_id varchar(6),
    compoe_data_inicio date,
    compoer_data_fim date,
    FOREIGN KEY(FK_COMPOE_POLITICO_id)
    REFERENCES POLITICO(id_politico),
    FOREIGN KEY(FK_COMPOE_COMISSAO_id)
    REFERENCES COMISSAO(id_comissao)
);











