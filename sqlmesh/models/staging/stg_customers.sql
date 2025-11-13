MODEL (
  name staging.stg_customers,
  start '2025-01-01',
  depends_on (
    raw.raw_customers
  ),
  kind FULL,
  audits (
    UNIQUE_VALUES(columns = (
      customer_id
    )),
    NOT_NULL(columns = (
      customer_id
    ))
  )
);

WITH source AS (
  SELECT
    id AS customer_id,
    first_name,
    last_name
  FROM raw.raw_customers
)
SELECT
  customer_id,
  first_name,
  last_name
FROM source
