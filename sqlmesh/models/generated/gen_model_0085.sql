MODEL (
  name generated.gen_model_0085,
  kind VIEW,
  depends_on (generated.gen_model_0084)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  85 AS chain_depth
FROM generated.gen_model_0084;
