MODEL (
  name generated.gen_model_0034,
  kind VIEW,
  depends_on (generated.gen_model_0033)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  34 AS chain_depth
FROM generated.gen_model_0033;
