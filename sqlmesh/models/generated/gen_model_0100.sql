MODEL (
  name generated.gen_model_0100,
  kind VIEW,
  depends_on (generated.gen_model_0099)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  100 AS chain_depth
FROM generated.gen_model_0099;
