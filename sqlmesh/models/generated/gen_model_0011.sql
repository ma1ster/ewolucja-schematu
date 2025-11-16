MODEL (
  name generated.gen_model_0011,
  kind VIEW,
  depends_on (generated.gen_model_0010)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  11 AS chain_depth
FROM generated.gen_model_0010;
