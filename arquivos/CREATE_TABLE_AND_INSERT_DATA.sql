DROP TABLE ACOMPANHA, 
ASSUME, 
CARGO,
CLIENTE, 
COMISSAO, 
COMPOE, 
DISCUTIDA, 
MODERA, 
PARTICIPA, 
PARTIDO, 
PROPOSTA_LEGISLATIVA, 
TIPO_PROPOSTA, 
TIPO_VOTO, 
UF, 
VOTA_PROPOSTA_LEGISLATIVA,
POLITICO;

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

/*Table TIPO_PROPOSTA*/
INSERT INTO TIPO_PROPOSTA VALUES ('300', 'PEC - Proposta de Emenda à Constituição'),
('301', 'PLP - Projeto de Lei Complementar'),
('302', 'PL - Projeto de Lei'),
('303', 'MPV - Medida Provisória');

/*Table PROPOSTA_LEGISLATIVA*/
INSERT INTO PROPOSTA_LEGISLATIVA VALUES
('PEC28/2001', 'Institui o piso salarial nacional do enfermeiro, do técnico de enfermagem, do auxiliar..', 'Aprovada', '300'),
('PEC10/2020', 'Institui regime extraordinário fiscal, financeiro e de contratações para enfrentamento...', 'Reprovada', '300'),
('PL10/2012', 'Acrescenta o § 10 ao art. 144 da Constituição Federal para definir a competência...', 'Aprovada', '302'),
('MPV05/2014', 'Altera a Constituição Federal para elevar para setenta anos a idade máxima..', 'Aprovada', '303'),
('MPV26/2012', 'Altera e renumera o parágrafo único para instituir...', 'Aprovada', '303'),
('PEC63/2021', 'Altera a Constituição Federal e o Ato das Disposições Constitucionais Transitórias...', 'Aprovada', '300'),
('PLP01/2007', 'Dá nova redação ao art. 5º, XIII, da Constituição Federal.', 'Aprovada', '301'),
('PL15/2021', 'Acrescenta os §§ 1º e 2º ao art. 105 da Constituição Federal e renumera o...', 'Arquivada', '302'),
('PLP25/2008', 'Altera o art. 105 da Constituição Federal para instituir no recurso especial...', 'Aprovada', '301'),
('PEC02/2016', 'Altera o Ato das Disposições Constitucionais Transitórias para determinar a...', 'Reprovada', '300'),
('PL25/2021', 'Acrescenta ao art.125 a investigação criminal pelas polícias federal e civis...', 'Arquivada', '302'),
('MPV45/2001', 'Dispõe sobre o limite legal das taxas de juros em contratos...', 'Reprovada', '303'),
('PLP89/2003', 'Estabelece conceito e diretrizes da Comunicação Pública, dispõe sobre a..', 'Aprovada', '301'),
('PLP58/2005', 'Insere artigo 442-C na Consolidação das Leis do Trabalho, aprovada pelo Decreto...', 'Reprovada', '301'),
('PEC23/2016', 'Institui diretrizes para a produção de moradia por autogestão, cria o Programa...', 'Aprovada', '300'),
('PEC30/2004', 'Prorroga até 31 de dezembro de 2021 os efeitos do artigo 7º, caput...', 'Arquivada', '300'),
('PL10/2015', 'Acrescenta dispositivos à Lei nº 13.432, de 11 de abril de 2012...', 'Aprovada', '302'),
('MPV36/2008', 'Altera a Lei nº 8.213, de 24 de julho de 1991, para dispor sobre a concessão...', 'Reprovada', '303'),
('PEC14/2015', 'Sugere ao Ministro do Desenvolvimento Regional a criação da Companhia...', 'Reprovada', '300'),
('PEC02/2004', 'Altera o § 4° do art. 791-A da CLT para isentar o beneficiário...', 'Arquivada', '300');

/*Table TIPO_VOTO*/
INSERT INTO TIPO_VOTO VALUES ('800', 'Sim'), ('801', 'Não'), ('802', 'Ausente'), ('803', 'Abstenção');

/*Table UF*/
INSERT INTO UF VALUES ('AC', 'Acre'), ('AL', 'Alagoas'), ('AP', 'Amapá'), ('AM', 'Amazonas'), ('BA', 'Bahia'),
('CE', 'Ceará'), ('DF', 'Distrito Federal'), ('ES', 'Espírito Santo'), ('GO', 'Goiás'), ('MA', 'Maranhão'), ('MT', 'Mato Grosso'), 
('MS', 'Mato Grosso do Sul'), ('MG', 'Minas Gerais'), ('PA', 'Pará'), ('PB', 'Paraíba'), ('PR', 'Paraná'), ('PE', 'Pernambuco'), 
('PI', 'Piauí'), ('RJ', 'Rio de Janeiro'), ('RN', 'Rio Grande do Norte'), ('RS', 'Rio Grande do Sul'), ('RO', 'Rondônia'), 
('RR', 'Roraima'), ('SC', 'Santa Catarina'), ('SP', 'São Paulo'), ('SE', 'Sergipe'), ('TO', 'Tocantins'), ('BR', 'Brasil');

