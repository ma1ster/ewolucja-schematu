MODEL (
  name generated.gen_model_0090,
  kind VIEW,
  depends_on (generated.gen_model_0089)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  90 AS chain_depth
FROM generated.gen_model_0089;
