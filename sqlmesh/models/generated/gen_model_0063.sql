MODEL (
  name generated.gen_model_0063,
  kind VIEW,
  depends_on (generated.gen_model_0062)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  63 AS chain_depth
FROM generated.gen_model_0062;