/*TABLE CLIENTE*/
INSERT INTO CLIENTE VALUES ('1000', 'José Maria da Silva', 'jose22@gmail.com', 'JrJI0St0K5', '1997-02-10', 'ES'),
('1001', 'Carolina Silva dos Santos', 'carolinasilva@gmail.com', 'WZnjg7xbgH', '1987-09-22', 'AM'),
('1002', 'Pedro Soares Santos', 'pedroasantos@gmail.com', 'TJCE0', '1995-11-10', 'TO'),
('1003', 'Ana Paula Azevedo', 'anaazevedo@yahoo.com', 'jh44E', '1998-02-21', 'ES'),
('1004', 'Paula Soares Almeida', 'paulaalmeida@gmail.com', 'jd211', '1974-07-17', 'BA'),
('1005', 'Ana Clara Cardoso', 'anaclaracardoso@gmail.com', 'ANA3321', '1965-03-02', 'MG'),
('1006', 'Arthur Campos Braga', 'arthurbraga@yahoo.com', 'Qs2133', '1985-05-22', 'SP'),
('1007', 'Queila da Costa Moreira', 'queilacosta@gmail.com', 'queila654', '1991-06-13', 'SP'),
('1008', 'João Vitor da Silva', 'joao21silva@gmail.com', 'J2122', '1983-11-05', 'MA'),
('1009', 'Lauro Rocha Fernandes', 'laurorocha27@gmail.com', 'al770', '1992-01-24', 'PI'),
('1010', 'Sofia Siqueira', 'sofiasiqueiraa@yahoo.com', 'LAU765', '1974-05-02', 'RJ'),
('1011', 'Paloma de Castro', 'palomacastro00@gmail.com', 'palo55', '1995-09-28', 'SP'),
('1012', 'Gabriel Barreiro Barros', 'gabrielbarros33@gmail.com', 'gab65400', '1993-09-09', 'RJ'),
('1013', 'Joana da Paula Silva', 'joanasilvaa@gmail.com', 'silva543', '2003-08-01', 'PB'),
('1014', 'Kaua dos Santos', 'kauasantos99@yahoo.com', 'kkk876', '1993-07-25', 'GO'),
('1015', 'Laura Fernanda Rezende', 'laurarezende11@gmail.com', '1122W', '1982-08-24', 'MS'),
('1016', 'Livia Nunes', 'livianunes321@yahoo.com', '354e', '2003-05-21', 'RR'),
('1017', 'Lana Eduarda Pascal', 'lanayduda11@gmai.com', '777BBq1', '1996-02-28', 'SC');

/*Table COMISSAO*/
INSERT INTO COMISSAO VALUES ('100', 'Comissão de Constituição, Justiça e Redação', 'Temporaria'),
('101', 'Comissão de Finanças, Orçamento e Planejamento', 'Temporaria'),
('102', 'Comissão de Saúde', 'Temporaria'),
('103', 'Comissão de Educação e Cultura', 'Permanente'),
('104', 'Comissão de Assuntos Desportivos', 'Temporaria'),
('105', 'Comissão de Assuntos Metropolitanos e Municipais', 'Permanente'),
('106', 'Comissão de Infraestrutura', 'Permanente'),
('107', 'Comissão de Transportes e Comunicações', 'Temporaria'),
('108', 'Comissão de Segurança Pública e Assuntos Penitenciários', 'Temporaria'),
('109', 'Comissão de Administração Pública e Relações do Trabalho', 'Temporaria'),
('110', 'Comissão de Meio Ambiente e Desenvolvimento Sustentável', 'Permanente');

/*Table DISCUTIDA*/
INSERT INTO DISCUTIDA VALUES ('102', 'PEC28/2001', '2019-09-03', '2019-09-05'), 
('105', 'PEC10/2020', '2018-03-27', '2018-05-01'), 
('103', 'PL10/2012', '2022-05-31', '2022-07-23'),
('100', 'MPV05/2014', '2018-02-26', '2018-11-27'), 
('109', 'MPV26/2012', '2021-11-24', '2021-12-30'), 
('108', 'PEC63/2021', '2019-04-08', '2019-07-30'), 
('110', 'PLP01/2007', '2004-12-04', '2006-05-01'), 
('104', 'PL15/2021', '2022-08-22', '2022-10-01');

