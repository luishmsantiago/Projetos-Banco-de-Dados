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
