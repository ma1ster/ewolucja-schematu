MODEL (
  name generated.gen_model_0057,
  kind VIEW,
  depends_on (generated.gen_model_0056)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  57 AS chain_depth
FROM generated.gen_model_0056;
