MODEL (
  name generated.gen_model_0097,
  kind VIEW,
  depends_on (generated.gen_model_0096)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  97 AS chain_depth
FROM generated.gen_model_0096;
