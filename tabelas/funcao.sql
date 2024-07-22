--Tabela destinada a guardar dados das funções que os musculos executam
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

INSERT INTO funcao (idFuncao, tipoMovimento, funcaoComplementar)
    VALUES
    (11, 'Flexão do cotovelo', 'Braquiorradial é responsável pela flexão do cotovelo.'),
    (12, 'Extensão do punho', 'Extensor radial longo e curto do carpo são responsáveis pela extensão do punho.'),
    (13, 'Flexão dos dedos', 'Flexor superficial e profundo dos dedos são responsáveis pela flexão dos dedos.'),
    (14, 'Extensão dos dedos', 'Extensor dos dedos é responsável pela extensão dos dedos.'),
    (15, 'Abdução dos dedos', 'Interósseos dorsais são responsáveis pela abdução dos dedos.'),
    (16, 'Adução dos dedos', 'Interósseos palmares são responsáveis pela adução dos dedos.');

---------------------------------------------------------------------------------------------
