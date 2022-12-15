-- Databricks notebook source
-- Lista de produtos que o frete é maior que o valor do produto

SELECT *
FROM silver_olist.item_pedido
WHERE vlFrete > vlPreco
