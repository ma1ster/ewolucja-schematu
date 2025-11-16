MODEL (
  name generated.gen_model_0033,
  kind VIEW,
  depends_on (generated.gen_model_0032)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  33 AS chain_depth
FROM generated.gen_model_0032;
