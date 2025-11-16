MODEL (
  name generated.gen_model_0039,
  kind VIEW,
  depends_on (generated.gen_model_0038)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  39 AS chain_depth
FROM generated.gen_model_0038;
