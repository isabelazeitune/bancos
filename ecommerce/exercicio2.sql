use ecommerce;

-- TAREFAS

-- 1   TRAZER A QUANTIDADE DE PRODUTOS OFERECIDAS POR CADA FORNECEDOR
SELECT *, COUNT(p.ID_PRODUTO) FROM tb_produto p
	LEFT JOIN tb_fornecedor f
		ON p.ID_FORNECEDOR = f.ID_FORNECEDOR
			GROUP BY p.ID_FORNECEDOR;

-- 1.2 MOSTRAR OS 3 FORNECEDORES QUE MAIS TEM PRODUTOS
SELECT *, COUNT(p.ID_PRODUTO) FROM tb_produto p
	LEFT JOIN tb_fornecedor f
		ON p.ID_FORNECEDOR = f.ID_FORNECEDOR
			GROUP BY p.ID_FORNECEDOR
				LIMIT 3;

-- 2.1 TRAZER TODOS OS PRODUTOS E A QUANTIDADE TOTAL DE ITENS PEDIDOS.
-- 2.2 TRAZER A MÉDIA DA QUANTIDADE PEDIDA DE CADA PRODUTO POR PEDIDO.
-- 2.3 TRAZER A MÉDIA APNEAS PARA PRODUTOS QUE TENHA MAIS DE 1 PEDIDO.
-- 3.4 ORDERNAR PELA MAIOR MEDIA ATÉ A MENOR
-- 3   TRAZER A SOMA O VALOR TOTAL DE TODOS OS PEDIDOS. 
-- 4   TRAZER OS 5 CLIENTES QUE MAIS GASTARAM NO ECOMMERCE
