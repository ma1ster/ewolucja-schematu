MODEL (
  name generated.gen_model_0054,
  kind VIEW,
  depends_on (generated.gen_model_0053)
);

SELECT
  order_id,
  user_id,
  order_date,
  status,
  54 AS chain_depth
FROM generated.gen_model_0053;
