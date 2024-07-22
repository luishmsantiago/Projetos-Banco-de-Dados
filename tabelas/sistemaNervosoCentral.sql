--Tabela destinada a guardar dados de todas as partes do SNC

INSERT INTO sistemaNervosoCentral (idSNC, nome, regiao, funcao) -- medula e tronco
	VALUES (1, 'Medula espinhal', 'Do bulbo a nível de L2', 'Enviar e receber estimulos sensitivos e motores (cerebro-nervo)'),
		     (2, 'Bulbo', 'Tronco encefálico', 'Centro vital, vasomotor e de vômito'),
		     (3, 'Ponte', 'Tronco encefálico', 'Reflexos autonômicos, possui núcleos dos nervos cranianos (5-8) e o quarto ventrículo, controle respiratório e sono, conexão com cerebelo, funções motoras e sensoriais.'),
		     (4, 'Mesencéfalo', 'Tronco encefálico', 'Controle motor, processamento visual e auditivo, funções sensoriais e de condução, controle da pupila e olhos, coordenação dos reflexos, regulação da ativação e do estado de vigília.'),
		     (5, 'Bulbo olfatório', 'Tronco encefálico', 'Processamento de sinais moleculares que levam ao sentido do cheiro');

---------------------------------------------------------------------------------------------
