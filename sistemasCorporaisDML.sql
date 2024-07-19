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
--funcaoSNA se divide em sensorial, simpático ou parassimpático

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas, funcaoSNA, funcaoOrgao, tipoNervo) -- ombro
	VALUES (1, 'Axilar', 'C5 e C6', '', '', 'periférico'),
	       (2, 'Supra-escapular', 'C5 e C6', '', '', 'periférico'),
	       (3, 'Subescapular Inferior', 'C5 e C6', '', '', 'periférico');

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas, funcaoSNA, funcaoOrgao, tipoNervo) -- braço + sist resp
	VALUES (4, 'Musculocutâneo', 'C5 e C6', '', '', 'periférico'),
		   (5, 'Radial', 'C7 e C8', '', '', 'periférico'),
		   (6, 'Vago', 'Bulbo (tronco encefálico)', 'parassimpático', 'Regula a frequência cardíaca e outras funções viscerais', 'craniano'),
		   (7, 'Trigêmeo', 'tronco encefálico', 'sensorial', 'Inerva a cavidade nasal e os seios paranasais, fornecendo sensibilidade à mucosa nasal e aos seios', 'craniano'),
		   (8, 'Olfatório ', 'Bulbo olfatório', 'sensorial', 'Responsável pela sensibilidade olfatória, inerva a mucosa olfatória no nariz.', 'craniano');
---------------------------------------------------------------------------------------------

INSERT INTO sistemaNervosoCentral (idSNC, nome, regiao, funcao) -- medula e tronco
	VALUES (1, 'Medula espinhal', 'Do bulbo a nível de L2', 'Enviar e receber estimulos sensitivos e motores (cerebro-nervo)'),
		   (2, 'Bulbo', 'Tronco encefálico', 'Centro vital, vasomotor e de vômito'),
		   (3, 'Ponte', 'Tronco encefálico', 'Reflexos autonômicos, possui núcleos dos nervos cranianos (5-8) e o quarto ventrículo, controle respiratório e sono, conexão com cerebelo, funções motoras e sensoriais.'),
		   (4, 'Mesencéfalo', 'Tronco encefálico', 'Controle motor, processamento visual e auditivo, funções sensoriais e de condução, controle da pupila e olhos, coordenação dos reflexos, regulação da ativação e do estado de vigília.'),
		   (5, 'Bulbo olfatório', 'Tronco encefálico', 'Processamento de sinais moleculares que levam ao sentido do cheiro');

---------------------------------------------------------------------------------------------
INSERT INTO sncentralPeriSna (idConexao, caminhoImpulso, descricao, idSNC, idNervo) -- membro superior - sist resp
	VALUES (1, 'Córtex Motor Primário → Trato Corticoespinal → Decussação das Pirâmides → Medula Espinhal Cervical → Raízes Nervosas Espinhais → Nervos Espinhais → Plexo Braquial', '', 1, 1),
		   (2, 'Córtex Motor Primário → Trato Corticoespinal → Decussação das Pirâmides → Medula Espinhal Cervical → Raízes Nervosas Espinhais → Nervos Espinhais → Plexo Braquial', '', 1, 2),
		   (3, 'Córtex Motor Primário → Trato Corticoespinal → Decussação das Pirâmides → Medula Espinhal Cervical → Raízes Nervosas Espinhais → Nervos Espinhais → Plexo Braquial', '', 1, 3),
		   (4, 'Córtex Motor Primário → Trato Corticoespinal → Decussação das Pirâmides → Medula Espinhal Cervical → Raízes Nervosas Espinhais → Nervos Espinhais → Plexo Braquial', '', 1, 4),
		   (5, 'Córtex Motor Primário → Trato Corticoespinal → Decussação das Pirâmides → Medula Espinhal Cervical → Raízes Nervosas Espinhais → Nervos Espinhais → Plexo Braquial', '', 1, 5),
		   (6, 'Receptores sensoriais → Nervo Vago → Bulbo (núcleos sensoriais) → Tronco encefálico → Cérebro → Núcleos motores → Nervo Vago → Órgãos-alvo', '', 2, 6),
		   (7, 'Receptores sensoriais → Ramos do Nervo Trigêmeo → Gânglio Trigeminal → Tronco encefálico (núcleos sensoriais) → Cérebro → Núcleos motores → Ramos do Nervo Trigêmeo → Músculos da mastigação', '', 3, 7),
		   (8, 'Receptores olfativos → Nervos Olfatórios → Bulbo Olfatório → Trato Olfatório → Córtex olfatório e sistema límbico', '', 5, 8);

