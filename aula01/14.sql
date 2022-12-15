-- Databricks notebook source
-- 14 Selecione os pedidos e defina os grupos em uma nova coluna
-- * para frete inferior à 10%: '10%'
-- * para frete entre 10% e 25%: '10% a 25%'
-- * para frete entre 25% a 50%: '25% a 50%'
-- * para frete maior que 50%: '+50%'

SELECT *,
      vlPreco + vlFrete AS vlTotal,
      ROUND((vlFrete * 100) / (vlPreco + vlFrete),2) AS pctFrete,

      CASE 
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% a 25%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 THEN '25% a 50%'
        ELSE '+50%'
      END AS gruposFrete
         
FROM silver_olist.item_pedido
