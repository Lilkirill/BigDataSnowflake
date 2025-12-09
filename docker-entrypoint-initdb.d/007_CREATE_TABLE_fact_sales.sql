DROP TABLE IF EXISTS fact_sales;

CREATE TABLE fact_sales (
    fact_id SERIAL PRIMARY KEY,

    sale_date DATE,
    sale_quantity INT,
    sale_total_price NUMERIC(10,2),

    customer_id INT REFERENCES dim_customer(customer_id),
    seller_id INT REFERENCES dim_seller(seller_id),
    product_id INT REFERENCES dim_product(product_id),
    store_id INT REFERENCES dim_store(store_id),
    supplier_id INT REFERENCES dim_supplier(supplier_id)
);
