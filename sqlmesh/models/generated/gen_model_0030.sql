MODEL (
  name generated.gen_model_0030,
  kind VIEW,
  depends_on (generated.gen_model_0029)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  30 AS chain_depth
FROM generated.gen_model_0029;
