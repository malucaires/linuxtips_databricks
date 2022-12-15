-- Databricks notebook source
-- 14 Selecione os pedidos e defina os grupos em uma nova coluna
-- * para frete inferior à 10%: '10%'
-- * para frete entre 10% e 25%: '10% a 25%'
-- * para frete entre 25% a 50%: '25% a 50%'
-- * para frete maior que 50%: '+50%'

SELECT *,

      CASE 
        WHEN vlFrete < (0.1 * vlPreco) THEN '10%'
        WHEN vlFrete >= (0.1 * vlPreco) AND vlFrete < (0.25 * vlPreco) THEN '10% a 25%'
        WHEN vlFrete >= (0.25 * vlPreco) AND vlFrete < (0.5 * vlPreco) THEN '25% a 50%'
        ELSE '+50%'
      END AS gruposFrete
         
FROM silver_olist.item_pedido
