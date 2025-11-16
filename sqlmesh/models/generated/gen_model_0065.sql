MODEL (
  name generated.gen_model_0065,
  kind VIEW,
  depends_on (generated.gen_model_0064)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  65 AS chain_depth
FROM generated.gen_model_0064;
