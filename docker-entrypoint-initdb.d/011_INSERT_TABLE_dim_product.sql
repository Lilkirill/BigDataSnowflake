INSERT INTO dim_product (
    product_name, category, brand, material, description, pet_category,
    weight, color, size, price, release_date, expiry_date, rating, reviews
)
SELECT DISTINCT
    product_name,
    product_category,
    product_brand,
    product_material,
    product_description,
    pet_category,
    product_weight,
    product_color,
    product_size,
    product_price,
    TO_DATE(product_release_date, 'MM/DD/YYYY'),
    TO_DATE(product_expiry_date, 'MM/DD/YYYY'),
    product_rating,
    product_reviews
FROM mock_data_raw;
