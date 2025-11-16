MODEL (
  name generated.gen_model_0031,
  kind VIEW,
  depends_on (generated.gen_model_0030)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  31 AS chain_depth
FROM generated.gen_model_0030;
