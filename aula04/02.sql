-- Databricks notebook source
-- Qual cidade tem mais clientes? 

SELECT 
      descCidade,
      COUNT(idCliente) AS qtCliente
FROM silver_olist.cliente

GROUP BY descCidade

ORDER BY qtCliente DESC

LIMIT 1
