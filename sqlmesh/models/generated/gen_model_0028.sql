MODEL (
  name generated.gen_model_0028,
  kind VIEW,
  depends_on (generated.gen_model_0027)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  28 AS chain_depth
FROM generated.gen_model_0027;
