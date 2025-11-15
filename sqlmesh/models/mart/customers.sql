/* This table has basic information about a customer, as well as some derived facts based on a customer's orders */
MODEL (
  name mart.customers,
  start '2025-01-01',
  kind FULL,
  depends_on (staging.stg_customers, staging.stg_orders, staging.stg_payments),
  audits (
    UNIQUE_VALUES(columns = (
      customer_id
    )),
    NOT_NULL(columns = (
      customer_id
    ))
  ),
  allow_partials TRUE
);

WITH customers AS (
  SELECT
    customer_id,
    first_name,
    last_name
  FROM staging.stg_customers
), orders AS (
  SELECT
    customer_id,
    order_date,
    order_id
  FROM staging.stg_orders
), payments AS (
  SELECT
    order_id,
    amount
  FROM staging.stg_payments
), customer_orders AS (
  SELECT
    customer_id,
    MIN(order_date) AS first_order,
    MAX(order_date) AS most_recent_order,
    COUNT(order_id) AS number_of_orders
  FROM orders
  GROUP BY
    customer_id
), customer_payments AS (
  SELECT
    orders.customer_id,
    SUM(amount) AS total_amount
  FROM payments
  LEFT JOIN orders
    ON payments.order_id = orders.order_id
  GROUP BY
    orders.customer_id
), final AS (
  SELECT
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    customer_orders.first_order,
    customer_orders.most_recent_order,
    customer_orders.number_of_orders,
    customer_payments.total_amount AS customer_lifetime_value
  FROM customers
  LEFT JOIN customer_orders
    ON customers.customer_id = customer_orders.customer_id
  LEFT JOIN customer_payments
    ON customers.customer_id = customer_payments.customer_id
)
SELECT
  customer_id,
  first_name,
  last_name,
  first_order,
  most_recent_order,
  number_of_orders,
  customer_lifetime_value
FROM final
