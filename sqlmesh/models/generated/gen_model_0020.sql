MODEL (
  name generated.gen_model_0020,
  kind VIEW,
  depends_on (generated.gen_model_0019)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  20 AS chain_depth
FROM generated.gen_model_0019;
