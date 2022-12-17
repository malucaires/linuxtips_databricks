-- Databricks notebook source
-- Quantos vendedores são do estado de São Paulo? 

SELECT 
      descUF,
      COUNT(idVendedor) AS qtVendedor

FROM silver_olist.vendedor

WHERE descUF = 'SP'

GROUP BY descUF
