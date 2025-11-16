MODEL (
  name generated.gen_model_0010,
  kind VIEW,
  depends_on (generated.gen_model_0009)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  10 AS chain_depth
FROM generated.gen_model_0009;