---------------------------------------------------------------------------------------------

INSERT INTO vasos (idVasos, tipoSistema, nome, descricao) -- membro superior
	VALUES (1, 'arteria', 'Subclávia', 'Encéfalo e medula espinhal, pescoço e ombro (origina as artérias dos membros superiores)'),
		   (2, 'arteria', 'Axilar', 'Ombros, musculos torácicos e escapulares do úmero'),
		   (3, 'arteria', 'Braquial', 'Braço'),
		   (4, 'arteria', 'Radial', 'Face lateral do antebraço, punho e mão'),
		   (5, 'arteria', 'Ulnar', 'Face medial do antebraço, punho e mão'),
		   (6, 'arteria', 'Arco superficial palmar', 'Palma da mão e dedos (formado principalmente pela artéria ulnar)'),
		   (7, 'arteria', 'Arco profundo palmar', 'Palma da mão e dedos (formado principalmente pela artéria radial)'),
		   (8, 'veia', 'Cefálica', 'Superficial - drena a face lateral do membro superior'),
		   (9, 'veia', 'Basílica', 'Superficial - drena a face medial do membro superior'),
		   (10, 'veia', 'Mediana', 'Superficial - drena a palma da mão e antebraço'),
		   (11, 'veia', 'Radial', 'Profunda - drena a face medial do antebraço'),
		   (12, 'veia', 'Ulnar', 'Profunda - drena a face lateral do antebraço'),
		   (13, 'veia', 'Braquial', 'Profunda - drena o antebraço, cotovelo, braço e úmero'),
		   (14, 'veia', 'Axilar', 'Profunda - drena o braço, axila, e a parede torácica súpero-lateral'),
		   (15, 'veia', 'Subclávia', 'Profunda - drena o braço, pescoço e parede torácica');

---------------------------------------------------------------------------------------------

INSERT INTO orgaos (idOrgao, nome, tipoSistemaOrgao, funcaoGeral) -- respiratório
	VALUES (1, 'Nariz', 'respiratório', 'Olfato. É na cavidade nasal que o ar é filtrado, umedecido e aquecido.'),
		   (2, 'Faringe', 'respiratório', 'Serve de passagem de ar e alimento.'),
		   (3, 'Laringe', 'respiratório', 'Passagem de ar, produzir som (voz), impedir que o alimento e objetos estranhos entrem no sistema respiratório.'),
		   (4, 'Traqueia', 'respiratório', 'Conecta a laringe até os brônquios e facilitaexpulsão de mucosidades e corpos estranhos.'),
		   (5, 'Brônquios', 'respiratório', 'Ligam a Traqueia aos pulmões'),
		   (6, 'Pulmão', 'respiratório', 'Gerar trocas gasosas (hematose) através dos alvéolos.');

---------------------------------------------------------------------------------------------

INSERT INTO estruturasOrgaos (idEstOrgao, nome, descricao, descricaoAdicional, funcao, idOrgao) --nariz até traqueia
	VALUES (1, 'Seios paranasais', 'A cavidade nasal contêm várias aberturas de drenagem, pelas quais o muco dos seios paranasais é drenado.', 'Os Seios Paranasais compreendem os seios maxilares, frontal, etmoidal e o esfenoidal.', 'Drenagem, filtragem e umidificação do ar', 1),
		   (2, 'Nasofaringe', 'A porção superior da faringe', 'Primeira parte da faringe', 'Comunicações: duas com as coanas, dois óstios faríngeos das tubas auditivas e com a orofaringe.', 2),
		   (3, 'Orofaringe', 'A parte intermediária da faringe, atrás da cavidade oral e estende-se do palato mole até o nível do hioide.', 'Segunda parte da faringe', 'Tem comunicação com a boca e serve de passagem tanto para o ar como para o alimento.', 2),
		   (4, 'Laringofaringe', 'Estende-se para baixo a partir do osso hioide, e conecta-se com o esôfago (canal do alimento) e anteriormente com a laringe (passagem de ar).', 'Terceira parte da faringe.', 'Como a parte oral da faringe, a laringofaringe é uma via respiratória e também uma via digestória.', 2),
		   (5, 'Cartilagem Tireóidea', 'Possui cornos superiores e inferiores.', 'é maior nos homens devido à influência dos hormônios durante a fase da puberdade.', 'Forma a parede anterior e lateral da laringe, ', 3),
		   (6, 'Cartilagem Cricoide', ' localiza-se logo abaixo da cartilagem tireoide e antecede a traqueia.', '', 'tipo de cartilagem', 3),
		   (7, 'Laringofaringe', 'Epiglote', 'Se fixa no osso hioide e na cartilagem tireoide.', 'A epiglote é uma espécie de “porta” para o pulmão, onde apenas o ar ou substâncias gasosas entram e saem dele. Dirigindo substâncias líquidas e sólidas ao esôfago', 3),
		   (8, 'Cartilagem Aritenoide', 'Articula-se com a cartilagem cricoide, estabelecendo uma articulação do tipo diartrose.', '', 'influenciam as posições e tensões das pregas vocais.', 3),
		   (9, 'Cartilagem Corniculada', 'Um dos pares de cartilagens do esôfago', '', 'Situa-se acima da cartilagem aritenoide.', 3),
		   (10, 'Cartilagem Cuneiforme', 'é muito pequena e localiza-se anteriormente à cartilagem corniculada correspondente', '', 'Liga cada aritenoide à epiglote.', 3);

