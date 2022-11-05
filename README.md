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
    
> O sistema Feed Político precisa inicialmente das seguintes informações:
* Informações sobre propostas legislativas. As propostas legislativas devem conter tipo, identificador, nome do criador, nomes de quem votou contra e a favor, descrição e status. Os tipos podem ser projetos de lei, propostas de emenda constitucional e medida provisória. O status da proposta é “instaurada”, “não instaurada” ou "trâmite";
* Informações sobre políticos. Os políticos devem ser deputados, senadores, governadores e presidentes. Cada político, independente do tipo, devem conter nome, nível de mandato, cargo, partido, quais comissões faz parte, quantidade de mandatos, e estado em que foi eleito;
* Informações sobre comissões, que devem conter participantes e se é temporária ou permanente;
* Informações sobre a Câmara, que contém o nome do presidente da Câmara, nome dos vice-presidentes, nome dos secretários e suplentes de secretário, e quais partidos participam;
* Informações sobre partidos. Os partidos devem conter nome, integrantes, fundador(es), descrição e ano que foi fundado.
* Informações sobre os clientes, bem como a média das idades que mais acompanham propostas políticas, principais estados, propostas legislativas mais acompanhadas, médias por acompanhamento de proposta e por político que propôs. 
* Informações sobre tipo de propostas legislativas, como por exemplo a quantidade de propostas por tipo, média de aprovação daquele tipo de proposta, interesse dos clientes em acompanhar determinado tipo de proposta, interesse dos políticos em votar no tipo de proposta referente. 
* Informações sobre as unidades federativas, quais possuem mais políticos, quantidade por tipo dos cargos, partidos predominantes, com mais políticos exercendo ou mais mandatos efetuados.
 

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:    
![Exemplo de Tabela de dados do Feed Politico](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/tabela_registros_feedpolitico.xlsx?raw=true "Tabela - Feed Politico")
    
    
### 5.MODELO CONCEITUAL<br>            
![Alt text](https://github.com/higorcamposs/FeedPolitico/blob/master/images/MapaConceitual.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/higorcamposs/FeedPolitico/blob/master/images/ModeloLogico.png?raw=true "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
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


