MODEL (
  name generated.gen_model_0026,
  kind VIEW,
  depends_on (generated.gen_model_0025)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  26 AS chain_depth
FROM generated.gen_model_0025;
