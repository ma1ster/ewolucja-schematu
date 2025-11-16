MODEL (
  name generated.gen_model_0094,
  kind VIEW,
  depends_on (generated.gen_model_0093)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  94 AS chain_depth
FROM generated.gen_model_0093;
