MODEL (
  name generated.gen_model_0068,
  kind VIEW,
  depends_on (generated.gen_model_0067)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  68 AS chain_depth
FROM generated.gen_model_0067;
