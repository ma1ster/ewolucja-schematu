MODEL (
  name generated.gen_model_0060,
  kind VIEW,
  depends_on (generated.gen_model_0059)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  60 AS chain_depth
FROM generated.gen_model_0059;
