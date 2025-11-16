MODEL (
  name generated.gen_model_0071,
  kind VIEW,
  depends_on (generated.gen_model_0070)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  71 AS chain_depth
FROM generated.gen_model_0070;
