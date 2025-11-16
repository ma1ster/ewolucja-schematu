MODEL (
  name generated.gen_model_0017,
  kind VIEW,
  depends_on (generated.gen_model_0016)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  17 AS chain_depth
FROM generated.gen_model_0016;
