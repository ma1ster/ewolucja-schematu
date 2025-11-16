MODEL (
  name generated.gen_model_0003,
  kind VIEW,
  depends_on (generated.gen_model_0002)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  3 AS chain_depth
FROM generated.gen_model_0002;
