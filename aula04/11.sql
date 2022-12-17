-- Databricks notebook source
-- Qual o valor médio de um pedido? E o frete? 

SELECT 
      ROUND(AVG(vlPreco),2) AS valorMedioPedido,
      ROUND(AVG(vlFrete),2) AS valorMedioFrete

FROM silver_olist.item_pedido

