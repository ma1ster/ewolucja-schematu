MODEL (
  name staging.stg_payments,
  start '2025-01-01',
  grain payment_id,
  depends_on (
    raw.raw_payments
  ),
  audits (
    UNIQUE_VALUES(columns = (
      payment_id
    )),
    NOT_NULL(columns = (payment_id, payment_method)),
    ACCEPTED_VALUES(
      "column" = payment_method,
      is_in = ['credit_card', 'coupon', 'bank_transfer', 'gift_card']
    )
  )
);

WITH source AS (
  SELECT
    id AS payment_id,
    order_id,
    payment_method,
    quantity /* `amount` is currently stored in cents, so we convert it to dollars */ / 100 AS quantity,
    if (payment_method = 'coupon', 'true', 'false') AS discounted
  FROM raw.raw_payments
)
SELECT
  payment_id,
  order_id,
  payment_method,
  quantity,
  discounted
FROM source
