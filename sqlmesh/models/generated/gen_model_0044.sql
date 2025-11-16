MODEL (
  name generated.gen_model_0044,
  kind VIEW,
  depends_on (generated.gen_model_0043)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  44 AS chain_depth
FROM generated.gen_model_0043;
