MODEL (
  name generated.gen_model_0007,
  kind VIEW,
  depends_on (generated.gen_model_0006)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  7 AS chain_depth
FROM generated.gen_model_0006;
