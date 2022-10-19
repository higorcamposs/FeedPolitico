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

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> O sistema proposto para o Feed Politico conterá as informacões aqui detalhadas. Dos politicos serão armazenados o nome, nivel de mandato, cargo politico, comissôes, votos que fez para propostas legislativas, quantidade de mandatados, ano do mandato, estado de atuação, descrição. Dos Partidos serão armazenados o número, nome, fundadores, cláusula barreira, ano de criação, principios, resumo sobre a história. O cliente destacou que cada projeto pode ter vários departamentos auxiliando no seu desenvolvimento, e cada departamento pode estar envolvido em vários projetos. Os dados relativos aos empregados que serão armazenados são: rg, nome, cpf, salário, data inicial do salario e supervisor de cada empregado. É importante destacar que cada empregado pode ser supervisionado por outro empregado, e obrigatoriamente deve estar alocado a um único departamento, mas pode gerenciar vários departamentos ou não gerenciar nenhum. Um empregado também pode participar de vários projetos, caso seja necessário, mas não precisa obrigatoriamente estar alocado em algum projeto. Com relação aos dependentes serão armazenadas as informações de nome do dependente, data de nascimento, sexo e grau de parentesco. Cada empregado pode ter vários dependentes, mas um dependente esta associado apenas a um único empregado. Com relação ao histórico de salário devemos armazenar as informações de valor do salário, data de início do salário no período e data final do salário no período. É importante lembrar que cada funcionario pode ter diversos eventos de histórico de salário associados a ele visto que este dado pode ser alterado várias vezes. 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> O sistema Feed Político precisa inicialmente das seguintes informações:
* Informações sobre propostas legislativas. As propostas legislativas devem conter tipo, identificador, nome do criador, nomes de quem votou contra e a favor, descrição e status. Os tipos podem ser projetos de lei, propostas de emenda constitucional e medida provisória. O status da proposta é “instaurada” ou “não instaurada”;
* Informações sobre políticos. Os políticos devem ser deputados, senadores, governadores e presidentes. Cada político, independente do tipo, devem conter nome, nível de mandato, cargo, partido, quais comissões faz parte, quantidade de mandatos, e estado em que foi eleito;
* Informações sobre comissões, que devem conter participantes e se é temporária ou permanente;
* Informações sobre a Câmara, que contém o nome do presidente da Câmara, nome dos vice-presidentes, nome dos secretários e suplentes de secretário, e quais partidos participam;
* Informações sobre partidos. Os partidos devem conter nome, integrantes, fundador(es), descrição e ano que foi fundado.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

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


