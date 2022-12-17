-- Databricks notebook source
-- Qual categoria tem mais produtos vendidos?

SELECT 
      produto.descCategoria,
      COUNT(item_pedido.idProduto) AS qtProduto
FROM silver_olist.item_pedido AS item_pedido

JOIN silver_olist.produto AS produto
ON item_pedido.idProduto = produto.idProduto

GROUP BY produto.descCategoria

ORDER BY qtProduto DESC

LIMIT 1