/*Table POLITICO*/
INSERT INTO POLITICO VALUES ('600', 'Luís Inácio Lula', 'M', 'ES'),
('601', 'Jair Bolsonaro', 'M', 'MG'),
('602', 'Ciro Gomes', 'M', 'TO'),
('603', 'José Maria', 'M', 'ES'),
('604', 'Luiz Ávila', 'M','DF'),
('605', 'Simone Tebet', 'F', 'MG'),
('606', 'Sofia Manzano', 'F', 'SP'),
('607', 'Soraya Thoricket', 'F', 'SP'),
('608', 'Vera Lúcia', 'F', 'MA'),
('609', 'Padre Kelmon', 'M', 'PI'),
('610', 'Getúlio Vargas', 'M', 'RJ'),
('611', 'Fernando Henrique', 'M', 'SP'),
('612', 'Dilma Rousseff', 'F', 'RJ'),
('613', 'José Sarney', 'M', 'PB'),
('614', 'Juscelino Alvez', 'M', 'GO'),
('615', 'João Goulart', 'M', 'MS'),
('616', 'Geraldo Alckmin', 'M', 'RR'),
('617', 'Michel Temer', 'M', 'SC'),
('618', 'Eduardo Cunha', 'M', 'PI'),
('619', 'Sergio Moro', 'M', 'DF'),
('620', 'Maria Aparecida', 'F', 'CE');

/*TABLE VOTA_PROPOSTA_LEGISLATIVA*/
INSERT INTO VOTA_PROPOSTA_LEGISLATIVA VALUES ('MPV45/2001', '600', '802'), 
('PLP89/2003', '605', '800'), 
('PLP58/2005', '618', '803'), 
('PEC23/2016', '616', '801'), 
('PEC30/2004', '610', '802'), 
('PL10/2015', '611', '801'), 
('MPV36/2008', '601', '802'), 
('PEC14/2015', '600', '803'), 
('PEC02/2004', '601', '800'), 
('MPV45/2001', '602', '801'), 
('PLP89/2003', '603', '802'), 
('PLP58/2005', '604', '803'), 
('PEC23/2016', '605', '803'), 
('PEC30/2004', '606', '800'), 
('PL10/2015', '607', '801'), 
('MPV36/2008', '608', '801'), 
('PEC14/2015', '609', '801'), 
('PEC02/2004', '605', '802');

/*Table CARGO*/
INSERT INTO CARGO VALUES ('2001', 'Presidente da República', 'Federal'), ('2002', 'Deputado', 'Federal'), ('2003', 'Deputado', 'Estadual'), ('2004', 'Senador', 'Estadual'), ('2005', 'Governador', 'Estadual'), ('2006', 'Presidente da Câmara', 'Federal'), ('2007', 'Vice Presidente da Câmara', 'Federal'), ('2008', 'Secretario da Câmara', 'Estadual'), ('2009', 'Suplente de secretario da Câmara', 'Estadual');

/*Table ASSUME*/
INSERT INTO ASSUME VALUES 
('2001', '600', '2000-09-14', '2004-10-16'),
('2002', '601', '1999-06-25', '2001-05-18'),
('2004', '602', '2001-12-05', '2003-03-16'),
('2003', '603', '2003-02-25', '2005-08-15'),
('2002', '604', '2004-05-17', '2008-01-13'),
('2004', '605', '2005-08-07', '2009-06-13'),
('2004', '606', '2008-01-18', '2011-04-11'),
('2006', '607', '2009-04-09', '2009-09-09'),
('2007', '608', '2021-04-06', '2025-06-03'),
('2003', '609', '2019-10-05', '2022-06-17'),
('2009', '610', '2007-12-10', '2009-03-06'),
('2004', '611', '2022-05-26', '2022-11-01'),
('2005', '612', '2019-06-26', '2019-12-12'),
('2002', '613', '2001-08-29', '2007-02-10'),
('2003', '614', '2008-10-10', '2012-04-26'),
('2005', '615', '2015-12-05', '2018-03-28'),
('2007', '616', '2020-04-12', '2022-04-12'),
('2008', '617', '2021-05-14', '2021-12-29'),
('2005', '618', '2004-04-05', '2006-05-03'),
('2004', '619', '2008-09-30', '2012-04-17'),
('2009', '620', '2007-02-01', '2011-07-06');

/*Table MODERA*/
INSERT INTO MODERA VALUES 
('601', '613', '2019-10-05', '2022-06-17'), 
('602', '614', '2007-12-10', '2008-03-06'), 
('608', '615', '2022-05-26', '2022-11-01'), 
('604', '616', '2019-06-26', '2019-12-12'), 
('605', '617', '2006-08-29', '2007-05-10'), 
('606', '618', '2010-10-10', '2012-04-26'), 
('603', '604', '2015-12-05', '2018-03-28'), 
('609', '600', '2020-04-12', '2022-04-12'), 
('600', '605', '2021-05-14', '2021-12-29');

