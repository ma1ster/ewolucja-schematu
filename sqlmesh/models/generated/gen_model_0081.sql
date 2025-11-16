MODEL (
  name generated.gen_model_0081,
  kind VIEW,
  depends_on (generated.gen_model_0080)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  81 AS chain_depth
FROM generated.gen_model_0080;
