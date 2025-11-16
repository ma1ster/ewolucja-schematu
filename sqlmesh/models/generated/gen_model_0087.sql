MODEL (
  name generated.gen_model_0087,
  kind VIEW,
  depends_on (generated.gen_model_0086)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  87 AS chain_depth
FROM generated.gen_model_0086;
