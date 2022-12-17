-- Databricks notebook source
-- Qual a série histórica de pedidos por dia? E a receita?

SELECT 
      DATE(pedido.dtPedido),
      COUNT(pedido.idPedido) AS qtPedido,
      SUM(pagamento.vlPagamento) AS receita
FROM silver_olist.pedido AS pedido

LEFT JOIN silver_olist.pagamento_pedido AS pagamento
ON pedido.idPedido = pagamento.idPedido

GROUP BY DATE(pedido.dtPedido)

ORDER BY DATE(pedido.dtPedido)
