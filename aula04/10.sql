-- Databricks notebook source
-- Quantos produtos são de construção? 

SELECT 
      descCategoria,
      COUNT(idProduto) AS qtProduto

FROM silver_olist.produto

WHERE descCategoria = 'construcao_ferramentas_seguranca'

GROUP BY descCategoria
