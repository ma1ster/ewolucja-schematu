MODEL (
  name generated.gen_model_0023,
  kind VIEW,
  depends_on (generated.gen_model_0022)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  23 AS chain_depth
FROM generated.gen_model_0022;
