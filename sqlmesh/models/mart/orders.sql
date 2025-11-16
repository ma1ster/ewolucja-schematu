/* This table has basic information about orders, as well as some derived facts based on payments */
MODEL (
  name mart.orders,
  start '2025-01-01',
  kind FULL,
  depends_on (mart.customers, staging.stg_orders, staging.stg_payments),
  audits (
    UNIQUE_VALUES(columns = (
      order_id
    )),
    NOT_NULL(
      columns = (
        order_id,
        customer_id,
        credit_card_amount,
        coupon_amount,
        bank_transfer_amount,
        gift_card_amount,
        quantity
      )
    ),
    ACCEPTED_VALUES(
      "column" = status,
      is_in = ['placed', 'shipped', 'completed', 'return_pending', 'returned']
    )
  ),
  allow_partials TRUE
);

with orders as (

    select
      order_id,
      customer_id,
      order_date,
      status
    from staging.stg_orders

),

payments as (

    select
      order_id,
      payment_method,
      quantity
    from staging.stg_payments

),

order_payments as (

    select
        order_id,
        sum(case when payment_method = 'credit_card' then quantity else 0 end) as credit_card_amount,
        sum(case when payment_method = 'coupon' then quantity else 0 end) as coupon_amount,
        sum(case when payment_method = 'bank_transfer' then quantity else 0 end) as bank_transfer_amount,
        sum(case when payment_method = 'gift_card' then quantity else 0 end) as gift_card_amount,
        sum(quantity) as total_amount

    from payments

    group by order_id

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status,
        order_payments.credit_card_amount,
        order_payments.coupon_amount,
        order_payments.bank_transfer_amount,
        order_payments.gift_card_amount,
        order_payments.total_amount as quantity

    from orders

    left join order_payments
        on orders.order_id = order_payments.order_id

)

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
from final;
