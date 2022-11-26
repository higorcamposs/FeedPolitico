# TRABALHO 01:  Feed Politico
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:<br>
Hanna Leticia: hannaleticia91@gmail.com<br>
Higor Campos: higorkd@gmail.com<br>
Lucas Cunha: lucas_cunha_souza@hotmail.com<br>
<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto para banco de dados, com tema de Feed Politico, e a motivação da escolha realizada. <br>

> O cliente Arthur Miguel sinalizou a necessidade que possui para conseguir realizar pesquisas com relação à política. Sabemos das dificuldades presentes para conseguir encontrar dados verídicos, de forma organizada e com fácil acesso. Estamos rodeados de Fake News e informações vagas, criadas por terceiros. Tendo em vista que essa necessidade não é só do Arthur, mas também de várias pessoas por todo o país, ficamos motivados a desenvolver o sistema, que irá exibir informações políticas de forma atualizada, organizada e com confiança. Para conseguirmos atender a essa demanda, será preciso que o sistema permita o armazenamento das propostas legislativas, bem como seu trâmite, quem propôs, status de aprovação, entre outras informações em âmbito estadual e federal. Ele também deverá facilitar o acompanhamento de políticos, como deputados e senadores, e as informações sobre os partidos que têm representação na Câmara. O armazenamento de dados específicos, como por exemplo: estado de atuação dos políticos, descrição sobre principais conquistas e feitos dos partidos, quais são os integrantes das comissões, entre outros. O sistema deverá apresentar esses dados quando o usuário realizar consultas, auxiliando assim a uma conclusão mais assertiva para sua pesquisa política.

### 3.MINI-MUNDO<br>

O sistema proposto para o Feed Politico conterá as informacões aqui detalhadas.<br>

> Dos Políticos serão armazenados o nome e o sexo. Dos Partidos serão armazenados o número, nome, clausula barreira, ano da fundação e uma descrição, que irá conter um breve resumo sobre. Da Comissão serão armazenados o nome e o período. Das Propostas Legislativas serão armazenados um resumo, que será um breve texto explicativo sobre, e o status de sua aprovação. Os Políticos assumem cargos políticos, os quais serão necessários saber o início e fim do mandato. Sobre o Cargo político, serão armazenados o nome e o nível. Um político deve assumir apenas um cargo. Um Cargo político deve conter no mínimo um ou vários políticos. Políticos moderam um ou mais políticos e são moderados por um ou mais, sendo necessário saber o inicio e o fim da moderação. O Político deve representar somente uma Unidade Federativa, a qual devemos armazenar uma descrição. Uma Unidade Federativa deve conter no mínimo um político e no máximo vários. O Político também participa de Partidos. Sobre a participação, necessário saber a data de inicio e fim. Um Partido deve conter no mínimo um ou vários políticos. Um Político pode ter no máximo um Partido ou nenhum. Políticos devem compor uma Comissão, sendo necessário saber a data de inicio e fim. A Comissão deve ser composta por no mínimo um ou vários políticos e o politico de compor apenas uma comissão. Propostas legislativas são discutidas por comissões, sendo necessário saber a data de início e fim. Uma Comissão pode não discutir nenhuma proposta ou várias. Uma proposta legislativa deve ser discutida por uma única comissão. As propostas legislativas são votadas por Políticos. Necessário saber o tipo do voto, contendo uma descrição sobre. Politico deve votar em uma proposta legislativa ou várias. A proposta legislativa pode receber nenhum voto ou vários. Proposta legislativa é entendida com o tipo da proposta, a qual devemos armazenar uma descrição. Uma proposta legislativa deve ter apenas um tipo de proposta. O tipo de proposta pode ser correspondido por nenhuma ou varias propostas legislativas. Dos clientes serão armazenados e-mail, senha, nascimento. Os clientes podem acompanhar as propostas legislativas, sendo necessário saber a data a qual querem acompanhar. Um cliente pode acompanhar nenhuma ou várias propostas políticas. Uma proposta politica pode ser acompanhada por nenhum ou vários políticos. <br> 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/higorcamposs/FeedPolitico/blob/master/images/capa_feedpolitico.png?raw=true "Capa Feed Politico")<br>

* Para acessar o protótipo clique <a href="https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/feedpolitico_v2.pdf">aqui</a>.


#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> O sistema Feed Político precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada partido e a quantidade de políticos do sexo feminino por partido.
* Relatório que mostre o tipo de proposta legislativa e a quantidade de clientes que a acompanham. 
* Relatório que mostre as informações relacionadas a todos os políticos inseridos no sistema. O resultado deve conter identificador, nome, sexo, nome do cargo, nível do cargo, nome do partido que participa, início do mandato e fim do mandato.  
* Relatório que mostre o nome e o tipo da proposta, e a média de aprovação por tipo. 
* Relatório que mostre o nome de cada político e identificador dos políticos que eles moderam.
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:    

* Para acessar a tabela de dados clique <a href="https://docs.google.com/spreadsheets/d/1QRjO7b4NHkcJ5hC3J245ONyKS5y5cDxkaz5N1kcW0d4/edit?usp=sharing">aqui</a>.
    
