--Tabela voltada a guardar dados das estruturas de todos os órgãos do corpo

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
