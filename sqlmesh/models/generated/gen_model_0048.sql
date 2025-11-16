MODEL (
  name generated.gen_model_0048,
  kind VIEW,
  depends_on (generated.gen_model_0047)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  48 AS chain_depth
FROM generated.gen_model_0047;
