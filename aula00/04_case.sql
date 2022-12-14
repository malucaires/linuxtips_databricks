-- Databricks notebook source
SELECT * 
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,

      CASE 
        WHEN descUF = 'SP' THEN 'paulista'
        WHEN descUF = 'RJ' THEN 'fluminense'
        WHEN descUF = 'PR' THEN 'paranaense'
        ELSE 'outros'
      END AS descNacionalidade,
      
      CASE 
        WHEN descCidade LIKE 'sao%' THEN 'Começa com São'
        ELSE 'Não começa com São'
      END AS descCidadeSao        
      
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente

WHERE descUF = 'RJ'


-- COMMAND ----------

SELECT *,
        CASE
          WHEN descUf IN ('SP', 'RJ', 'MG', 'ES') THEN 'Sudeste'
         END AS descRegiao
         
FROM silver_olist.vendedor

-- COMMAND ----------


