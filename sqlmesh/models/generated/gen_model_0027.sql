MODEL (
  name generated.gen_model_0027,
  kind VIEW,
  depends_on (generated.gen_model_0026)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  27 AS chain_depth
FROM generated.gen_model_0026;
