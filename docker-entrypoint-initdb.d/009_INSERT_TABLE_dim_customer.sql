INSERT INTO dim_customer (
    first_name, last_name, age, email, country, postal_code,
    pet_type, pet_name, pet_breed
)
SELECT DISTINCT
    customer_first_name,
    customer_last_name,
    customer_age,
    customer_email,
    customer_country,
    customer_postal_code,
    customer_pet_type,
    customer_pet_name,
    customer_pet_breed
FROM mock_data_raw;
