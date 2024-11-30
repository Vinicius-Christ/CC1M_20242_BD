--Listar todos os clientes que compraram um determinado produto:
SELECT c.nome AS cliente, p.nome AS produto
FROM Vendas v
JOIN ItensVenda iv ON v.id_venda = iv.id_venda
JOIN Produtos p ON iv.id_produto = p.id_produto
JOIN Clientes c ON v.id_cliente = c.id_cliente
WHERE p.nome = 'Notebook';

--Verificar o estoque e fornecedores de um produto específico:
SELECT p.nome AS produto, p.quantidade_estoque, f.nome AS fornecedor
FROM Produtos p
JOIN Fornecedores f ON p.id_fornecedor = f.id_fornecedor
WHERE p.nome = 'Celular';

--Acompanhar o status de pagamento de cada venda:
SELECT v.id_venda, c.nome AS cliente, p.data_pagamento, p.valor, p.status
FROM Pagamentos p
JOIN Vendas v ON p.id_venda = v.id_venda
JOIN Clientes c ON v.id_cliente = c.id_cliente;
