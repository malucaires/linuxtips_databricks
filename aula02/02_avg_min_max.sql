-- Databricks notebook source
SELECT 
    ROUND(AVG(vlPreco),2) AS avgPreco,
    ROUND(PERCENTILE(vlPreco, 0.5),2) AS medianaPreco,    
    MAX(vlPreco) AS maxPreco,
    ROUND(AVG(vlFrete),2) AS avgFrete,
    MAX(vlFrete) AS maxFrete,
    MIN(vlFrete) AS minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------


