-- Databricks notebook source
-- Selecione todos os pedidos e marque se houve atraso ou não

SELECT *,

      CASE 
        WHEN DATE(dtEntregue) > DATE(dtEstimativaEntrega) THEN 'com atraso'
        ELSE 'sem atraso'
      END AS houveAtraso
         
FROM silver_olist.pedido
