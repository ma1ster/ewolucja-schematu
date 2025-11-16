MODEL (
  name generated.gen_model_0035,
  kind VIEW,
  depends_on (generated.gen_model_0034)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  35 AS chain_depth
FROM generated.gen_model_0034;
