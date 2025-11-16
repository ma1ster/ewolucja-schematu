MODEL (
  name generated.gen_model_0047,
  kind VIEW,
  depends_on (generated.gen_model_0046)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  47 AS chain_depth
FROM generated.gen_model_0046;
