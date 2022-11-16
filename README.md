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
![Modelo Lógico](https://github.com/higorcamposs/FeedPolitico/blob/master/images/ModeloLogico.png?raw=true "Modelo Logico")

### 7	MODELO FÍSICO<br>
![Modelo Físico](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/MODELO_FISICO.sql "Modelo Fisico")
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Insert aplicado](https://github.com/higorcamposs/FeedPolitico/blob/master/arquivos/CREATE_TABLE_AND_INSERT_DATA.sql "Insert aplicado")

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
    a) Criar minimo 1 de cada tipo

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


