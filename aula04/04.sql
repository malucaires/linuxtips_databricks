-- Databricks notebook source
-- Qual categoria tem mais itens?

SELECT 
      descCategoria,
      COUNT(idProduto) AS qtProduto
FROM silver_olist.produto

GROUP BY descCategoria

ORDER BY qtProduto DESC

LIMIT 1
