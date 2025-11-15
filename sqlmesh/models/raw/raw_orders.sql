MODEL (
  name raw.raw_orders,
  kind SEED (
    path '../../seeds/raw_orders.csv',
    batch_size 1000
  ),
  depends_on (),
  columns (
    id TEXT,
    user_id INT,
    order_date DATE,
    status TEXT
  )
)
