MODEL (
  name raw.raw_customers,
  kind SEED (
    path '../../seeds/raw_customers.csv',
    batch_size 1000
  ),
  depends_on (),
  columns (
    id INT,
    first_name TEXT,
    last_name TEXT
  )
)