### 5.MODELO CONCEITUAL<br>            
![Alt text](https://github.com/higorcamposs/FeedPolitico/blob/master/images/MapaConceitual.png?raw=true "Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 

    TIPO_PROPOSTA: Tabela que armazena dados relativos ao tipo de proposta legislativa.
    descrição: campo que contém escrito a descrição do tipo da proposta.

    PROPOSTA_LEGISLATIVA: Tabela que armazena dados relativos as especificações da proposta legislativa. 
    resumo: campo que contém um breve resumo sobre a proposta, com informações descrevendo o assunto, autor, data.
    status: campo que armazena a situação da proposta, que pode ser: REJEITADA, APROVADA ou ARQUIVADA. 

    CLIENTE: Tabela que armazena os dados referentes aos clientes.
    e-mail: campo que armazena o e-mail do cliente.
    senha: campo que armazena a senha para acesso ao sistema. 
    nascimento: campo que armazena o dia do nascimento do cliente, com objetivo de saber a idade. 

    COMISSAO: Tabela que armazena dados sobre Comissões.
    nome: campo que contém o nome da Comissão
    periodo: campo que armazena o período de comissão, em meses.

    PARTIDO: Tabela que armazena dados referentes aos partidos.
    nome: campo que armazena a sigla pela qual o partido é referenciado. 
    ano_fundacao: campo que armazena a data de criação do partido.
    descricao: campo que contém descrito o significado da sigla.

    UF: Tabela que armazena dados referentes aos estados brasileiros.
    abreviacao: campo que armazena sigla que representa o estado.
    nome: campo que armazena o nome do estado.
    sede_governo: campo que armazena o local que seria a sede política daquele estado.

    POLITICO: Tabela que armazena dados referentes aos políticos. 
    sexo: campo que contém a definição de gênero do político.
    nome: campo que contém o nome completo do político. 

    CARGO: Tabela que armazena dados referentes aos políticos
    nome: campo que contém o nome do cargo que o político pode assumir

    TIPO_VOTO: Tabela que armazena dados referentes a descrição dos votos de políticos para propostas legislativas
    tipo_votos: campo que armazena o nome referente as fases das ações tomadas
    tipo_de_proposicao: campo que armazena a ação
    data: campo que armazena a data da alteração
    autor: campo que armazena o nome do sujeito a tomar a ação
    descricao: campo que armazena um resumo sobre a ação referente

    ACOMPANHA: Tabela que armazena dados referentes a relação entre clientes e propostas legislativas.
    data: campo que armazena a data selecionada para acompanhar as propostas legislativas.

    DISCUTIDA: Tabela que armazena dados referentes a relação entre comissão e propostas legislativas
    data_inicio: campo que armazena a data inicial a qual a comissão adotou a discussão sobre alguma proposta legislativa
    data_fim: campo que armazena a data final a qual a comissão encerrou a discussão sobre alguma proposta legislativa

    COMPOE: Tabela que armazena dados referentes a relação entre político e comissão
    data_inicio: campo que armazena a data inicial a qual o político ingressou a comissão
    data_fim: campo que armazena a data final a qual o político não faz mais parte da comissão

    PARTICIPA: Tabela que armazena dados referentes a relação entre político e partido
    data_inicio: campo que armazena a data inicial a qual o político ingressou ao partido
    data_fim: campo que armazena a data final a qual o político não faz mais parte do partido

    ASSUME: Tabela que armazena dados referentes a relação entre político e cargo
    inicio: campo que armazena a data inicial a qual o político assumiu o cargo denominado
    fim_mandato: campo que armazena a data final a qual o político encerrou o mandato para o cargo referente

### 6	MODELO LÓGICO<br>
![Modelo Lógico](https://github.com/higorcamposs/FeedPolitico/blob/master/images/ModeloLogico.png?raw=true "Modelo Logico")

### 7	MODELO FÍSICO<br>
    
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


       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

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
    ('1017', 'Lana Eduarda Pascal', 'lanayduda11@gmai.com', '777BBq1', '1996-02-28', 'SC'),
    ('1022', 'Hanna Letícia', 'hannaTeste@gmail.com', 'JrJHHSt0K5', '2003-02-20', 'TO'),
    ('1023', 'Lucas Barcelos', 'lucas154@gmail.com', 'KSJHNgddb12', '2000-10-20', 'ES'),
    ('1024', 'Amanda Jesus', 'mandinha154@gmail.com', 'Teste123@', '1990-12-04', 'AM'),
    ('1025', 'Luiza Barcelos', 'luizaTop@gmail.com', 'Senha654', '1998-06-15', 'CE'),
    ('1026', 'Pedro Lucas', 'pedrinhoJBL@gmail.com', 'djnfGHHD', '2001-04-15', 'RJ'),
    ('1027', 'Otávio de Almeida', 'otoMeida@gmail.com', 'd147tt45D', '2001-09-27', 'SP'),
    ('1028', 'Guilherme Silva', 'guiParaTodos@gmail.com', 'op@123jnh', '1997-03-14', 'MG');
    
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
    ('620', 'Maria Aparecida', 'F', 'CE'),
    ('621', 'Joana Augusta', 'F', 'DF'),
    ('622', 'Lucas de Oliveira', 'M', 'GO'),
    ('623', 'Sérgio Vidigal', 'M', 'MT'),
    ('624', 'Osvaldo Costa', 'M', 'SC'),
    ('625', 'Leticia Andrade', 'F', 'SC')
    ('626', 'Gomes Armandinho', 'M', 'MA'),
    ('627', 'Juriscleide Santos', 'F', 'MG'),
    ('628', 'Omar Algusto', 'M', 'MT'),
    ('629', 'Onaldo Jesus', 'M', 'RJ'),
    ('630', 'Ronaldo Costa', 'M', 'RS'),
    ('631', 'Lelia Silva', 'F', 'SP'),
    ('632', 'Fátima Cavalari', 'F', 'TO'),
    ('633', 'Gil Alberto', 'M', 'PA'),
    ('634', 'Rui Costa', 'M', 'MA'),
    ('635', 'Flávio Bolsonaro', 'M', 'AP'),
    ('636', 'Gabriel Davel', 'M', 'DF'),
    ('637', 'Luiza Almeida', 'F', 'AC'),
    ('638', 'Ana Beatriz Souza', 'F', 'CE'),
    ('639', 'Luiz Jurandino ', 'M', 'ES'),
    ('640', 'João Pedro Santos', 'M', 'GO'),
    ('641', 'Henrique Almeida', 'M', 'MS'),
    ('642', 'Lucas Barreto', 'M', 'GO'),
    ('643', 'Fátima Pelaes', 'F', 'ES'),
    ('644', 'Eraldo Trindade', 'M', 'MG'),
    ('645', 'Geovani Borges', 'M', 'PE'),
    ('646', 'Raquel Capiberibe', 'F', 'RO'),
    ('647', 'Jurandil Juarez', 'M', 'PE'),
    ('648', 'Clark Platon', 'M', 'TO'),
    ('649', 'Lourival Freitas', 'M', 'MG'),
    ('650', 'Aline Gurgel', 'F', 'MG');
    
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
    ('PEC02/2004', '605', '802'),
    ('PL10/2012', '600', '801'), 
    ('PLP58/2005', '600', '801'), 
    ('PEC28/2001', '602', '800'), 
    ('PEC28/2001', '603', '800'), 
    ('PEC28/2001', '605', '801'), 
    ('PEC28/2001', '607', '800'), 
    ('PEC28/2001', '615', '803'), 
    ('PEC28/2001', '616', '802'), 
    ('PEC28/2001', '611', '800'), 
    ('PEC28/2001', '620', '800'),
    ('PEC10/2020', '602', '801'), 
    ('PEC10/2020', '603', '801'), 
    ('PEC10/2020', '615', '800'), 
    ('PEC10/2020', '617', '800'), 
    ('PEC10/2020', '618', '801'), 
    ('PEC10/2020', '619', '801'), 
    ('PEC10/2020', '600', '801'), 
    ('PEC10/2020', '604', '803'),
    ('PL10/2012', '605', '800'), 
    ('PL10/2012', '603', '800'), 
    ('PL10/2012', '619', '800'), 
    ('PL10/2012', '617', '800'),
    ('MPV05/2014', '602', '800'), 
    ('MPV05/2014', '603', '801'), 
    ('MPV05/2014', '615', '800'), 
    ('MPV05/2014', '617', '800'), 
    ('MPV05/2014', '618', '800'),
    ('MPV26/2012', '611', '800'), 
    ('MPV26/2012', '616', '800'), 
    ('MPV26/2012', '618', '800'),
    ('PEC63/2021', '617', '800'), 
    ('PEC63/2021', '620', '800'), 
    ('PEC63/2021', '605', '800'),
    ('PEC02/2016', '608', '800'), 
    ('PEC02/2016', '620', '800'), 
    ('PEC02/2016', '617', '800'),
    ('PEC02/2016', '605', '800'), 
    ('PEC02/2016', '601', '803'),
    ('MPV45/2001', '608', '801'), 
    ('MPV45/2001', '607', '801'), 
    ('MPV45/2001', '611', '801'),
    ('MPV45/2001', '613', '800'),
    ('PLP58/2005', '609', '800'), 
    ('PLP58/2005', '610', '800'),
    ('PEC23/2016', '604', '801'), 
    ('PEC23/2016', '609', '801'), 
    ('PEC23/2016', '619', '801'),
    ('PEC23/2016', '600', '800'),
    ('PL10/2015', '602', '800'), 
    ('PL10/2015', '616', '800'), 
    ('PL10/2015', '618', '800'),
    ('MPV36/2008', '603', '800'), 
    ('MPV36/2008', '606', '801'), 
    ('MPV36/2008', '611', '801'), 
    ('MPV36/2008', '618', '803'),
    ('PEC14/2015', '603', '800'), 
    ('PEC14/2015', '606', '801'), 
    ('PEC14/2015', '611', '801');
    
    /*Table CARGO*/
    INSERT INTO CARGO VALUES ('2001', 'Presidente da República', 'Federal'), 
    ('2002', 'Deputado', 'Federal'), 
    ('2003', 'Deputado', 'Estadual'), 
    ('2004', 'Senador', 'Estadual'), 
    ('2005', 'Governador', 'Estadual'), 
    ('2006', 'Presidente da Câmara', 'Federal'), 
    ('2007', 'Vice Presidente da Câmara', 'Federal'), 
    ('2008', 'Secretario da Câmara', 'Estadual'), 
    ('2009', 'Suplente de secretario da Câmara', 'Estadual');
    
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
    ('2009', '620', '2007-02-01', '2011-07-06'),
    ('2001', '621', '2003-04-02', '2007-02-10'), 
    ('2002', '622', '1987-12-25', '1990-12-24'), 
    ('2004', '623', '2004-03-25', '2008-11-15'), 
    ('2003', '624', '2000-01-10', '2003-04-02'), 
    ('2007', '625', '2010-05-03', '2011-10-12'), 
    ('2002', '626', '2022-01-01', '2022-10-10'), 
    ('2002', '627', '1985-06-12', '1990-12-12'), 
    ('2006', '628', '2014-07-23', '2017-12-29'), 
    ('2009', '629', '1992-02-12', '1995-04-20'), 
    ('2005', '630', '2001-01-20', '2004-12-26'), 
    ('2001', '631', '2005-02-10', '2009-04-12'), 
    ('2007', '632', '2001-10-26', '2003-04-10'), 
    ('2002', '633', '2012-10-02', '2013-11-25'), 
    ('2006', '634', '1999-12-02', '2001-08-28'), 
    ('2003', '635', '2013-10-25', '2015-04-21'), 
    ('2004', '636', '2010-04-04', '2012-06-23'), 
    ('2009', '637', '2007-01-27', '2004-05-24'), 
    ('2005', '638', '2011-01-03', '2015-12-27'), 
    ('2008', '639', '2005-03-09', '2006-12-29'), 
    ('2006', '640', '1980-04-12', '1990-11-05'), 
    ('2002', '641', '1995-03-02', '1999-05-05'), 
    ('2003', '642', '2001-03-10', '2005-12-14'), 
    ('2002', '643', '1990-10-24', '1994-05-25'), 
    ('2002', '644', '1995-12-05', '1996-04-06'), 
    ('2006', '645', '2004-12-25', '2008-05-12'), 
    ('2008', '646', '2007-08-09', '2005-10-16'), 
    ('2005', '647', '2000-01-12', '2004-01-20'), 
    ('2007', '648', '2001-04-20', '2003-12-05'), 
    ('2003', '649', '2020-01-01', '2021-12-04'), 
    ('2002', '650', '1995-06-15', '1996-12-25');
    
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
    (16, '620', '2007-02-01', '2011-07-06'),
    (10, '621', '2003-04-02', '2007-02-10'), 
    (11, '622', '1985-12-25', '1990-12-24'), 
    (12, '623', '2004-03-25', '2008-11-15'), 
    (11, '624', '2000-01-10', '2003-04-02'), 
    (10, '625', '2010-05-03', '2012-10-12'), 
    (15, '626', '2022-01-01', '2022-10-10'), 
    (16, '627', '1985-06-12', '1990-12-12'), 
    (10, '628', '2014-07-23', '2017-12-29'), 
    (12, '629', '1992-02-12', '1995-04-20'), 
    (16, '630', '2001-01-20', '2004-12-26'), 
    (10, '631', '2005-02-10', '2009-04-12'), 
    (11, '632', '2001-10-26', '2003-04-10'), 
    (10, '633', '2012-10-02', '2013-11-25'), 
    (18, '634', '1999-12-02', '2001-08-28'), 
    (11, '635', '2013-10-25', '2015-04-21'), 
    (17, '636', '2010-04-04', '2012-06-23'), 
    (18, '637', '2007-01-27', '2004-05-24'), 
    (17, '638', '2011-01-03', '2015-12-27'), 
    (10, '639', '2005-03-09', '2006-12-29'), 
    (14, '640', '1980-04-12', '1990-11-05'), 
    (14, '641', '1995-03-02', '1999-05-05'), 
    (10, '642', '2001-03-10', '2005-12-14'), 
    (10, '643', '1990-10-24', '1994-05-25'), 
    (11, '644', '1995-12-05', '1996-04-06'), 
    (18, '645', '2004-12-25', '2008-05-12'), 
    (17, '646', '2007-08-09', '2005-10-16'), 
    (13, '647', '2000-01-12', '2004-01-20'), 
    (13, '648', '2001-04-20', '2003-12-05'), 
    (19, '649', '2020-01-01', '2021-12-04'), 
    (10, '650', '1995-06-15', '1996-12-25');
    
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
    ('1017', 'PL25/2021', '2020-08-19'),
    ('1025', 'PLP01/2007', '2020-10-12'), 
    ('1023', 'PEC10/2020', '2018-12-02'), 
    ('1028', 'MPV05/2014', '2021-07-02'), 
    ('1027', 'PLP01/2007', '2019-09-25'), 
    ('1010', 'PLP01/2007', '2020-05-25'), 
    ('1022', 'PEC30/2004', '2021-09-14'), 
    ('1022', 'PL10/2015', '2021-11-14'), 
    ('1015', 'PEC14/2015', '2018-10-25'), 
    ('1023', 'MPV36/2008', '2021-10-10'), 
    ('1015', 'PEC02/2004', '2021-06-11'), 
    ('1011', 'MPV05/2014', '2022-09-24'), 
    ('1014', 'PLP01/2007', '2018-10-24'), 
    ('1017', 'PLP58/2005', '2020-06-16'),
    ('1013', 'PEC63/2021', '2019-01-12'), 
    ('1015', 'PLP25/2008', '2019-02-04'), 
    ('1023', 'PEC30/2004', '2020-02-24'), 
    ('1001', 'MPV36/2008', '2020-02-22'),  
    ('1003', 'MPV36/2008', '2020-04-18'),
    ('1001', 'PL15/2021', '2020-01-12'), 
    ('1001', 'MPV45/2001', '2020-01-12'), 
    ('1001', 'PL10/2015', '2021-01-25'),
    ('1005', 'PL15/2021', '2022-01-12'), 
    ('1005', 'MPV36/2008', '2022-01-24'), 
    ('1005', 'PL10/2015', '2021-01-25'),
    ('1008', 'PEC28/2001', '2022-01-02'), 
    ('1008', 'PEC10/2020', '2021-01-24'), 
    ('1008', 'PL10/2015', '2021-01-25'),
    ('1010', 'PEC28/2001', '2020-01-12'), 
    ('1010', 'PL10/2012', '2020-01-14'),
    ('1013', 'PEC28/2001', '2021-01-12'), 
    ('1013', 'MPV05/2014', '2020-01-14'),
    ('1022', 'PLP01/2007', '2021-01-12'), 
    ('1022', 'MPV05/2014', '2021-01-14'),
    ('1022', 'PEC28/2001', '2021-10-14'), 
    ('1022', 'PLP25/2008', '2021-01-14'),
    ('1025', 'MPV45/2001', '2020-01-12'), 
    ('1025', 'MPV05/2014', '2021-01-14'),
    ('1025', 'PLP58/2005', '2020-10-14'), 
    ('1025', 'PL10/2015', '2021-01-12'), 
    ('1025', 'PEC14/2015', '2021-05-10'),
    ('1025', 'PLP25/2008', '2021-06-14'),
    ('1027', 'PEC30/2004', '2020-01-25'), 
    ('1027', 'PL10/2015', '2020-01-25'),
    ('1027', 'MPV45/2001', '2020-10-10'), 
    ('1027', 'PEC23/2016', '2021-06-12');

    INSERT INTO MODERA VALUES 
    ('611', '601', '2022-06-01', '2022-10-30'), 
    ('604', '603', '2004-06-17', '2005-08-01'), 
    ('644', '650', '1995-12-10', '1996-04-01'), 
    ('614', '606', '2008-10-10', '2011-03-11'), 
    ('619', '607', '2009-04-11', '2009-09-09'), 
    ('611', '608', '2022-05-30', '2022-11-01'), 
    ('616', '609', '2020-04-12', '2022-04-12'), 
    ('620', '610', '2007-12-10', '2009-03-01'), 
    ('619', '614', '2008-10-10', '2012-04-17'),
    ('628', '615', '2015-12-05', '2017-12-29'),
    ('649', '616', '2020-04-12', '2021-12-04'),
    ('621', '618', '2004-04-05', '2006-05-28'),
    ('637', '620', '2007-02-01', '2009-05-24'),
    ('623', '621', '2004-03-25', '2007-02-10'),
    ('627', '622', '1985-12-25', '1990-12-12'),
    ('631', '623', '2005-02-10', '2008-11-15'),
    ('632', '624', '2001-10-26', '2003-04-02'),
    ('636', '625', '2010-05-03', '2012-06-23'),
    ('640', '627', '1985-06-12', '1990-11-05'),
    ('638', '628', '2014-07-23', '2015-12-27'),
    ('643', '629', '1992-02-12', '1994-05-25'),
    ('632', '630', '2001-10-26', '2003-04-10'),
    ('637', '631', '2007-01-27', '2009-04-12'),
    ('642', '632', '2001-10-26', '2003-04-10'),
    ('638', '633', '2012-10-02', '2013-11-25'),
    ('647', '634', '2000-01-12', '2001-08-28'),
    ('628', '635', '2014-07-23', '2015-04-21'),
    ('638', '636', '2011-01-03', '2012-06-23'),
    ('646', '637', '2007-08-09', '2009-01-01'),
    ('636', '638', '2011-01-03', '2015-04-21'),
    ('645', '639', '2005-03-09', '2006-12-29'),
    ('629', '643', '1992-02-12', '1994-05-25'),
    ('650', '644', '1995-12-05', '1996-04-06'),
    ('646', '645', '2007-08-09', '2008-05-12'),
    ('637', '646', '2007-08-09', '2009-05-24'),
    ('648', '647', '2001-04-20', '2003-12-05'),
    ('642', '648', '2001-04-20', '2003-12-05'),
    ('616', '649', '2020-04-12', '2021-12-04');


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)
    SELECT * FROM POLITICO WHERE sexo_politico='F';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-where-1.PNG)
    
    SELECT nome_cliente, nascimento_cliente FROM CLIENTE WHERE fk_cliente_uf_sigla='SP';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-where-2.PNG)
    
    SELECT id_legislativo, resumo_legislativo FROM PROPOSTA_LEGISLATIVA WHERE status_legislativo='Aprovada';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-where-3.PNG)
    
    SELECT nome_partido, ano_fundacao FROM PARTIDO WHERE extract(year FROM ano_fundacao)>1981;
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-where-4.PNG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    /*Consultar nome e email do cliente*/
    SELECT nome_cliente, email_cliente FROM CLIENTE;
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/consulta_nome_email_cliente.png)

    /*Consultar quais cargos são de nivel federal*/
    SELECT nome_cargo FROM cargo WHERE nivel_cargo = 'Federal';
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/consulta_cargo_federal.png)

    /*Consultar o nome da proposta e data de inicio de sua discussão*/
    SELECT fk_discute_proposta_legislativa_id, data_inicio FROM discutida ORDER BY data_inicio;
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/consulta_nome_proposta_datainicio_discutida.png)

    /*Consultar a sigla do estado e o nome*/
    SELECT * FROM uf;
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/consulta_uf.png)

    /*Consultar os clientes que nasceram depois de 2000*/
    SELECT nome_cliente, nascimento_cliente FROM cliente WHERE nascimento_cliente > '2000-01-01';
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/consulta_clientes_nasceram_depois_2000.png)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
     /*Consultar propostas aprovadas que fizeram algum tipo de alteração*/
    SELECT P.id_legislativo AS "Proposta", P.resumo_legislativo AS "Resumo", T.descricao_proposta AS "Tipo" FROM PROPOSTA_LEGISLATIVA AS P
        INNER JOIN TIPO_PROPOSTA AS T
            ON P.FK_PL_TIPO_PROPOSTA_id = T.id_proposta
    WHERE P.status_legislativo = 'Aprovada' AND P.resumo_legislativo LIKE 'Altera%'
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-like-1.png)

    /*Consultar politicos moderados pelo moderador com nome Ciro*/
    SELECT MDR.nome_politico AS "Moderador", POL.nome_politico AS "Moderado"  FROM MODERA AS MD
	    INNER JOIN POLITICO AS MDR
		    ON MD.FK_MODERA_POLITICO_id = MDR.id_politico
	    INNER JOIN POLITICO AS POL
		    ON MD.FK_MODERADO_POLITICO_id = POL.id_politico
	WHERE MDR.nome_politico LIKE '%Ciro%'
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-like-2.png)

    /*Consultar propostas votadas pelo político Geraldo*/
    SELECT	VOTAR.FK_VOTO_PROPOSTA_LEGISLATIVA_id AS "Proposta Votada", 
			P.resumo_legislativo AS "Resumo", 
			POL.nome_politico AS "Politico", 
			T.descricao_voto AS "Voto"
	FROM VOTA_PROPOSTA_LEGISLATIVA AS VOTAR
		INNER JOIN PROPOSTA_LEGISLATIVA AS P
			ON VOTAR.FK_VOTO_PROPOSTA_LEGISLATIVA_id = P.id_legislativo
		INNER JOIN POLITICO AS POL
			ON VOTAR.FK_VOTO_POLITICO_id = POL.id_politico
		INNER JOIN TIPO_VOTO AS T
			ON VOTAR.FK_VOTO_TIPO_VOTO_id = T.id_tipo_voto
	WHERE POL.nome_politico LIKE '%Geraldo%'
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-like-3.png)

     /*Consultar Políticos que fazem parte das Comissões que tratam de segurança*/
	SELECT CMS.nome_comissao, P.nome_politico FROM COMPOE AS C
		INNER JOIN COMISSAO AS CMS
			ON C.FK_COMPOE_COMISSAO_id = CMS.id_comissao
		INNER JOIN POLITICO AS P
			ON C.FK_COMPOE_POLITICO_id = P.id_politico
	WHERE CMS.nome_comissao LIKE '%Segurança%'

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-like-4.png)

     /*Consultar Quantidade de usuários seguindo propostas de 2021*/
	SELECT COUNT(*) AS [Quantidade], FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id AS “Propostas” FROM ACOMPANHA
	WHERE FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id LIKE '%2021%'
	GROUP BY FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-like-5.png)    

     b) Criar uma consulta para cada tipo de função data apresentada.
     /*Consultar tempo em dias desde que a última proposta foi seguida*/
	SELECT (current_date - data_acompanha) AS "Dias desde que a ultima proposta foi seguida" FROM ACOMPANHA
	ORDER BY data_acompanha DESC
	LIMIT 1

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-1.png)

     /*Consultar idade dos usuários que seguem propostas do ES*/
	SELECT nome_cliente AS "Nome", age(nascimento_cliente) AS "Idade", FK_CLIENTE_UF_sigla AS "Estado que segue" FROM CLIENTE
	WHERE FK_CLIENTE_UF_sigla = 'ES'

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-2.png)

     /*Consultar idade dos usuários que seguem propostas do ES*/
	SELECT nome_cliente AS "Nome", (to_char(date_part('year',age(nascimento_cliente)),'99') || ' anos') AS "Idade",FK_CLIENTE_UF_sigla AS "Estado que segue" FROM CLIENTE
	WHERE FK_CLIENTE_UF_sigla = 'ES'

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-3.png)

     /*Consultar o tempo de atividade dos partidos que existem atualmente*/
	SELECT nome_partido AS "Sigla", descricao_partido AS "Nome", ((extract('year' from current_date)) - (extract('year' from ano_fundacao))) AS "Anos ativo" FROM PARTIDO
	WHERE ((extract('year' from current_date)) - (extract('year' from ano_fundacao))) > 10
	ORDER BY nome_partido

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-4.png)

     /*Consultar tempo exato desde que os políticos registrados assumiram um cargo em nível Federal*/
	SELECT C.nome_cargo AS "Cargo assumido", C.nivel_cargo as "Nivel do cargo", P.nome_politico as "Nome", (now() - (A.inicio_mandato)) AS "Tempo desde que assumiu o cargo" FROM ASSUME AS A
		INNER JOIN CARGO AS C
			ON A.FK_ASSUME_CARGO_id = C.id_cargo
		INNER JOIN POLITICO AS P
			ON A.FK_ASSUME_POLITICO_id = P.id_politico
	WHERE C.nivel_cargo = 'Federal'

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-5.png)

     /*Consultar tempo desde o fim do mandato como Presidente da Câmara dos Moderadores cadastrados*/
	SELECT P.nome_politico AS "Nome", (now() - (date_trunc('day', M.fim_moderacao) + '23:59:59')) AS "Tempo desde o fim do mandato como Presidente da Câmara" FROM MODERA AS M
		INNER JOIN POLITICO AS P
			ON M.FK_MODERA_POLITICO_id = P.id_politico
	ORDER BY "Tempo desde o fim do mandato como Presidente da Câmara"

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-data-6.png)

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    DELETE FROM MODERA WHERE extract(year FROM fim_moderacao)<2010;
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/delete-1.PNG)
    
    DELETE FROM VOTA_PROPOSTA_LEGISLATIVA WHERE fk_voto_tipo_voto_id='803';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/delete-2.PNG)
    
    DELETE FROM ASSUME WHERE fk_assume_cargo_id='2004'AND extract(year FROM inicio_mandato)>=2008;
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/delete-3.PNG)

    b) Criar minimo 3 de atualização
    UPDATE POLITICO SET fk_politico_uf_sigla='SP' WHERE id_politico='600';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/update-1.PNG)
    
    UPDATE PARTIDO SET nome_partido='Novo', descricao_partido='Partido Novo' WHERE numero_partido=19;
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/update-2.PNG)
    
    UPDATE COMISSAO SET periodo_comissao='Permanente' WHERE id_comissao='107';
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/update-3.PNG)

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    /*Nome do politico, Nome do cargo, Inicio e Fim do mandato, ordenado em ordem ascendente do inicio do mandato*/
    SELECT nome_politico, nome_cargo, inicio_mandato, fim_mandato
    FROM politico 
    INNER JOIN assume ON politico.id_politico = assume.fk_assume_politico_id
    INNER JOIN cargo ON cargo.id_cargo = assume.fk_assume_cargo_id
    ORDER BY inicio_mandato;  