---------------------------------------------------------------------------------------------

-- estruturas ósseas
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
-- funcao muscular
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
--inervação muscular
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
INSERT INTO inervarOrgao (idNervo, idOrgao) -- Sistema resp
	VALUES (7,1),
		   (8,1),
		   (6,2),
		   (6,3),
		   (6,4),
		   (6,5),
		   (6,6);

---------------------------------------------------------------------------------------------
INSERT INTO vascularizar (idOrgao, idSNC, idNervo, idVasos, idOsso, idMusculo)
	VALUES 
	-- Artéria Subclávia
	(NULL, 1, NULL, 1, 1, NULL), -- Suprimento ao ombro e estruturas associadas
	(NULL, 1, NULL, 1, 2, NULL), -- Suprimento à clavícula
	(NULL, 1, NULL, 1, 3, NULL), -- Suprimento ao úmero
	
	-- Artéria Axilar
	(NULL, NULL, NULL, 2, 1, 1), -- Suprimento ao deltoide
	(NULL, NULL, NULL, 2, 1, 2), -- Suprimento ao supraespinal
	(NULL, NULL, NULL, 2, 1, 3), -- Suprimento ao infraespinal
	(NULL, NULL, NULL, 2, 1, 4), -- Suprimento ao redondo menor
	(NULL, NULL, NULL, 2, 1, 5), -- Suprimento ao redondo maior
	(NULL, NULL, NULL, 2, 1, 6), -- Suprimento ao subescapular
	(NULL, NULL, NULL, 2, 3, 10), -- Suprimento ao tríceps braquial

	-- Artéria Braquial
	(NULL, NULL, NULL, 3, 3, 7), -- Suprimento ao bíceps braquial
	(NULL, NULL, NULL, 3, 3, 8), -- Suprimento ao braquial anterior
	(NULL, NULL, NULL, 3, 3, 9), -- Suprimento ao coracobraquial
	
	-- Artéria Radial
	(NULL, NULL, NULL, 4, 4, NULL), -- Suprimento ao rádio
	
	-- Artéria Ulnar
	(NULL, NULL, NULL, 5, 5, NULL), -- Suprimento à ulna
	
	-- Arco superficial palmar
	(NULL, NULL, NULL, 6, NULL, NULL), -- Suprimento à palma da mão e dedos (principalmente pela artéria ulnar)
	
	-- Arco profundo palmar
	(NULL, NULL, NULL, 7, NULL, NULL), -- Suprimento à palma da mão e dedos (principalmente pela artéria radial)
	
	-- Veia Cefálica
	(NULL, NULL, NULL, 8, 3, NULL), -- Drenagem do úmero
	
	-- Veia Basílica
	(NULL, NULL, NULL, 9, 3, NULL), -- Drenagem do úmero
	
	-- Veia Mediana
	(NULL, NULL, NULL, 10, NULL, NULL), -- Drenagem da palma da mão e antebraço
	
	-- Veia Radial
	(NULL, NULL, NULL, 11, 4, NULL), -- Drenagem da face medial do antebraço
	
	-- Veia Ulnar
	(NULL, NULL, NULL, 12, 5, NULL), -- Drenagem da face lateral do antebraço
	
	-- Veia Braquial
	(NULL, NULL, NULL, 13, 3, NULL), -- Drenagem do úmero
	
	-- Veia Axilar
	(NULL, NULL, NULL, 14, NULL, NULL), -- Drenagem do braço e axila
	
	-- Veia Subclávia
	(NULL, NULL, NULL, 15, NULL, NULL); -- Drenagem do braço e pescoço
