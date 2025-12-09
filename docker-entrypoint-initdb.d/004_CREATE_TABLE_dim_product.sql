DROP TABLE IF EXISTS dim_product;

CREATE TABLE dim_product (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    brand TEXT,
    material TEXT,
    description TEXT,
    pet_category TEXT,
    weight NUMERIC(10,2),
    color TEXT,
    size TEXT,
    price NUMERIC(10,2),
    release_date DATE,
    expiry_date DATE,
    rating NUMERIC(4,2),
    reviews INT
);
