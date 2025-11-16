MODEL (
  name generated.gen_model_0067,
  kind VIEW,
  depends_on (generated.gen_model_0066)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  67 AS chain_depth
FROM generated.gen_model_0066;