/*Table COMPOE*/
INSERT INTO COMPOE VALUES 
('100', '600', '2000-09-14', '2000-12-16'),
('102', '601', '2000-06-25', '2001-05-18'),
('104', '602', '2001-12-05', '2002-04-16'),
('103', '603', '2003-02-25', '2005-08-15'),
('102', '604', '2004-05-17', '2008-01-30'),
('104', '605', '2005-08-07', '2009-06-13'),
('104', '606', '2008-01-18', '2011-04-11'),
('106', '607', '2005-04-09', '2009-09-09'),
('107', '608', '2021-04-06', '2025-06-03'),
('108', '609', '2019-10-05', '2022-06-17'),
('109', '610', '2007-12-10', '2008-03-06'),
('110', '611', '2022-05-26', '2022-11-01'),
('105', '612', '2019-06-26', '2019-12-12'),
('110', '613', '2006-08-29', '2007-05-10'),
('103', '614', '2010-10-10', '2012-04-26'),
('100', '615', '2015-12-05', '2018-03-28'),
('107', '616', '2020-04-12', '2022-04-12'),
('108', '617', '2021-05-14', '2021-12-29'),
('105', '618', '2004-04-05', '2006-05-28'),
('104', '619', '2008-09-30', '2012-04-17'),
('109', '620', '2007-02-01', '2011-07-06');

/*Table PARTIDO*/
INSERT INTO PARTIDO VALUES 
(10, 'MDB', 'S', '1980-01-15', 'Movimento Democrático Brasileiro'),
(11, 'PT', 'S', '1980-02-10', 'Partido dos Trabalhadores'),
(12, 'PSDB', 'N', '1988-06-25', 'Partido da Social Democracia Brasileira'),
(13, 'PP', 'S', '1995-08-08', 'Progressistas'),
(14, 'PDT', 'N', '1979-06-17', 'Partido Democrático Trabalhista'),
(15, 'UNIÃO', 'S', '2021-10-06', 'União Brasil'),
(16, 'PTB', 'S', '1979-11-21', 'Partido Trabalhista Brasileiro'),
(17, 'PL', 'N', '2006-10-26', 'Partido Liberal'),
(18, 'PSB', 'S', '1985-07-02', 'Partido Socialista Brasileiro'),
(19, 'PSC', 'S', '1985-05-15', 'Partido Social Cristão');

/*Table PARTICIPA*/
INSERT INTO PARTICIPA VALUES 
(11, '600', '2000-09-14', '2005-10-16'), 
(15, '601', '1999-06-25', '2001-05-18'), 
(10, '602', '2001-12-05', '2003-04-16'),
(11, '603', '2003-02-25', '2005-08-15'), 
(12, '604', '2004-05-17', '2008-01-30'), 
(13, '605', '2005-08-07', '2009-06-13'),
(13, '606', '2008-01-18', '2011-04-11'), 
(19, '607', '2009-04-09', '2009-09-09'), 
(19, '608', '2021-04-06', '2025-06-03'),
(11, '609', '2019-10-05', '2022-06-17'), 
(10, '610', '2007-12-10', '2009-03-06'), 
(15, '611', '2022-05-26', '2022-11-01'),
(17, '612', '2019-06-26', '2019-12-12'), 
(18, '613', '2001-08-29', '2007-05-10'), 
(18, '614', '2008-10-10', '2012-04-26'),
(17, '615', '2015-12-05', '2018-03-28'), 
(10, '616', '2020-04-12', '2022-04-12'), 
(11, '617', '2021-05-14', '2021-12-29'),
(14, '618', '2004-04-05', '2006-05-28'), 
(16, '619', '2008-09-30', '2012-04-17'), 
(16, '620', '2007-02-01', '2011-07-06');

/*Table ACOMPANHA*/
INSERT INTO ACOMPANHA VALUES 
('1003', 'PLP01/2007', '2021-08-21'), 
('1008', 'PL15/2021', '2021-09-26'), 
('1017', 'PLP25/2008', '2021-11-01'), 
('1001', 'PEC02/2016', '2021-12-07'), 
('1013', 'PL25/2021', '2022-01-12'), 
('1005', 'MPV45/2001', '2022-02-17'), 
('1011', 'PLP01/2007', '2022-06-25'), 
('1011', 'PL15/2021', '2022-04-30'), 
('1012', 'PLP25/2008', '2022-06-05'), 
('1013', 'PEC02/2016', '2019-05-07'), 
('1014', 'PL25/2021', '2022-06-09'), 
('1015', 'MPV45/2001', '2021-05-14'), 
('1016', 'PL25/2021', '2020-03-26'), 
('1017', 'PL25/2021', '2020-08-19');























