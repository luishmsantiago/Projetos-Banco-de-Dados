--Algumas Query

SELECT DISTINCT es.nome as origem_insercao, mu.nome as nome_musculo, fu.tipoMovimento as acao_muscular FROM inserir ins, estruturas es, executar ex, funcao fu, musculos mu
	WHERE es.idEstrutura=ins.idEstrutura AND ins.idMusculo=mu.idMusculo AND mu.idMusculo=ex.idMusculo AND ex.idFuncao=fu.idFuncao

SELECT os.nome as nome_osso, es.nome as nome_estrutura  FROM ossos os, estruturas es
	WHERE os.idOsso=es.idOsso
	
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
