MODEL (
  name generated.gen_model_0001,
  kind VIEW,
  depends_on (raw.raw_orders)
);

SELECT
  id AS order_id,
  user_id,
  order_date,
  status,
  1 AS chain_depth
FROM raw.raw_orders;
