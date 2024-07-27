-- Tabela destinada a guardar informações das estruturas ósseas ou 
-- fasciais onde os músculos se inserem

INSERT INTO estruturas (idEstrutura, nome, descricao, idOsso) --ombro e braço
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
		   (14, 'tubérculo radial', 'Proeminência na extremidade proximal do rádio', 4),
		   (15, 'metade distal do úmero', 'podendo ser face anterior ou posterior', 3),
		   (16, 'processo coronoide', 'proeminência inferior a tróclea da ulna', 5),
		   (17, 'tuberosidade da ulna', '', 5),
		   (18, 'terço médio da face medial', 'corpo do úmero', 3),
		   (19, 'tubérculo infra-glenoidal', '', 1),
		   (20, 'abaixo do sulco radial', 'metade distal da face posterior do úmero', 3),
		   (21, 'acima do sulco radial', 'metade proximal da face posterior do úmero', 3),
		   (22, 'olécrano', 'proeminência do cotovelo', 5),
		   (23, 'Epicôndilo medial', '', 3),
		   (24, 'Epicôndilo lateral' , '', 3),

INSERT INTO estruturas (idEstrutura, nome, descricao, idOsso)
VALUES   
    -- Antebraço
    (25, 'Face lateral do 1/3 médio da diáfise do rádio',  '', 4),
    (26, 'Face lateral e 1/3 proximal da diáfise do rádio', '', 4),
    (27, 'Crista do Rádio', 'Linha óssea ao longo da face lateral do rádio', 4),
    (28, 'Linha Interósea', 'Linha ao longo da face medial do rádio', 4),
    (29, 'Cabeça do Rádio', 'Extremidade proximal do rádio', 4),
    (30, 'Face anterior do Rádio', '', 4),
    (31, 'Processo Estiloide do Rádio', 'Proeminência na extremidade distal do rádio', 4),
    (32, 'Processo Estiloide da Ulna', 'Proeminência na extremidade distal da ulna', 5),
    (33, 'Ligamento colateral da Ulna', 'conecta a base da falange proximal do polegar ao osso metacarpal no aspecto ulnar da articulação', 5),
    (34, 'Retináculo dos flexores', 'É um ligamento fibroso que forma um túnel na região do punho, sob o qual passam os tendões dos músculos flexores do antebraço e o nervo mediano.', 5),
    (35, 'Face anterior 3/4 proximais do radio' '', 4),
    (36, 'Face anterior dos 3/4 proximais da ulna' '', 5),
    (37, 'Membrana interóssea do antebraço', 'liga rádio a ulna', 5),
    (38, 'Face anterior do rádio', 'também possui face posterior', 4),
    (39, '1/4 da face anterior', 'também tem posterior', 5),
    (40, '1/4 da face anterior', 'também tem posterior', 4),
    (41, '1/4 proximal da face posterior da diáfise da ulna', 'existe face anterior', 5),
    (42, 'Face posterior do rádio', 'também possui a anterior', 4),
    (43, 'Face posterior da ulna', 'também possui a anterior', 5),
    (44, 'Face posterior do 1/3 médio da ulna', 'também possui anterior', '', 5),
    (45, 'Face posterior da diáfise da ulna', 'também possui anterior', '', 5),
    (46, '2/3 proximais da crista supracondiliana lateral do úmero', '', 5), 
    (47, 'Face lateral do 1/3 distal da crista supracondiliana do úmero', '', 5),
    (48, 'Ligamento colateral do radio', '', 4),


    -- Mão
    (49, 'tendão do músculo flexor ulnar do carpo', '', 9),
    (50, 'Tuberosidade do pisiforme', '', 9),
    (51, 'Tuberosidade do hamato', '', 13),
    (52, 'Hâmulo do hamato', '', 13),
    (53, 'base do quinto metacarpal', '', 18),
    (54, 'base da falange proximal do dedo mínimo', '', 30),
    (55, 'Aponeurose palmar', '', 6),
    (56, 'Camada profunda da derme', 'parte da eminência hipotenar', 9),
    (57, 'base do primeiro metacarpal', '', 14),
    (58, 'Face dorsal da falange proximal do polegar', '', 19),
    (59, 'Base da falange proximal do polegar', '', 19),
    (60, 'face anterior do segundo metacarpo', 'também possui posterior', 15),
    (61, 'base do segundo metacarpo', 'também possui posterior', 15),
    (62, 'face posterior do segundo metacarpo', 'também possui anterior', 15),
    (63, 'base do terceiro metacarpo', 'também possui posterior', 16),
    (64, 'Face posterior do terceiro metacarpal' 'também possui anterior', 16)
    (65, 'Tuberosidade do Trapézio', 'Proeminência na base do trapézio', 10), -- Metacarpo
    (66, 'Tuberosidade do Trapezoide', '', 11),
    (67, 'Tuberosidade do Capitato', '', 12),
    (68, 'Tuberosidade do Escafóide', 'Proeminência na base do escafóide', 6), -- Escafóide
    (69, 'Crista do Metacarpo', 'Linha óssea ao longo dos metacarpos', 33); -- Metacarpo
    (70, 'face anterior da falange intermédia', 'também possui face posterior. presente no segundo ao quinto dedos', 35),
    (71, 'Face anterior da falange distal', 'também possui face posterior. presente no segundo ao quinto dedos', 36),
    (72, 'base da falange média', 'também possui face posterior. presente no segundo ao quinto dedos', 35),
    (73, 'bace da falange distal', 'também possui face posterior. presente no segundo ao quinto dedos', 36),
    (74, 'base da falange distal', 'parte do polegar', '', 21),
    (75, 'Tendão do extensor comum para o 5º dedo', '', 30),
    (76, 'Tendão do extensor comum do 2º dedo', '', 23),
    (77, 'Tendão do músculo flexor profundo dos dedos', 'presente apenas do segundo ao quinto dedo', 36),
    (78, 'Tendão do músculo extensor dos dedos', 'presente apenas do segundo ao quinto dedo', 35),
    (79, 'corpo do primeiro metacarpal', '', 14),
    (80, 'corpo do quinto metacarpal', '', 18),
    (81, 'corpo do segundo metacarpal', '', 15),
    (82, 'corpo do terceiro metacarpal', '', 16);
---------------------------------------------------------------------------------------------
