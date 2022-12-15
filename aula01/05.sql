-- Databricks notebook source
-- Lista de pedidos com mais de um item

SELECT idPedido
FROM silver_olist.item_pedido

WHERE idPedidoItem > 1
