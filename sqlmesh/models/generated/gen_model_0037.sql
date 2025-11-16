MODEL (
  name generated.gen_model_0037,
  kind VIEW,
  depends_on (generated.gen_model_0036)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  37 AS chain_depth
FROM generated.gen_model_0036;
