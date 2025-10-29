CREATE TABLE items4scd (
  id INT,
  name STRING,
  category STRING,
  updatedate TIMESTAMP
);

INSERT INTO items4scd VALUES
  (1, 'Farhan', 'super_admin', current_timestamp()),
  (2, 'Khan', 'user', current_timestamp()),
  (4, 'Faraz', 'admin', current_timestamp());


SELECT * FROM dbt_tutorial_dev.gold.gold_items