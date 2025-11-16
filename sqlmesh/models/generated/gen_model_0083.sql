MODEL (
  name generated.gen_model_0083,
  kind VIEW,
  depends_on (generated.gen_model_0082)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  83 AS chain_depth
FROM generated.gen_model_0082;
