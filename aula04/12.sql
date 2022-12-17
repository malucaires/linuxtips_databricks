-- Databricks notebook source
-- Em média, os pedidos são de quantas parcelas de cartão? E o valor médio por parcela? 

SELECT 
      ROUND(AVG(nrPacelas),2) AS valorMedioParcelas,
      ROUND(AVG(vlPagamento),2) AS valorMedioPagamento
      
FROM silver_olist.pagamento_pedido

WHERE descTipoPagamento = 'credit_card'
