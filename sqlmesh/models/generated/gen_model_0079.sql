MODEL (
  name generated.gen_model_0079,
  kind VIEW,
  depends_on (generated.gen_model_0078)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  79 AS chain_depth
FROM generated.gen_model_0078;
