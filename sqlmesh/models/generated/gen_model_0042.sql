MODEL (
  name generated.gen_model_0042,
  kind VIEW,
  depends_on (generated.gen_model_0041)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  42 AS chain_depth
FROM generated.gen_model_0041;
