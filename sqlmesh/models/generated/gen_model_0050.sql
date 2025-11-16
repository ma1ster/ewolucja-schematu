MODEL (
  name generated.gen_model_0050,
  kind VIEW,
  depends_on (generated.gen_model_0049)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  50 AS chain_depth
FROM generated.gen_model_0049;
