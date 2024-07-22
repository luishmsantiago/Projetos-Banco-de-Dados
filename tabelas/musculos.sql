-- Tabela de todos os músculos do corpo

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

INSERT INTO musculos (idMusculo, nome, descricao) -- antebraço e mão
    VALUES
    -- Antebraço
    (11, 'Braquiorradial', 'Músculo do antebraço responsável pela flexão do cotovelo.'),
    (12, 'Extensor radial longo do carpo', 'Músculo do antebraço responsável pela extensão e abdução da mão no punho.'),
    (13, 'Extensor radial curto do carpo', 'Músculo do antebraço responsável pela extensão e abdução da mão no punho.'),
    (14, 'Extensor dos dedos', 'Músculo do antebraço responsável pela extensão dos dedos.'),
    (15, 'Extensor do dedo mínimo', 'Músculo do antebraço responsável pela extensão do dedo mínimo.'),
    (16, 'Extensor ulnar do carpo', 'Músculo do antebraço responsável pela extensão e adução da mão no punho.'),
    (17, 'Flexor superficial dos dedos', 'Músculo do antebraço responsável pela flexão das falanges médias dos dedos.'),
    (18, 'Flexor profundo dos dedos', 'Músculo do antebraço responsável pela flexão das falanges distais dos dedos.'),
    (19, 'Flexor radial do carpo', 'Músculo do antebraço responsável pela flexão e abdução da mão no punho.'),
    (20, 'Flexor ulnar do carpo', 'Músculo do antebraço responsável pela flexão e adução da mão no punho.'),
    (21, 'Pronador redondo', 'Músculo do antebraço responsável pela pronarão do antebraço.'),
    (22, 'Pronador quadrado', 'Músculo do antebraço responsável pela pronarão do antebraço.'),
    (23, 'Palmar longo', 'Músculo do antebraço responsável pela flexão da mão no punho.'),
    (24, 'Extensor do indicador', 'Músculo do antebraço responsável pela extensão do dedo indicador.'),
    (25, 'Supinador', 'Músculo do antebraço responsável pela supinação do antebraço.'),
    (26, 'Ancôneo', 'Músculo do antebraço responsável pela extensão do cotovelo.'),
    (27, 'Flexor longo do polegar', 'Músculo do antebraço responsável pela flexão do polegar.'),
    (28, 'Abdutor longo do polegar', 'Músculo do antebraço responsável pela abdução do polegar.'),
    (29, 'Extensor curto do polegar', 'Músculo do antebraço responsável pela extensão do polegar.'),
    (30, 'Extensor longo do polegar', 'Músculo do antebraço responsável pela extensão do polegar.'),
    (31, 'Extensor do 2° dedo (indicador)', 'Músculo do antebraço responsável pela extensão do segundo dedo.'),
    -- Mão
    (32, 'Palmar curto', 'Músculo da mão responsável pela adução da pele da palma da mão.'),
    (33, 'Lombricóides', 'Músculos da mão responsáveis pela flexão das falanges proximais e extensão das falanges médias e distais dos dedos.'),
    (34, 'Interósseos dorsais', 'Músculos da mão responsáveis pela abdução dos dedos.'),
    (35, 'Interósseos palmares', 'Músculos da mão responsáveis pela adução dos dedos.'),
    (36, 'Abdutor curto do polegar', 'Músculo da mão responsável pela abdução do polegar.'),
    (37, 'Adutor do polegar', 'Músculo da mão responsável pela adução do polegar.'),
    (38, 'Flexor curto do polegar', 'Músculo da mão responsável pela flexão do polegar.'),
    (39, 'Oponente do polegar', 'Músculo da mão responsável pela oposição do polegar.'),
    (40, 'Abdutor do mínimo', 'Músculo da mão responsável pela abdução do dedo mínimo.'),
    (41, 'Flexor do mínimo', 'Músculo da mão responsável pela flexão do dedo mínimo.'),
    (42, 'Oponente do mínimo', 'Músculo da mão responsável pela oposição do dedo mínimo.');

---------------------------------------------------------------------------------------------
