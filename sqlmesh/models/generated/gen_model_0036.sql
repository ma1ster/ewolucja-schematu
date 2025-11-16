MODEL (
  name generated.gen_model_0036,
  kind VIEW,
  depends_on (generated.gen_model_0035)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  36 AS chain_depth
FROM generated.gen_model_0035;
