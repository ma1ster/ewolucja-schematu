MODEL (
  name generated.gen_model_0024,
  kind VIEW,
  depends_on (generated.gen_model_0023)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  24 AS chain_depth
FROM generated.gen_model_0023;
