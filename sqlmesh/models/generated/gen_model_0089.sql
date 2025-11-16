MODEL (
  name generated.gen_model_0089,
  kind VIEW,
  depends_on (generated.gen_model_0088)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  89 AS chain_depth
FROM generated.gen_model_0088;
