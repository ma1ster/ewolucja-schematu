MODEL (
  name generated.gen_model_0041,
  kind VIEW,
  depends_on (generated.gen_model_0040)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  41 AS chain_depth
FROM generated.gen_model_0040;
