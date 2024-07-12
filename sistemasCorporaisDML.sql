-- Banco de dados (DML) inserção de itens

INSERT INTO ossos(idOsso, nome, descricao) -- ombro
	VALUES (1, 'Escápula', 'Osso par, chato, fino, forma a parte dorsal da cintura escapular, formato triangular'),
		   (2, 'Clavícula', 'Osso longo curvado como um “S”, situado quase que horizontalmente logo acima da primeira costela.'),
		   (3, 'Úmero', 'É o maior e mais longo osso do membro superior. Apresenta duas epífises e uma diáfise.');

INSERT INTO ossos(idOsso, nome, descricao) -- braço
	VALUES (4, 'Rádio', 'É o osso lateral do antebraço. É o mais curto dos dois ossos do antebraço. Apresenta duas epífises e uma diáfise.'),
		   (5, 'Ulna', 'É o osso medial do antebraço. É um osso longo que apresenta duas epífises e uma diáfise.');

---------------------------------------------------------------------------------------------

INSERT INTO musculos (idMusculo, nome, descricao) -- ombro
	VALUES (1, 'Deltoide','Dividido em porções anterior, media e posterior'),
		   (2, 'Supraespinal','Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (3, 'Infraespinal', 'Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (4, 'Redondo menor','Auxilia na estabilização do ombro, faz parte do manguito rotador'),
		   (5, 'Redondo maior', 'Menos associado a estabilização já que não faz parte do manguito rotador'),
		   (6, 'Subescapular','Auxilia na estabilização do ombro, faz parte do manguito rotador');

INSERT INTO musculos (idMusculo, nome, descricao) -- braço
	VALUES (7, 'Bíceps braquial','Dividido em porção longa (t. supra-glenoidal) e curta (p. coracóide).'),
		   (8, 'Braquial anterior', ''),
		   (9, 'Coracobraquial', ''),
		   (10, 'Tríceps braquial', 'Dividido em porções longa (t. infra-glenoidal), média (abaixo suco radial) e lateral (acima suco radial)');

---------------------------------------------------------------------------------------------

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas) -- ombro
	VALUES (1, 'Axilar', 'C5 e C6'),
	       (2, 'Supra-escapular', 'C5 e C6'),
	       (3, 'Subescapular Inferior', 'C5 e C6');

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas) -- braço
	VALUES (4, 'Musculocutâneo', 'C5 e C6'),
		   (5, 'Radial', 'C7 e C8');

---------------------------------------------------------------------------------------------

INSERT INTO estruturas (idEstrutura, nome, descricao, idOsso) --ombro
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

INSERT INTO estruturas (idEstrutura, nome, descricao, idOsso) --braço
	VALUES (12, 'tubérculo supra-glenoidal', 'acima da glenóide', 1),
		   (13, 'processo coracóide', 'projeção anterior na escápuna', 1),
		   (14, 'tubérculo radial', '', 4),
		   (15, 'metade distal do úmero', 'podendo ser face anterior ou posterior', 3),
		   (16, 'processo coronoide', 'proeminência inferior a tróclea da ulna', 5),
		   (17, 'tuberosidade da ulna', '', 5),
		   (18, 'terço médio da face medial', 'corpo do úmero', 3),
		   (19, 'tubérculo infra-glenoidal', '', 1),
		   (20, 'abaixo do sulco radial', 'metade distal da face posterior do úmero', 3),
		   (21, 'acima do sulco radial', 'metade proximal da face posterior do úmero', 3),
		   (22, 'olécrano', 'proeminência do cotovelo', 5);

---------------------------------------------------------------------------------------------

INSERT INTO inserir (idEstrutura, idMusculo) --ombro
	VALUES (1, 1),
		   (8, 1),
		   (2, 1),
		   (11, 1),
		   (3, 2),
		   (9, 2),
		   (4, 3),
		   (9, 3),
		   (6, 4),
		   (9, 4),
		   (10, 5),
		   (7, 5),
		   (6, 5),
		   (5, 6),
		   (10, 6);

INSERT INTO inserir (idEstrutura, idMusculo) --braço
	VALUES (12, 7),
		   (13, 7),
		   (14, 7),
		   (15, 8),
		   (16, 8),
		   (17, 8),
		   (13, 9),
		   (18, 9),
		   (19, 10),
		   (20, 10),
		   (21, 10),
		   (22, 10);


---------------------------------------------------------------------------------------------

INSERT INTO funcao (idFuncao,tipoMovimento, funcaoComplementar) --ombro
	VALUES (1, 'Abdução do braço', 'Deltoide ajuda nos movimentos do ombro e estabilização, supra-espinhal auxilia na estabilização do ombro'),
		   (2, 'Rotação lateral do braço', 'auxilia na estabilização do ombro'),
		   (3, 'Rotação medial do braço',''),
		   (4, 'Adução do braço',''),
		   (5, 'Extensão do braço','');

INSERT INTO funcao (idFuncao,tipoMovimento, funcaoComplementar) --braço
	VALUES (6, 'Flexão do cotovelo', ''),
		   (7, 'Flexão do ombro', 'ou flexão do braço'),
		   (8, 'Supinação do antebraço', ''),
		   (9, 'Adução do braço', ''),
		   (10, 'Extensão do cotovelo', '');

---------------------------------------------------------------------------------------------

INSERT INTO executar (idMusculo, idFuncao) -- ombro
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


INSERT INTO executar (idMusculo, idFuncao) -- braço
	VALUES (7, 6),
		   (7, 7),
		   (7, 8),
		   (8, 6),
		   (9, 7),
		   (9, 9),
		   (10, 10);

---------------------------------------------------------------------------------------------

INSERT INTO inervar (idNervo, idMusculo) -- ombro
	VALUES (1, 1),
	       (2, 2),
	       (2, 3),
	       (1, 4),
	       (3, 5),
	       (3, 6);


INSERT INTO inervar (idNervo, idMusculo) -- braço
	VALUES (4, 7),
		   (4, 8),
		   (4, 9),
		   (5, 10);

---------------------------------------------------------------------------------------------
