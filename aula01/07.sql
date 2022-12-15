-- Databricks notebook source
-- Lista de pedidos que ainda não foram enviados

SELECT *
FROM silver_olist.pedido

WHERE dtAprovado is not null
AND dtEnvio is null
AND descSituacao != 'canceled'
