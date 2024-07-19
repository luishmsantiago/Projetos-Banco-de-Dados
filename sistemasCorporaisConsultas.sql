--Algumas Query

	
------Para verificar origem inserção e ação na mesma linha

SELECT 
    STRING_AGG(DISTINCT es.nome, ', ') AS origens_insercao, 
    mu.nome AS nome_musculo, 
    STRING_AGG(DISTINCT fu.tipoMovimento, ', ') AS acoes_musculares
FROM 
    inserir ins
JOIN 
    estruturas es ON es.idEstrutura = ins.idEstrutura
JOIN 
    musculos mu ON ins.idMusculo = mu.idMusculo
JOIN 
    executar ex ON mu.idMusculo = ex.idMusculo
JOIN 
    funcao fu ON ex.idFuncao = fu.idFuncao
GROUP BY 
    mu.nome
ORDER BY 
    mu.nome;

-- Origem, inserção, inervação e ação na mesma linha

SELECT
	mu.nome as nome_musculo,
	STRING_AGG(DISTINCT es.nome,', ') AS origens_insercao,
	STRING_AGG(DISTINCT fu.tipoMovimento, ', ') AS acoes_musculares,
	STRING_AGG(DISTINCT ner.nome, ', ') AS inervacao,
	STRING_AGG(DISTINCT ner.raizesNervosas, ', ') AS raizes
FROM
	inserir ins
JOIN
	estruturas es ON es.idEstrutura=ins.idEstrutura
JOIN
	musculos mu ON ins.idMusculo=mu.idMusculo
JOIN
	executar ex ON mu.idMusculo=ex.idMusculo
JOIN
	funcao fu ON ex.idFuncao=fu.idFuncao
JOIN
	inervar ine ON mu.idMusculo=ine.idMusculo
JOIN
	nervosPeriSna ner ON ine.idNervo=ner.idNervo
GROUP BY
	mu.nome
ORDER BY
	mu.nome;

-- Selecionar nome dos nervos (periféricos e cranianos), raiz nervosa, função no SNA, tipo de nervo, 
--caminho do impulso, onde está inserido no sistema nervoso central, e função no SNC

SELECT
	npesna.nome as nome_nervo,
	STRING_AGG(DISTINCT npesna.raizesNervosas,', ') AS raizes_nervosas,
	STRING_AGG(DISTINCT npesna.funcaoSNA, ', ') AS funcao_SNA,
	STRING_AGG(DISTINCT npesna.tipoNervo, ', ') AS tipo_nervo,
	STRING_AGG(DISTINCT sncpsna.caminhoImpulso, ', ') AS caminho_impulso,
	STRING_AGG(DISTINCT snc.regiao, ', ') AS região_SNC,
	STRING_AGG(DISTINCT snc.funcao, ', ') AS funcao_SNC
FROM
	sncentralPeriSna sncpsna
JOIN
	nervosPeriSna npesna ON npesna.idNervo=sncpsna.idNervo
JOIN
	sistemaNervosoCentral snc ON sncpsna.idSNC=snc.idSNC
GROUP BY
	npesna.nome
ORDER BY
	npesna.nome;

-- Selecionar orgão, estruturas, vascularização, sua inervação, caminho do impulso

SELECT 
    o.nome AS organo_nome,
    STRING_AGG(DISTINCT eo.nome, ', ') AS estruturas,
    STRING_AGG(DISTINCT v2.nome, ', ') AS vasos,
    STRING_AGG(DISTINCT n.nome, ', ') AS nervos,
    STRING_AGG(DISTINCT s.caminhoImpulso, ', ') AS caminho_impulso
FROM 
    orgaos o
LEFT JOIN 
    estruturasOrgaos eo ON o.idOrgao = eo.idOrgao
LEFT JOIN 
    vascularizar v ON o.idOrgao = v.idOrgao
LEFT JOIN 
    vasos v2 ON v.idVasos = v2.idVasos
LEFT JOIN 
    inervarOrgao io ON o.idOrgao = io.idOrgao
LEFT JOIN 
    nervosPeriSna n ON io.idNervo = n.idNervo
LEFT JOIN 
    sncentralPeriSna s ON n.idNervo = s.idNervo
GROUP BY 
    o.idOrgao, o.nome;
