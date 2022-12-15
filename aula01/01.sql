-- Databricks notebook source
-- Selecione todos os clientes paulistanos

SELECT * 
FROM silver_olist.cliente

WHERE descCidade = 'sao paulo'
