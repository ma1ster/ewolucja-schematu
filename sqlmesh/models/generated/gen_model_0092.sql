MODEL (
  name generated.gen_model_0092,
  kind VIEW,
  depends_on (generated.gen_model_0091)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  92 AS chain_depth
FROM generated.gen_model_0091;
