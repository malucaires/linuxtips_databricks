-- Databricks notebook source
-- Listar os 10 vendedores com mais vendas por estado

WITH tb_vendas_vendedores AS (
    SELECT 
          idVendedor,
          COUNT(*) AS qtVendas
    FROM silver_olist.item_pedido
    GROUP BY idVendedor
    ORDER BY qtVendas DESC
),

tb_row_number AS (
  SELECT tb_vendas_vendedores.*,
        vendedores.descUF,
        ROW_NUMBER() OVER (PARTITION BY vendedores.descUF ORDER BY qtVendas DESC) AS RN
  FROM tb_vendas_vendedores 

  LEFT JOIN silver_olist.vendedor AS vendedores
  ON tb_vendas_vendedores.idVendedor = vendedores.idVendedor
  
  QUALIFY RN <= 10

  ORDER BY descUF, qtVendas DESC
)

SELECT * FROM tb_row_number
