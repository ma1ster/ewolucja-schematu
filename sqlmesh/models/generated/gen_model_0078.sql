MODEL (
  name generated.gen_model_0078,
  kind VIEW,
  depends_on (generated.gen_model_0077)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  78 AS chain_depth
FROM generated.gen_model_0077;
