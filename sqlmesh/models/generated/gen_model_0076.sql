MODEL (
  name generated.gen_model_0076,
  kind VIEW,
  depends_on (generated.gen_model_0075)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  76 AS chain_depth
FROM generated.gen_model_0075;
