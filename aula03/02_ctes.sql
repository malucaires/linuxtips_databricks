-- Databricks notebook source
-- Lista de vendedores que estão nos 2 estados com mais clientes

SELECT idVendedor
FROM silver_olist.vendedor
WHERE descUF IN (
  SELECT descUF
  FROM silver_olist.cliente
  GROUP BY descUF 
  ORDER BY COUNT(DISTINCT idClienteUnico) DESC
  LIMIT 2
)

-- COMMAND ----------

-- Lista de vendedores que estão nos 2 estados com mais clientes

WITH tb_estados AS (
  SELECT descUF
  FROM silver_olist.cliente
  GROUP BY descUF 
  ORDER BY COUNT(DISTINCT idClienteUnico) DESC
  LIMIT 2
)

SELECT idVendedor
FROM silver_olist.vendedor
WHERE descUF IN (SELECT descUF FROM tb_estados)

-- COMMAND ----------

-- Nota média dos vendedores de cada Estado

WITH tb_pedido_nota AS (
    SELECT idVendedor,
            vlNota
    FROM silver_olist.item_pedido AS item_pedido
    
    LEFT JOIN silver_olist.avaliacao_pedido AS avaliacao_pedido
    ON item_pedido.idPedido = avaliacao_pedido.idPedido

),

tb_avg_vendedor AS (
    SELECT idVendedor, 
            AVG(vlNota) as avgNota
    FROM tb_pedido_nota
    GROUP BY idVendedor
),

tb_vendedor_estado AS (

      SELECT tb_avg_vendedor.*,
              vendedor.descUF
      FROM tb_avg_vendedor
      LEFT JOIN silver_olist.vendedor AS vendedor
      ON tb_avg_vendedor.idVendedor = vendedor.idVendedor

)

SELECT descUF,
      AVG(avgNota) as avgNotaEstado
FROM tb_vendedor_estado

GROUP BY descUF

ORDER BY avgNotaEstado DESC
