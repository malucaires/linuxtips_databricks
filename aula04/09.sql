-- Databricks notebook source
-- Quantos clientes são do estado do Rio de Janeiro?

SELECT 
      descUF,
      COUNT(idCliente) AS qtCliente

FROM silver_olist.cliente

WHERE descUF = 'RJ'

GROUP BY descUF
