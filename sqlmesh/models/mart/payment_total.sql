MODEL (
  name mart.payment_total,
  depends_on (
    mart.orders
  ),
  grain order_id
);

JINJA_QUERY_BEGIN;
SELECT
    order_id,
    credit_card_amount,
    coupon_amount,
    bank_transfer_amount,
    gift_card_amount,
    amount,
    {{ calculate_payment_totals() }}  -- This adds 2 columns
FROM mart.orders
JINJA_END;
