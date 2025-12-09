INSERT INTO dim_supplier (
    name, contact, email, phone, address, city, country
)
SELECT DISTINCT
    supplier_name,
    supplier_contact,
    supplier_email,
    supplier_phone,
    supplier_address,
    supplier_city,
    supplier_country
FROM mock_data_raw;
