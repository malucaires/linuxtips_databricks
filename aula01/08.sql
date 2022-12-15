-- Databricks notebook source
-- Lista de pedidos que foram entregues com atraso

SELECT *
FROM silver_olist.pedido

WHERE DATE(dtEntregue) > DATE(dtEstimativaEntrega)
