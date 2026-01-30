SELECT 
    c.sap_cod_cliente AS cod_cliente,
    SUBSTRING(p.documento,1,9) AS cnpj_raiz,
    p.razao_social AS nome,
    ec.nome AS cidade,
    ee.nome AS estado,
    ee.sap_cod_estado AS uf
FROM cliente c
LEFT JOIN pessoa p ON c.id_pessoa = p.id
LEFT JOIN endereco e ON p.id = e.id_pessoa
LEFT JOIN endereco_cidade ec ON e.id_cidade = ec.id
LEFT JOIN endereco_estado ee ON ec.id_estado = ee.id
WHERE c.sap_cod_lista_preco <> 11
	AND e.created_at = (SELECT MAX(e2.created_at) FROM endereco e2 WHERE e2.id_pessoa = e.id_pessoa)
GROUP BY c.sap_cod_cliente
LIMIT 7000;