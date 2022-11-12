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
![Feed Politico](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/feedpolitico_v2.pdf "Feed Politico")<br>
![Arquivo PDF do Protótipo Balsamiq para download feito para desenvolvimento do sistema de Feed Politico](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/feedpolitico_v2.pdf?raw=true "Feed Politico")


#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> O sistema Feed Político precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada partido e a quantidade de políticos do sexo feminino por partido.
* Relatório que mostre o tipo de proposta legislativa e a quantidade de clientes que a acompanham. 
* Relatório que mostre as informações relacionadas a todos os políticos inseridos no sistema. O resultado deve conter identificador, nome, sexo, nome do cargo, nível do cargo, nome do partido que participa, início do mandato e fim do mandato.  
* Relatório que mostre o nome e o tipo da proposta, e a média de aprovação por tipo. 
* Relatório que mostre o nome de cada político e identificador dos políticos que eles moderam.
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:    
![Exemplo de Tabela de dados do Feed Politico](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/tabela_registros_feedpolitico_v2.xlsx?raw=true "Tabela - Feed Politico")
    
    
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
![Alt text](https://github.com/higorcamposs/FeedPolitico/blob/master/images/ModeloLogico.png?raw=true "Modelo Conceitual")

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
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
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


