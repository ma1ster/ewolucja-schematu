MODEL (
  name generated.gen_model_0052,
  kind VIEW,
  depends_on (generated.gen_model_0051)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  52 AS chain_depth
FROM generated.gen_model_0051;
