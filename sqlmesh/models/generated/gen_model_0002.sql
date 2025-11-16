MODEL (
  name generated.gen_model_0002,
  kind VIEW,
  depends_on (generated.gen_model_0001)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  2 AS chain_depth
FROM generated.gen_model_0001;
