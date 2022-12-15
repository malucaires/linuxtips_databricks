-- Databricks notebook source
-- Lista de pedidos feitos em dezembro de 2017 e entregues com atraso

SELECT *
FROM silver_olist.pedido

WHERE dtPedido LIKE '2017-12%'
AND DATE(dtEstimativaEntrega) < DATE(dtEntregue)
