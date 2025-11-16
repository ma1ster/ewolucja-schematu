MODEL (
  name generated.gen_model_0099,
  kind VIEW,
  depends_on (generated.gen_model_0098)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  99 AS chain_depth
FROM generated.gen_model_0098;
