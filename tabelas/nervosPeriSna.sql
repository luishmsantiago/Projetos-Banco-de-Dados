--Tabela destinada a guardar informações de todos os nervos corporais,
--tanto cranianos quanto periféricos
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

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas, funcaoSNA, funcaoOrgao, tipoNervo)
    VALUES
    (9, 'Nervo Mediano', 'C5 a T1', '', '', 'periférico'),
    (10, 'Nervo Ulnar', 'C8 a T1', '', '', 'periférico'),
    (11, 'Nervo Radial', 'C5 a T1', '', '', 'periférico');

INSERT INTO nervosPeriSna (idNervo, nome, raizesNervosas, funcaoSNA, funcaoOrgao, tipoNervo) -- mão
VALUES
    (12, 'Nervo Interósseo Anterior', 'C5 a T1', '', '', 'periférico'),
    (13, 'Nervo Interósseo Posterior', 'C7 e C8', '', '', 'periférico'),
    (14, 'Nervo Cutâneo Medial do Antebraço', 'C8 a T1', '', '', 'periférico'),
    (15, 'Nervo Cutâneo Lateral do Antebraço', 'C5 a C6', '', '', 'periférico');

---------------------------------------------------------------------------------------------
