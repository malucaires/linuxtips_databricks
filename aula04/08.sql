-- Databricks notebook source
-- Quantos vendedores são de Presidente Prudente?

SELECT 
      descCidade,
      COUNT(idVendedor) AS qtVendedor

FROM silver_olist.vendedor

WHERE descCidade = 'presidente prudente'

GROUP BY descCidade
