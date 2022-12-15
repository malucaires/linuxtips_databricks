-- Databricks notebook source
-- Selecione todos os clientes cariocas

SELECT * 
FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro'
