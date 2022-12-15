-- Databricks notebook source
-- Lista de pedidos feitos em dezembro de 2017 e entregues com atraso

SELECT *
FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017
AND MONTH(dtPedido) = 12
AND DATE(dtEstimativaEntrega) < DATE(dtEntregue)
