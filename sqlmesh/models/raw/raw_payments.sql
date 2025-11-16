MODEL (
  name raw.raw_payments,
  kind SEED (
    path '../../seeds/raw_payments.csv',
    batch_size 1000
  ),
  depends_on (),
  columns (
    id INT,
    order_id INT,
    payment_method TEXT,
    quantity INT
  )
)
