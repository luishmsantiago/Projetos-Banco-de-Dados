--Tabela de relacionamento entre vasos (veias e artérias) e os órgãos, 
--músculos, nervos ou qualquer outra estrutura.

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
