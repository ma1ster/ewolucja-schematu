MODEL (
  name generated.gen_model_0016,
  kind VIEW,
  depends_on (generated.gen_model_0015)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  16 AS chain_depth
FROM generated.gen_model_0015;
