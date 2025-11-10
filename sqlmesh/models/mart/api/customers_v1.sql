/* This table has basic information about a customer, as well as some derived facts based on a customer's orders */
MODEL (
  name mart.customers_v1,
  kind VIEW,
);

SELECT
  customer_id,
  first_name,
  last_name,
  first_order,
  most_recent_order,
  number_of_orders,
  customer_lifetime_value
FROM mart.customers