![ordenada](https://github.com/higorcamposs/FeedPolitico/blob/master/images/nomePolitico_nomeCargo_iniFimMandato.png)

    /*Nome do cliente, ordenado por ordem alfabetica, e qual proposta acompanha*/
    SELECT nome_cliente, fk_acompanha_proposta_legislativa_id
    FROM cliente
    INNER JOIN acompanha ON cliente.id_cliente = acompanha.fk_acompanha_cliente_id
    ORDER BY nome_cliente;
![ordenada](https://github.com/higorcamposs/FeedPolitico/blob/master/images/nomeClienteOrdenado_propostaAcompanha.png)    

    /*Nome do politico, ordenado por ordem alfabetica, e comissão que ele compoe*/
    SELECT nome_politico, nome_comissao
    FROM politico
    INNER JOIN compoe ON politico.id_politico = compoe.fk_compoe_politico_id
    INNER JOIN comissao ON compoe.fk_compoe_comissao_id = comissao.id_comissao
    ORDER BY compoe_data_inicio;
![ordenada](https://github.com/higorcamposs/FeedPolitico/blob/master/images/nomePoliticoOrdenado_compoeComissao.png)    

    /*Nome do politico que votou em alguma proposta legislativa, nome da proposta, ordenada por ordem alfabetica, e o tipo do voto*/
    SELECT nome_politico, fk_voto_proposta_legislativa_id, descricao_voto
    FROM politico
    INNER JOIN vota_proposta_legislativa ON politico.id_politico = vota_proposta_legislativa.fk_voto_politico_id
    INNER JOIN tipo_voto ON vota_proposta_legislativa.fk_voto_tipo_voto_id = tipo_voto.id_tipo_voto
    ORDER BY fk_voto_proposta_legislativa_id;
![ordenada](https://github.com/higorcamposs/FeedPolitico/blob/master/images/nomePolitico_voto_nomePropostaOrdenada_tipoVoto.png)    

    /*Nome do politico e do partido, ordenado por ordem alfabetica, inicio, em ordem do mais antigo para mais novo, e fim da participação*/
    SELECT nome_politico, nome_partido, participa_data_inicio, participa_data_fim
    FROM politico
    INNER JOIN participa ON politico.id_politico = participa.fk_participa_politico_id
    INNER JOIN partido ON partido.numero_partido = participa.fk_participa_partido_id
    ORDER BY nome_partido, participa_data_inicio;
![ordenada](https://github.com/higorcamposs/FeedPolitico/blob/master/images/nomePolitico_nomePartidoOrdenado_iniFim.png)
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    
    /*Quantidade de usuários acompanhando as propostas*/
    SELECT A.FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id AS "Código da Proposta", P.resumo_legislativo, COUNT(*) AS "Quantidade de usuários acompanhando" FROM ACOMPANHA AS A
	INNER JOIN PROPOSTA_LEGISLATIVA AS P
	    ON A.FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id = P.id_legislativo
    GROUP BY A.FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id, P.resumo_legislativo
    ORDER BY "Quantidade de usuários acompanhando" DESC
![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-1.png)

    /*Quantidade de propostas por tipo*/
    SELECT T.descricao_proposta AS "Tipo da Proposta", COUNT(*) AS "Quantidade de propostas desse tipo" FROM PROPOSTA_LEGISLATIVA AS P
	INNER JOIN TIPO_PROPOSTA AS T
		ON P.FK_PL_TIPO_PROPOSTA_id = T.id_proposta
    GROUP BY P.FK_PL_TIPO_PROPOSTA_id, T.descricao_proposta

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-2.png)

    /*Quantidade de Políticos por sexo*/
    SELECT sexo_politico AS "Sexo", count(*) AS "Quantidade de Politicos" FROM POLITICO
    GROUP BY sexo_politico

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-3.png)

    /*Quantidade de Políticos que representam cada estado*/
    SELECT P.FK_POLITICO_UF_sigla AS "Sigla", UF.nome_uf AS "Nome do Estado", count(*) AS "Quantidade de Politicos que o representam" FROM POLITICO AS P
	INNER JOIN UF
		ON UF.sigla = P.FK_POLITICO_UF_sigla
    GROUP BY P.FK_POLITICO_UF_sigla, UF.nome_uf

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-4.png)

    /*Quantidade de propostas votadas por tipo*/
    SELECT T.descricao_proposta AS "Tipo de Proposta Legislativa", COUNT (*) AS "Quantidade votada" FROM PROPOSTA_LEGISLATIVA AS P
	INNER JOIN TIPO_PROPOSTA AS T
		ON P.FK_PL_TIPO_PROPOSTA_id = T.id_proposta
	LEFT JOIN VOTA_PROPOSTA_LEGISLATIVA AS V
		ON V.FK_VOTO_PROPOSTA_LEGISLATIVA_id = P.id_legislativo
    WHERE V.FK_VOTO_PROPOSTA_LEGISLATIVA_id IS NOT NULL
    GROUP BY T.descricao_proposta

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-5.png)

    /*Quantidade de usuários acompanhando as propostas*/
    SELECT PAR.FK_PARTICIPA_PARTIDO_id AS "Numero do Partido", P.descricao_partido "Nome do Partido", 
    COUNT(*) AS "Quantidade de participantes" FROM PARTICIPA AS PAR
	INNER JOIN PARTIDO AS P
		ON PAR.FK_PARTICIPA_PARTIDO_id = P.numero_partido
    GROUP BY PAR.FK_PARTICIPA_PARTIDO_id, P.descricao_partido

![consulta](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-group-6.png)


#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    SELECT id_politico, nome_politico, fk_moderado_politico_id FROM POLITICO LEFT OUTER JOIN MODERA ON (MODERA.fk_modera_politico_id = POLITICO.id_politico);
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-left.PNG)
    
    SELECT id_legislativo, resumo_legislativo, descricao_proposta FROM PROPOSTA_LEGISLATIVA RIGHT OUTER JOIN TIPO_PROPOSTA ON (PROPOSTA_LEGISLATIVA.fk_pl_tipo_proposta_id = TIPO_PROPOSTA.id_proposta);
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-right.PNG)
    
    SELECT fk_cliente_uf_sigla, nome_uf FROM CLIENTE FULL OUTER JOIN UF ON (CLIENTE.fk_cliente_uf_sigla = UF.sigla);
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-full.PNG)
    
    SELECT nome_cliente, fk_acompanha_proposta_legislativa_id FROM CLIENTE FULL OUTER JOIN ACOMPANHA ON (CLIENTE.id_cliente = ACOMPANHA.fk_acompanha_cliente_id);
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/select-full-2.PNG)

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
    /*Verificar quais clientes são do ES*/
    CREATE VIEW cliente_do_ES as
    SELECT nome_cliente FROM cliente
    WHERE fk_cliente_uf_sigla = 'ES';
    
    SELECT * FROM cliente_do_ES;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/cliente_do_es.png)    

    /*Verificar quais politicos são do PT*/
    CREATE VIEW politico_do_PT as
    SELECT nome_politico, nome_partido
    FROM politico
    INNER JOIN participa ON politico.id_politico = participa.fk_participa_politico_id
    INNER JOIN partido ON partido.numero_partido = participa.fk_participa_partido_id
    WHERE nome_partido = 'PT';
    
    SELECT * FROM politico_do_PT;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/politico_do_pt.png)
    

    /*Verificar quais politicos são Senador*/
    CREATE VIEW politicos_senadores as
    SELECT nome_politico, nome_cargo
    FROM politico 
    INNER JOIN assume ON politico.id_politico = assume.fk_assume_politico_id
    INNER JOIN cargo ON cargo.id_cargo = assume.fk_assume_cargo_id
    WHERE nome_cargo = 'Senador';
    
    SELECT * FROM politicos_senadores;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/politico_senador.png)

    /*Verificar o nome do politico e o voto para a proposta: MPV36/2008*/
    CREATE VIEW politico_voto_MPV362008 as
    SELECT nome_politico, fk_voto_proposta_legislativa_id, descricao_voto
    FROM politico
    INNER JOIN vota_proposta_legislativa ON politico.id_politico = vota_proposta_legislativa.fk_voto_politico_id
    INNER JOIN tipo_voto ON vota_proposta_legislativa.fk_voto_tipo_voto_id = tipo_voto.id_tipo_voto
    WHERE fk_voto_proposta_legislativa_id = 'MPV36/2008';
    
    SELECT * FROM politico_voto_MPV362008;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/politico_voto_MPV362008.png)

    /*Verificar quais politicos compoem a Comissão de Transportes e Comunicações*/
    CREATE VIEW politico_compoe_CTC as
    SELECT nome_politico, nome_comissao
    FROM politico
    INNER JOIN compoe ON politico.id_politico = compoe.fk_compoe_politico_id
    INNER JOIN comissao ON compoe.fk_compoe_comissao_id = comissao.id_comissao
    WHERE nome_comissao = 'Comissão de Transportes e Comunicações';
    
    SELECT * FROM politico_compoe_CTC;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/politico_compoe_CTC.png)

    /*Verificar os clientes que nasceram depois de 1990*/
    CREATE VIEW cliente_acima_1990 as
    SELECT nome_cliente, nascimento_cliente 
    FROM cliente 
    WHERE nascimento_cliente > '1990-01-01' 
    ORDER BY nascimento_cliente;

    SELECT * FROM cliente_acima_1990;
