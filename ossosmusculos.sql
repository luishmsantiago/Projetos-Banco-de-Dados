--Banco de dados (DDL) de esqueleto_músculos

CREATE DATABASE esqueleto_musculos;

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

CREATE TABLE funcao (
	idFuncao SERIAL PRIMARY KEY,
	tipoMovimento VARCHAR(60) NOT NULL,
	funcaoComplementar VARCHAR(200)
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

-------------------------------------------------------------------

-- Banco de dados (DML) inserção de itens

INSERT INTO ossos(idOsso, nome, descricao)
	VALUES (1, 'Escápula', 'Osso par, chato, fino, forma a parte dorsal da cintura escapular, formato triangular'),
		   (2, 'Clavícula', 'Osso longo curvado como um “S”, situado quase que horizontalmente logo acima da primeira costela.'),
		   (3, 'Úmero', 'É o maior e mais longo osso do membro superior. Apresenta duas epífises e uma diáfise.');

INSERT INTO musculos (idMusculo, nome, descricao) 
	VALUES (1, 'Deltoide','Dividido em porções anterior, media e posterior'),
		   (2, 'Supraespinal','Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (3, 'Infraespinal', 'Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (4, 'Redondo menor','Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (5, 'Redondo maior', 'Menos associado a estabilização já que não faz parte do manguito rotador'),
		   (6, 'Subescapular','Auxilia na estabilização do ombro, faz parte do manguito rotador');

INSERT INTO estruturas (idEstrutura, nome, descricao, idOsso)
	VALUES (1, 'acrômio', 'região lateral e anterior', 1),
		   (2, 'espinha da escápula', 'projeção pontura em formato de linha', 1),
		   (3, 'fossa supra-espinhal', 'concavidade superior na escápula', 1),
		   (4, 'fossa infra-espinhal', 'região inferior a espinha da escápula', 1),
		   (5, 'fossa subescapular','região anterior da escápula',1),
		   (6, 'borda lateral da escápula','dividida em 3 terços', 1),
		   (7, 'ângulo inferior da escápula','região mais inferior da escápula que cria uma curva', 1),
		   (8, 'borda anterior da clavícula', 'região medial da clavícula', 2),
		   (9, 'tubérculo maior do úmero', 'possui 3 facetas, superior, média e inferior', 3),
		   (10, 'tubérculo menor do úmero', 'possui uma crista nele', 3),
		   (11, 'Tuberosidade deltoidea do úmero', '1/3 superior do úmero', 3);

INSERT INTO inserir (idEstrutura, idMusculo)
	VALUES (1,1),
		   (8,1),
		   (2,1),
		   (11,1),
		   (3,2),
		   (9,2),
		   (4,3),
		   (9,3),
		   (6,4),
		   (9,4),
		   (10,5),
		   (7,5),
		   (6,5),
		   (5,6),
		   (10,6);

INSERT INTO funcao (idFuncao,tipoMovimento, funcaoComplementar)
	VALUES (1, 'Abdução do braço', 'Deltoide ajuda nos movimentos do ombro e estabilização, supra-espinhal auxilia na estabilização do ombro'),
		   (2, 'Rotação lateral do braço', 'auxilia na estabilização do ombro'),
		   (3, 'Rotação medial do braço',''),
		   (4, 'Adução do braço',''),
		   (5, 'Extensão do braço','');

INSERT INTO executar (idMusculo, idFuncao)
	VALUES (1, 1),
		   (2, 1),
		   (3, 2),
		   (4, 2),
		   (4, 4),
		   (5, 3),
		   (5, 4),
		   (5, 5),
		   (6, 3),
		   (6, 4);

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