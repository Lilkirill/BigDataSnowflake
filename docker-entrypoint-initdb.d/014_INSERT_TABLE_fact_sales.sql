INSERT INTO fact_sales (
    sale_date,
    sale_quantity,
    sale_total_price,
    customer_id,
    seller_id,
    product_id,
    store_id,
    supplier_id
)
SELECT
    TO_DATE(r.sale_date, 'MM/DD/YYYY'),
    r.sale_quantity,
    r.sale_total_price,

    c.customer_id,
    s.seller_id,
    p.product_id,
    st.store_id,
    sp.supplier_id

FROM mock_data_raw r
JOIN dim_customer c ON
    c.first_name = r.customer_first_name
    AND c.last_name = r.customer_last_name
    AND c.email = r.customer_email

JOIN dim_seller s ON
    s.first_name = r.seller_first_name
    AND s.last_name = r.seller_last_name
    AND s.email = r.seller_email

JOIN dim_product p ON
    p.product_name = r.product_name
    AND p.price = r.product_price

JOIN dim_store st ON
    st.name = r.store_name
    AND st.phone = r.store_phone

JOIN dim_supplier sp ON
    sp.name = r.supplier_name
    AND sp.email = r.supplier_email;
