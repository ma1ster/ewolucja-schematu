MODEL (
  name generated.gen_model_0056,
  kind VIEW,
  depends_on (generated.gen_model_0055)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  56 AS chain_depth
FROM generated.gen_model_0055;
