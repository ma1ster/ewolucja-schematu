MODEL (
  name generated.gen_model_0095,
  kind VIEW,
  depends_on (generated.gen_model_0094)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  95 AS chain_depth
FROM generated.gen_model_0094;
