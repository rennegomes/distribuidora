-- Distribuidora
INSERT INTO distribuidora (nome, cnpj, email, telefone, ativo) VALUES
('Distribuidora Primeira', '00.000.000/0001-00', 'contato@distribuidora1.com', '81999999999', 1),
('Distribuidora Segunda', '00.000.000/0002-00', 'contato@distribuidora2.com', '81999999998', 0),
('Distribuidora Terceira', '00.000.000/0003-00', 'contato@distribuidora3.com', '81999999997', 1);

-- Fornecedor
INSERT INTO fornecedor (nome, cnpj, email, telefone, ativo) VALUES
('BR Distribuidora', '11.111.111/1111-11', 'fornecedor@br.com', '81988888888', 0),
('Areias Distribuidora', '11.111.111/1111-12', 'fornecedor@a.com', '81988888888', 1),
('Senac Distribuidora', '11.111.111/1111-13', 'fornecedor@s.com', '81988888888', 0);

INSERT INTO produto (nome, categoria, precoCompra, precoVenda, quantidade, unidadeMedida, validade, marca) VALUES
('Gasolina', 'Combustível', 5.50, 6.79, 100000, 'litros', '2025-12-31', 'BR Distribuidora'),
('Etanol', 'Combustível', 3.90, 4.37, 100000, 'litros', '2025-12-31', 'BR Distribuidora');

-- Compras simuladas
INSERT INTO compra (data, valorTotal, fornecedor_id, distribuidora_id) VALUES
('2023-01-01 00:00:00', 15000.00, 1, 1),
('2023-01-05 01:00:00', 18000.00, 2, 2),
('2023-01-10 02:00:00', 22000.00, 3, 3),
('2023-01-15 03:00:00', 17000.00, 1, 2),
('2023-01-20 04:00:00', 25000.00, 2, 1),
('2025-07-20 05:00:00', 25000.00, 2, 1),
('2025-07-20 06:00:00', 25000.00, 2, 1),
('2025-07-25 07:00:00', 20000.00, 3, 3);


-- Itens de compra
INSERT INTO itemCompra (quantidade, precoUnitario, compra_id, produto_id) VALUES
(3000.00, 5.50, 1, 1),  -- Gasolina
(2000.00, 3.90, 1, 2),  -- Etanol
(4000.00, 5.50, 2, 1),
(3000.00, 3.90, 2, 2),
(5000.00, 5.50, 3, 1),
(4000.00, 3.90, 3, 2),
(3500.00, 5.50, 4, 1),
(2500.00, 3.90, 4, 2),
(6000.00, 5.50, 5, 1),
(5000.00, 3.90, 5, 2),
(5500.00, 5.50, 6, 1),
(4500.00, 3.90, 6, 2);


-- Movimentações de estoque
INSERT INTO movimentacaoEstoque (tipo, quantidade, origem, data, produto_id) VALUES
('entrada', 3000.00, 'Compra ID 1', '2023-01-01 00:00:00', 1),
('entrada', 2000.00, 'Compra ID 1', '2023-01-01 01:00:00', 2),
('entrada', 4000.00, 'Compra ID 2', '2023-01-05 02:00:00', 1),
('entrada', 3000.00, 'Compra ID 2', '2023-01-05 03:00:00', 2),
('entrada', 5000.00, 'Compra ID 3', '2023-01-10 04:00:00', 1),
('entrada', 4000.00, 'Compra ID 3', '2023-01-10 05:00:00', 2),
('entrada', 3500.00, 'Compra ID 4', '2023-01-15 06:00:00', 1),
('entrada', 2500.00, 'Compra ID 4', '2023-01-15 07:00:00', 2),
('entrada', 6000.00, 'Compra ID 5', '2023-01-20 08:00:00', 1),
('entrada', 5000.00, 'Compra ID 5', '2023-01-20 09:00:00', 2),
('entrada', 5500.00, 'Compra ID 6', '2025-07-25 10:00:00', 1),
('entrada', 5500.00, 'Compra ID 6', '2025-07-25 11:00:00', 2),
('entrada', 5500.00, 'Compra ID 6', '2025-07-25 12:00:00', 1),
('entrada', 5500.00, 'Compra ID 6', '2025-07-25 13:00:00', 1),
('entrada', 4500.00, 'Compra ID 6', '2023-07-25 14:00:00', 2);

-- Vendas
INSERT INTO venda (data, valorTotal) VALUES 
('2023-02-01 00:00:00', 22000.00),
('2023-02-03 01:00:00', 24000.00),
('2023-02-06 02:00:00', 20000.00),
('2023-02-10 03:00:00', 27000.00),
('2023-02-13 04:00:00', 19000.00),
('2025-07-10 05:00:00', 27000.00),
('2025-07-13 06:00:00', 19000.00),
('2025-07-15 07:00:00', 31000.00);


-- Itens de venda
INSERT INTO itemVenda (quantidade, precoUnitario, venda_id, produto_id) VALUES
(3000.00, 6.79, 1, 1),  -- Gasolina
(2000.00, 4.37, 1, 2),  -- Etanol
(3500.00, 6.79, 2, 1),
(2000.00, 4.37, 2, 2),
(2500.00, 6.79, 3, 1),
(1500.00, 4.37, 3, 2),
(4000.00, 6.79, 4, 1),
(2500.00, 4.37, 4, 2),
(2000.00, 6.79, 5, 1),
(1500.00, 4.37, 5, 2),
(4500.00, 6.79, 6, 1),
(3000.00, 4.37, 6, 2);

