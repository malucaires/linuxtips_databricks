-- Databricks notebook source
SELECT
    descUF,
    COUNT(*) AS qtdeCliente,  
    COUNT(distinct idClienteUnico) AS qtdeClienteUnico
FROM silver_olist.cliente
GROUP BY descUF
