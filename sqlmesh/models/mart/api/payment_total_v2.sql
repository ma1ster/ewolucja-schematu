MODEL (
  name mart.payment_total_v2,
  kind VIEW,
);

SELECT
    order_id,
    credit_card_amount,
    coupon_amount,
    bank_transfer_amount,
    gift_card_amount,
    quantity,
    calculated_total,
    amounts_match
FROM mart.payment_total
