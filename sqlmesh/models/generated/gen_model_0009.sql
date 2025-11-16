MODEL (
  name generated.gen_model_0009,
  kind VIEW,
  depends_on (generated.gen_model_0008)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  9 AS chain_depth
FROM generated.gen_model_0008;
