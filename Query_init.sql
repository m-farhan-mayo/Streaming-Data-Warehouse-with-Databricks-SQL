CREATE TABLE products(
  product_id INT,
  product_name STRING,
  price DECIMAL(5,2),
  category STRING
);

INSERT INTO products VALUES
  (1, 'Laptop', 999.99, 'Electronics'),
  (2, 'Smartphone', 699.99, 'Electronics'),
  (3, 'Desk Chair', 149.99, 'Furniture'),
  (4, 'Coffee Maker', 89.99, 'Appliances'),
  (5, 'Headphones', 199.99, 'Electronics'),
  (6, 'Notebook', 2.99, 'Stationery'),
  (7, 'Pen', 1.49, 'Stationery'),
  (8, 'Backpack', 49.99, 'Accessories'),
  (9, 'Water Bottle', 15.99, 'Accessories'),
  (10, 'Desk Lamp', 29.99, 'Furniture');


SELECT :col1 , :col2 
FROM IDENTIFIER(:catalog || '.' || :schema || '.' || :table)
WHERE Identifier(:col_product_id) = :product_id AND price > :price