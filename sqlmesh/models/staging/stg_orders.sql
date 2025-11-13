MODEL (
  name staging.stg_orders,
  kind INCREMENTAL_BY_UNIQUE_KEY (
    unique_key order_id
  ),
  start '2018-01-01',
  cron '@daily',
  grain order_date,
  depends_on (
    raw.raw_orders
  ),
  audits (
    UNIQUE_VALUES(columns = (
      order_id
    )),
    NOT_NULL(columns = (order_id, customer_id, status)),
    ACCEPTED_VALUES(
      "column" = status,
      is_in = ['placed', 'shipped', 'completed', 'return_pending', 'returned']
    )
  ),
  partitioned_by order_date,
  clustered_by (customer_id, status),
  allow_partials TRUE
);

WITH source AS (
  SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
  FROM raw.raw_orders
  WHERE
    order_date BETWEEN @start_ds AND @end_ds
)
SELECT
  order_id,
  customer_id,
  order_date,
  status
FROM source
