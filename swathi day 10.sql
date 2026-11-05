CREATE TABLE lab_productsss (
    product_sku VARCHAR(50) PRIMARY KEY,
    product_serial_code VARCHAR(100) NOT NULL,
    wholesale_cost DECIMAL(10,2)
);

INSERT INTO lab_productsss
    (product_sku, product_serial_code, wholesale_cost)
VALUES
    ('SKU-100', 'SER-999-AAA', 45.00),
    ('SKU-200', 'SER-888-BBB', 120.50);
	select*from lab_productss;

CREATE INDEX idx_products_serial
ON lab_products(product_serial_code);

SHOW INDEX FROM lab_products;

SELECT *
FROM lab_productsss
WHERE product_serial_code = 'SER-888-BBB';