MODEL (
  name generated.gen_model_0066,
  kind VIEW,
  depends_on (generated.gen_model_0065)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  66 AS chain_depth
FROM generated.gen_model_0065;
