-- Databricks notebook source
SELECT COUNT(*)
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,
    COUNT(idCliente) AS nrIdClienteNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,
    COUNT(idCliente) AS nrIdClienteNaoNulo,
    COUNT(distinct idCliente) AS nrIdClienteDistinto
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,
    COUNT(idCliente) AS nrIdClienteNaoNulo,
    COUNT(distinct idCliente) AS nrIdClienteDistinto,
    
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistinto
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) 
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT 
  COUNT(*) 
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'santos')

-- COMMAND ----------

SELECT 
  COUNT(*),
  COUNT(distinct idCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'santos')
