--Banco de dados (DDL) de esqueleto_músculos

CREATE DATABASE sistemasCorporais;

--------------------------------------------

CREATE TABLE ossos (
	idOsso SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR(200)
);

CREATE TABLE musculos (
	idMusculo SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR(200) NOT NULL
);

CREATE TABLE nervosPeriSna (
	idNervo SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	raizesNervosas VARCHAR(200) NOT NULL,
	funcaoSNA VARCHAR(200),
	funcaoOrgao VARCHAR(100),
	tipoNervo VARCHAR(40) NOT NULL
);

--Para sistema nervoso autônomo as insersões serão Autônomo Simpático ou Parassimpático

CREATE TABLE vasos (
	idVasos SERIAL PRIMARY KEY,
	tipoSistema VARCHAR(30) NOT NULL,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR (200)
);

CREATE TABLE orgaos (
	idOrgao SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	tipoSistemaOrgao VARCHAR(30) NOT NULL,
	funcaoGeral VARCHAR(100) NOT NULL
);


CREATE TABLE sistemaNervosoCentral (
	idSNC SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	regiao VARCHAR(60) NOT NULL,
	funcao VARCHAR(200) NOT NULL
);

CREATE TABLE funcao (
	idFuncao SERIAL PRIMARY KEY,
	tipoMovimento VARCHAR(60) NOT NULL,
	funcaoComplementar VARCHAR(200)
);

CREATE TABLE estruturasOrgaos (
	idEstOrgao SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	descricaoAdicional VARCHAR(200),
	funcao VARCHAR(200) NOT NULL,
	idOrgao INTEGER NOT NULL,
	FOREIGN KEY (idOrgao) REFERENCES orgaos(idOrgao)
);


CREATE TABLE sncentralPeriSna (
	idConexao SERIAL PRIMARY KEY,
	caminhoImpulso VARCHAR(200) NOT NULL,
	descricao VARCHAR(200),
	idSNC INTEGER NOT NULL,
	idNervo INTEGER NOT NULL,
	FOREIGN KEY (idSNC) REFERENCES sistemaNervosoCentral (idSNC),
	FOREIGN KEY (idNervo) REFERENCES nervosPeriSna (idNervo)
);


CREATE TABLE estruturas (
	idEstrutura SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	idOsso INTEGER NOT NULL,
	FOREIGN KEY (idOsso) REFERENCES ossos (idOsso)
);

CREATE TABLE inserir (
	idEstrutura INTEGER NOT NULL,
	idMusculo INTEGER NOT NULL,
	PRIMARY KEY (idEstrutura, idMusculo),
	FOREIGN KEY (idEstrutura) REFERENCES estruturas (idEstrutura),
	FOREIGN KEY (idMusculo) REFERENCES musculos (idMusculo)
);

CREATE TABLE executar (
	idMusculo INTEGER NOT NULL,
	idFuncao INTEGER NOT NULL,
	PRIMARY KEY (idMusculo, idFuncao),
	FOREIGN KEY (idMusculo) REFERENCES musculos (idMusculo),
	FOREIGN KEY (idFuncao) REFERENCES funcao (idFuncao)
);

CREATE TABLE inervar (
	idNervo INTEGER NOT NULL,
	idMusculo INTEGER NOT NULL,
	PRIMARY KEY (idNervo, idMusculo),
	FOREIGN KEY (idNervo) REFERENCES nervosPeriSna (idNervo),
	FOREIGN KEY (idMusculo) REFERENCES musculos (idMusculo)
);

CREATE TABLE inervarOrgao (
	idOrgao INTEGER NOT NULL, 
	idNervo INTEGER NOT NULL,
	PRIMARY KEY (idOrgao, idNervo),
	FOREIGN KEY (idOrgao) REFERENCES orgaos (idOrgao),
	FOREIGN KEY (idNervo) REFERENCES nervosPeriSna (idNervo)
);

CREATE TABLE vascularizar (
	idOrgao INTEGER NOT NULL,
	idSNC INTEGER NOT NULL,
	idNervo INTEGER NOT NULL,
	idVasos INTEGER NOT NULL,
	idOsso INTEGER NOT NULL,
	idMusculo INTEGER NOT NULL,
	PRIMARY KEY (idOrgao, idSNC, idNervo, idVasos, idOsso, idMusculo),
	FOREIGN Key (idOrgao) REFERENCES orgaos (idOrgao),
	FOREIGN Key (idSNC) REFERENCES sistemaNervosoCentral (idSNC),
	FOREIGN Key (idNervo) REFERENCES nervosPeriSna (idNervo),
	FOREIGN Key (idVasos) REFERENCES vasos (idVasos),
	FOREIGN Key (idOsso) REFERENCES ossos (idOsso),
	FOREIGN Key (idMusculo) REFERENCES musculos (idMusculo)
);


--Algumas Query
SELECT DISTINCT es.nome as origem_insercao, mu.nome as nome_musculo, fu.tipoMovimento as acao_muscular FROM inserir ins, estruturas es, executar ex, funcao fu, musculos mu
	WHERE es.idEstrutura=ins.idEstrutura AND ins.idMusculo=mu.idMusculo AND mu.idMusculo=ex.idMusculo AND ex.idFuncao=fu.idFuncao

SELECT os.nome as nome_osso, es.nome as nome_estrutura  FROM ossos os, estruturas es
	WHERE os.idOsso=es.idOsso
	
------Para verificar origem inserção e ação na mesma linha

SELECT 
    STRING_AGG(DISTINCT es.nome, ', ') AS origens_insercao, 
    mu.nome AS nome_musculo, 
    STRING_AGG(DISTINCT fu.tipoMovimento, ', ') AS acoes_musculares
FROM 
    inserir ins
JOIN 
    estruturas es ON es.idEstrutura = ins.idEstrutura
JOIN 
    musculos mu ON ins.idMusculo = mu.idMusculo
JOIN 
    executar ex ON mu.idMusculo = ex.idMusculo
JOIN 
    funcao fu ON ex.idFuncao = fu.idFuncao
GROUP BY 
    mu.nome
ORDER BY 
    mu.nome;

-- Origem, inserção, inervação e ação na mesma linha

SELECT
	mu.nome as nome_musculo,
	STRING_AGG(DISTINCT es.nome,', ') AS origens_insercao,
	STRING_AGG(DISTINCT fu.tipoMovimento, ', ') AS acoes_musculares,
	STRING_AGG(DISTINCT ner.nome, ', ') AS inervacao,
	STRING_AGG(DISTINCT ner.raizesNervosas, ', ') AS raizes
FROM
	inserir ins
JOIN
	estruturas es ON es.idEstrutura=ins.idEstrutura
JOIN
	musculos mu ON ins.idMusculo=mu.idMusculo
JOIN
	executar ex ON mu.idMusculo=ex.idMusculo
JOIN
	funcao fu ON ex.idFuncao=fu.idFuncao
JOIN
	inervar ine ON mu.idMusculo=ine.idMusculo
JOIN
	nervosPeriSna ner ON ine.idNervo=ner.idNervo
GROUP BY
	mu.nome
ORDER BY
	mu.nome;
