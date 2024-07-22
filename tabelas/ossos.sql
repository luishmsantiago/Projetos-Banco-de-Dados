-- Tabela de todos os ossos do corpo
-- ossos do ombro
INSERT INTO ossos(idOsso, nome, descricao) 
VALUES 
    (1, 'Escápula', 'Osso par, chato, fino, forma a parte dorsal da cintura escapular, formato triangular'),
    (2, 'Clavícula', 'Osso longo curvado como um “S”, situado quase que horizontalmente logo acima da primeira costela.'),
    (3, 'Úmero', 'É o maior e mais longo osso do membro superior. Apresenta duas epífises e uma diáfise.');

-- ossos do braço
INSERT INTO ossos(idOsso, nome, descricao) 
VALUES 
    (4, 'Rádio', 'É o osso lateral do antebraço. É o mais curto dos dois ossos do antebraço. Apresenta duas epífises e uma diáfise.'),
    (5, 'Ulna', 'É o osso medial do antebraço. É um osso longo que apresenta duas epífises e uma diáfise.');

-- ossos do carpo (ossos do pulso)
INSERT INTO ossos(idOsso, nome, descricao) 
VALUES
    (6, 'Escafoide', 'Osso situado na base do polegar, na fileira proximal do carpo.'),
    (7, 'Semilunar', 'Osso localizado na fileira proximal do carpo, entre o escafoide e o piramidal.'),
    (8, 'Piramidal', 'Osso triangular na fileira proximal do carpo, articulando-se com o semilunar, o pisiforme e o hamato.'),
    (9, 'Pisiforme', 'Osso pequeno, localizado na superfície palmar do piramidal, na fileira proximal do carpo.'),
    (10, 'Trapézio', 'Osso na fileira distal do carpo, articulando-se com o metacarpo do polegar.'),
    (11, 'Trapezoide', 'Osso pequeno, na fileira distal do carpo, entre o trapézio e o capitato.'),
    (12, 'Capitato', 'O maior osso da fileira distal do carpo, situado no centro do pulso.'),
    (13, 'Hamato', 'Osso da fileira distal do carpo, que tem um processo em forma de gancho, localizado medialmente.');

-- metacarpos (ossos da palma da mão)
INSERT INTO ossos(idOsso, nome, descricao) 
VALUES
    (14, 'Metacarpo I', 'Osso do metacarpo do polegar, o mais curto e grosso dos cinco.'),
    (15, 'Metacarpo II', 'Osso do metacarpo do dedo indicador.'),
    (16, 'Metacarpo III', 'Osso do metacarpo do dedo médio.'),
    (17, 'Metacarpo IV', 'Osso do metacarpo do dedo anelar.'),
    (18, 'Metacarpo V', 'Osso do metacarpo do dedo mínimo.');

-- falanges (ossos dos dedos)
INSERT INTO ossos(idOsso, nome, descricao) 
VALUES
    (19, 'Falange Proximal I', 'Osso proximal do polegar.'),
    (20, 'Falange Distal I', 'Osso distal do polegar.'),
    (21, 'Falange Proximal II', 'Osso proximal do dedo indicador.'),
    (22, 'Falange Média II', 'Osso médio do dedo indicador.'),
    (23, 'Falange Distal II', 'Osso distal do dedo indicador.'),
    (24, 'Falange Proximal III', 'Osso proximal do dedo médio.'),
    (25, 'Falange Média III', 'Osso médio do dedo médio.'),
    (26, 'Falange Distal III', 'Osso distal do dedo médio.'),
    (27, 'Falange Proximal IV', 'Osso proximal do dedo anelar.'),
    (28, 'Falange Média IV', 'Osso médio do dedo anelar.'),
    (29, 'Falange Distal IV', 'Osso distal do dedo anelar.'),
    (30, 'Falange Proximal V', 'Osso proximal do dedo mínimo.'),
    (31, 'Falange Média V', 'Osso médio do dedo mínimo.'),
    (32, 'Falange Distal V', 'Osso distal do dedo mínimo.');

-- Adicionando genéricos para relacionamentos
INSERT INTO ossos(idOsso, nome, descricao)
VALUES
    (33, 'Metacarpo', 'Osso genérico para relacionamentos.'),
    (34, 'Falange Proximal', 'Osso genérico para relacionamentos.'),
    (35, 'Falange Média', 'Osso genérico para relacionamentos.'),
    (36, 'Falange Distal', 'Osso genérico para relacionamentos.');

---------------------------------------------------------------------------------------------
