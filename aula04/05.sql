-- Databricks notebook source
-- Qual categoria tem maior peso médio de produto? 

SELECT 
      descCategoria,
      AVG(vlPesoGramas) AS pesoMedio
      
FROM silver_olist.produto

GROUP BY descCategoria

ORDER BY pesoMedio DESC

LIMIT 1
