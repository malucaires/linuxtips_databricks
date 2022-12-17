-- Databricks notebook source
-- Qual o pedido com maior valor de frete? E o menor?

SELECT 
      idPedido,
      vlFrete

FROM silver_olist.item_pedido

ORDER BY vlFrete DESC 

LIMIT 1


-- COMMAND ----------

SELECT 
      idPedido,
      vlFrete

FROM silver_olist.item_pedido

ORDER BY vlFrete ASC 

LIMIT 1
