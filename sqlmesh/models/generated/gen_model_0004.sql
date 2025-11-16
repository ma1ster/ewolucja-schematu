MODEL (
  name generated.gen_model_0004,
  kind VIEW,
  depends_on (generated.gen_model_0003)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  4 AS chain_depth
FROM generated.gen_model_0003;
