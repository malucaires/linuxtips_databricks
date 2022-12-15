-- Databricks notebook source
-- Lista de pedidos com avaliação maior ou igual que 4

SELECT *
FROM silver_olist.avaliacao_pedido
WHERE vlNota >= 4
