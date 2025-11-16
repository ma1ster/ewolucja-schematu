MODEL (
  name generated.gen_model_0075,
  kind VIEW,
  depends_on (generated.gen_model_0074)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  75 AS chain_depth
FROM generated.gen_model_0074;
