MODEL (
  name generated.gen_model_0006,
  kind VIEW,
  depends_on (generated.gen_model_0005)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  6 AS chain_depth
FROM generated.gen_model_0005;
