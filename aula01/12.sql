-- Databricks notebook source
-- Lista de pedidos com 2 ou mais parcelas menores que R$ 20,00

SELECT *
FROM silver_olist.pagamento_pedido
WHERE nrPacelas > 1
AND (vlPagamento/nrPacelas) < 20
