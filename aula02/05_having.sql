-- Databricks notebook source
SELECT 
    descUF,
    COUNT(idVendedor) AS qtVendedorUF

FROM silver_olist.vendedor

GROUP BY descUF

HAVING qtVendedorUF >= 100

ORDER BY qtVendedorUF DESC
