-- Databricks notebook source
-- Qual categoria tem maiores fretes, em média?

SELECT 
      produto.descCategoria,
      ROUND(AVG(item_pedido.vlFrete),2) AS mediaFrete
      
FROM silver_olist.item_pedido AS item_pedido

JOIN silver_olist.produto AS produto
ON item_pedido.idProduto = produto.idProduto

GROUP BY produto.descCategoria

ORDER BY mediaFrete DESC

LIMIT 1
