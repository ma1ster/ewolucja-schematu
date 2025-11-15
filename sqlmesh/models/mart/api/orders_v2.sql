/* This table has basic information about orders, as well as some derived facts based on payments */
MODEL (
  name mart.orders_v2,
  kind VIEW,
);

select
  order_id,
  customer_id,
  order_date,
  status,
  credit_card_amount,
  coupon_amount,
  bank_transfer_amount,
  gift_card_amount,
  quantity
from mart.orders;
