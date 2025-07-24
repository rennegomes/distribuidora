select * from fornecedor;

-- 1. Quantos fornecedores estão cadastrados?
SELECT COUNT(fornecedor.id) AS total_fornecedores FROM fornecedor;

-- 2. Quantos fornecedores estão ativos?
SELECT fornecedor.nome, fornecedor.ativo FROM fornecedor WHERE fornecedor.ativo = true;

-- 3. Qual fornecedor mais realizou compras?
SELECT f.nome, COUNT(c.id) AS total_compras
FROM compra c
JOIN fornecedor f ON c.fornecedor_id = f.id
GROUP BY f.nome
ORDER BY total_compras DESC
LIMIT 1;

-- 4. Quantos produtos foram vendidos no último mês?
SELECT SUM(iv.quantidade) AS total_vendido
FROM itemVenda iv
JOIN venda v ON iv.venda_id = v.id
WHERE v.data BETWEEN '2025-07-01' AND '2025-07-31';

-- 5. Qual produto mais vendido em quantidade?
SELECT p.nome, SUM(iv.quantidade) AS total_vendido
FROM itemVenda iv
JOIN produto p ON iv.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC
LIMIT 1;

-- 6. Qual foi o total arrecadado em vendas neste mês?
SELECT SUM(v.valorTotal) AS total_vendas
FROM venda v
WHERE MONTH(v.data) = MONTH(CURRENT_DATE)
AND YEAR(v.data) = YEAR(CURRENT_DATE);

-- 7. Qual produto está com maior estoque atualmente?
SELECT nome, quantidade
FROM produto
ORDER BY quantidade DESC
LIMIT 1;

-- 8. Movimentações de entrada de estoque no último mês:
SELECT COUNT(*) AS entradas
FROM movimentacaoEstoque
WHERE tipo = 'entrada'
AND data >= DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH);

-- 9. Total de valor gasto em compras por distribuidora:
SELECT d.nome, SUM(c.valorTotal) AS total_compras
FROM compra c
JOIN distribuidora d ON c.distribuidora_id = d.id
GROUP BY d.nome;

-- 10. Data e valor da compra mais cara registrada:
SELECT data, valorTotal
FROM compra
ORDER BY valorTotal DESC
LIMIT 1;