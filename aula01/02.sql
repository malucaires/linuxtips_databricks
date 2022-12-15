-- Databricks notebook source
-- Selecione todos os clientes paulistas

SELECT * 
FROM silver_olist.cliente

WHERE descUF = 'SP'
