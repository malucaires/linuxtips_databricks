-- Databricks notebook source
-- Qual estado tem mais vendedores?

SELECT 
    descUF,
    COUNT(idVendedor) AS qtVendedor
FROM silver_olist.vendedor

GROUP BY descUF

ORDER BY qtVendedor DESC

LIMIT 1