![verifica](https://github.com/higorcamposs/FeedPolitico/blob/master/images/cliente_acima_1990.png)
 
#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     SELECT POL.nome_politico AS "Politico", COUNT(*) AS "Votos em Propostas não aprovadas" FROM VOTA_PROPOSTA_LEGISLATIVA AS V INNER JOIN PROPOSTA_LEGISLATIVA AS P ON V.FK_VOTO_PROPOSTA_LEGISLATIVA_id = P.id_legislativo INNER JOIN POLITICO AS POL ON  V.FK_VOTO_POLITICO_id = POL.id_politico WHERE V.FK_VOTO_PROPOSTA_LEGISLATIVA_id IN (SELECT id_legislativo FROM PROPOSTA_LEGISLATIVA WHERE status_legislativo <> 'Aprovada') GROUP BY V.FK_VOTO_POLITICO_id, POL.nome_politico
  ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/subconsultas-1.PNG)
     
     SELECT P.id_legislativo	 AS "Proposta Legislativa", P.resumo_legislativo AS "Resumo", P.status_legislativo AS "Aprovada?", POL.nome_politico AS "Politico", TV.descricao_voto AS "Voto" FROM VOTA_PROPOSTA_LEGISLATIVA AS V INNER JOIN PROPOSTA_LEGISLATIVA AS P ON V.FK_VOTO_PROPOSTA_LEGISLATIVA_id = P.id_legislativo INNER JOIN POLITICO AS POL ON V.FK_VOTO_POLITICO_id = POL.id_politico INNER JOIN TIPO_VOTO AS TV ON V.FK_VOTO_TIPO_VOTO_id = TV.id_tipo_voto WHERE P.id_legislativo IN (SELECT id_legislativo FROM PROPOSTA_LEGISLATIVA INNER JOIN TIPO_PROPOSTA ON FK_PL_TIPO_PROPOSTA_id = id_proposta WHERE descricao_proposta = 'PEC - Proposta de Emenda à Constituição')
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/subconsultas-2.PNG)
   
    SELECT P.nome_politico AS "Politico", P.sexo_politico AS "Sexo", P.FK_POLITICO_UF_sigla	AS "Estado que representa" FROM COMPOE AS C INNER JOIN POLITICO AS P ON C.FK_COMPOE_POLITICO_id = P.id_politico WHERE C.FK_COMPOE_COMISSAO_id IN (SELECT id_comissao FROM COMISSAO WHERE periodo_comissao = 'Permanente') AND C.compoe_data_inicio < '2009-01-01' AND C.compoer_data_fim > '2009-01-01'
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/subconsultas-3.PNG)
   
    SELECT D.FK_DISCUTE_PROPOSTA_LEGISLATIVA_id AS "Proposta", P.resumo_legislativo AS "Resumo" FROM DISCUTIDA AS D INNER JOIN PROPOSTA_LEGISLATIVA AS P ON D.FK_DISCUTE_PROPOSTA_LEGISLATIVA_id = P.id_legislativo WHERE FK_DISCUTE_COMISSAO_id IN (SELECT id_comissao FROM COMISSAO WHERE periodo_comissao = 'Permanente') AND data_inicio < '2018-04-01' AND data_fim > '2018-04-01'
   ![select-where](https://github.com/higorcamposs/FeedPolitico/blob/master/images/subconsultas-4.PNG)

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
    
    /*Relatório que mostre o nome de cada partido e a quantidade de políticos do sexo feminino por partido.*/
    SELECT 
			PAR.numero_partido AS "Numero Partido", 
			PAR.nome_partido AS "Sigla Partido", 
			PAR.descricao_partido AS "Nome Partido", 
			COUNT(*) AS "Quantidade" 
		FROM PARTICIPA AS P
			INNER JOIN PARTIDO AS PAR
				ON P.FK_PARTICIPA_PARTIDO_id = PAR.numero_partido
			INNER JOIN POLITICO AS POL
				ON P.FK_PARTICIPA_POLITICO_id = POL.id_politico
	WHERE POL.sexo_politico = 'F'
	GROUP BY PAR.numero_partido, PAR.nome_partido, PAR.descricao_partido, POL.sexo_politico
	
	
    /*Relatório que mostre o tipo de proposta legislativa e a quantidade de clientes que a acompanham.*/
    SELECT 
			TP.descricao_proposta AS "Tipo proposta", 
			COUNT(*) AS "Quantidade de pessoas seguindo a proposta" 
		FROM PROPOSTA_LEGISLATIVA AS PL
			INNER JOIN TIPO_PROPOSTA AS TP
				ON PL.FK_PL_TIPO_PROPOSTA_id = TP.id_proposta
			INNER JOIN ACOMPANHA AS A
				ON PL.id_legislativo = A.FK_ACOMPANHA_PROPOSTA_LEGISLATIVA_id	
	GROUP BY TP.descricao_proposta
	ORDER BY TP.descricao_proposta
    
    /*Relatório que mostre as informações relacionadas a todos os políticos inseridos no sistema. O resultado deve conter identificador, nome, sexo, nome do cargo, nível do cargo, nome do partido que participa, início do mandato e fim do mandato.*/
	SELECT 
			POL.id_politico AS "Identificador do politico", 
			POL.nome_politico AS "Nome do politico", 
			POL.sexo_politico AS "Sexo", 
			P.descricao_partido AS "Nome do partido", 
			C.nome_cargo AS "Cargo exercido", 
			C.nivel_cargo AS "Nivel do cargo", 
			A.inicio_mandato AS "Inicio do mandato", 
			A.fim_mandato AS "Fim do mandato"
		FROM POLITICO AS POL
			INNER JOIN PARTICIPA AS PAR
				ON POL.id_politico = PAR.FK_PARTICIPA_POLITICO_id
			INNER JOIN PARTIDO AS P
				ON PAR.FK_PARTICIPA_PARTIDO_id = P.numero_partido
			INNER JOIN ASSUME AS A
				ON POL.id_politico = A.FK_ASSUME_POLITICO_id
			INNER JOIN CARGO AS C
				ON A.FK_ASSUME_CARGO_id = C.id_cargo
		ORDER BY C.nivel_cargo DESC, POL.id_politico
		
	/*Relatório que mostre o nome e o tipo da proposta, e a média de aprovação por tipo.*/
	SELECT 
		TP.descricao_proposta AS "Tipo proposta", 
		((CAST((
		SELECT 
			COUNT(*) FROM PROPOSTA_LEGISLATIVA AS PL1
			WHERE PL1.status_legislativo = 'Aprovada' AND 
				  PL1.FK_PL_TIPO_PROPOSTA_id = TP.id_proposta)AS FLOAT)  / CAST((COUNT(*)) AS FLOAT))*100) AS "Porcentagem de Propostas Aprovadas"
	FROM PROPOSTA_LEGISLATIVA AS PL
		INNER JOIN TIPO_PROPOSTA AS TP
			ON PL.FK_PL_TIPO_PROPOSTA_id = TP.id_proposta
	GROUP BY TP.id_proposta, TP.descricao_proposta
	ORDER BY TP.descricao_proposta

	/*Relatório que mostre o nome de cada político e identificador dos políticos que eles moderam.*/
	SELECT 
		P.nome_politico AS "Nome do Moderador da câmara",
		M.inicio_moderacao AS "Inicio do mandato do Moderador",
		M.fim_moderacao AS "Final do mandato do Moderador",
		POL.nome_politico AS "Nome dos Político moderada",
		POL.sexo_politico AS "Sexo do moderado"
	FROM MODERA AS M
		INNER JOIN POLITICO AS P
			ON M.FK_MODERA_POLITICO_id = P.id_politico
		INNER JOIN POLITICO AS POL
			ON M.FK_MODERADO_POLITICO_id = POL.id_politico

    
    
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


