-- Databricks notebook source
-- Existe diferença entre os valores de pedido em relação aos meios de pagamento?

SELECT 
      descTipoPagamento,
      ROUND(SUM(vlPagamento),2) AS totalPagamento
FROM silver_olist.pagamento_pedido

GROUP BY descTipoPagamento

ORDER BY totalPagamento DESC
