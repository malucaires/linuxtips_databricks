-- Databricks notebook source
--Os clientes de qual estado pagam mais frete?

SELECT 
      cliente.descUF,
      ROUND(AVG(item_pedido.vlFrete),2) AS mediaFrete
      
FROM silver_olist.pedido AS pedido

LEFT JOIN silver_olist.item_pedido AS item_pedido
ON pedido.idPedido = item_pedido.idPedido

LEFT JOIN silver_olist.cliente AS cliente
ON pedido.idCliente = cliente.idCliente

GROUP BY cliente.descUF

ORDER BY mediaFrete DESC
