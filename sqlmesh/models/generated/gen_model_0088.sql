MODEL (
  name generated.gen_model_0088,
  kind VIEW,
  depends_on (generated.gen_model_0087)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  88 AS chain_depth
FROM generated.gen_model_0087;
