MODEL (
  name generated.gen_model_0015,
  kind VIEW,
  depends_on (generated.gen_model_0014)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  15 AS chain_depth
FROM generated.gen_model_0014;
