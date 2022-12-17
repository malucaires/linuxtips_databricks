-- Databricks notebook source
-- Quanto tempo em média demora para um pedido chegar depois de aprovado?

SELECT 
      AVG(DATEDIFF(DATE(dtEntregue), DATE(dtAprovado))) AS mediaQtDias

FROM silver_olist.pedido

