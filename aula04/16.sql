-- Databricks notebook source
-- Qual categoria tem produtos mais caros, em média?

SELECT 
      produto.descCategoria,
      ROUND(AVG(item_pedido.vlPreco),2) AS mediaValor
      
FROM silver_olist.item_pedido AS item_pedido

JOIN silver_olist.produto AS produto
ON item_pedido.idProduto = produto.idProduto

GROUP BY produto.descCategoria

ORDER BY mediaValor DESC

LIMIT 1

