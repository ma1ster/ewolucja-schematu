MODEL (
  name generated.gen_model_0074,
  kind VIEW,
  depends_on (generated.gen_model_0073)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  74 AS chain_depth
FROM generated.gen_model_0073;
