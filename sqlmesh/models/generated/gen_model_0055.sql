MODEL (
  name generated.gen_model_0055,
  kind VIEW,
  depends_on (generated.gen_model_0054)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  55 AS chain_depth
FROM generated.gen_model_0054;
