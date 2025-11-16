MODEL (
  name generated.gen_model_0061,
  kind VIEW,
  depends_on (generated.gen_model_0060)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  61 AS chain_depth
FROM generated.gen_model_0060;
