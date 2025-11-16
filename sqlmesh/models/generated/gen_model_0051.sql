MODEL (
  name generated.gen_model_0051,
  kind VIEW,
  depends_on (generated.gen_model_0050)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  51 AS chain_depth
FROM generated.gen_model_0050;
