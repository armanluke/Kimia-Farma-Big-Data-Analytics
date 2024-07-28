CREATE TABLE kimia_farma.tabel_analisa AS
SELECT 
    a.transaction_id, 
    a.date, 
    b.branch_id, 
    b.branch_name, 
    b.kota, 
    b.provinsi, 
    b.rating AS rating_cabang, 
    a.customer_name, 
    c.product_id, 
    c.product_name, 
    c.price AS actual_price, 
    a.discount_percentage, 
    CASE 
        WHEN c.price <= 50000 THEN 10
        WHEN c.price > 50000 AND c.price <= 100000 THEN 15
        WHEN c.price > 100000 AND c.price <= 300000 THEN 20
        WHEN c.price > 300000 AND c.price <= 500000 THEN 25
        ELSE 30
    END AS persentase_gross_laba,
    CAST(c.price * (1 - a.discount_percentage / 100) AS INT) AS nett_sales,
    CAST((c.price * (1 - a.discount_percentage / 100)) * 
        (CASE 
            WHEN c.price <= 50000 THEN 10 / 100
            WHEN c.price > 50000 AND c.price <= 100000 THEN 15 / 100
            WHEN c.price > 100000 AND c.price <= 300000 THEN 20 / 100
            WHEN c.price > 300000 AND c.price <= 500000 THEN 25 / 100
            ELSE 30 / 100
        END) AS INT) AS nett_profit,
    a.rating AS rating_transaksi
FROM 
    kimia_farma.kf_final_transaction AS a
JOIN 
    kimia_farma.kf_kantor_cabang AS b
ON 
    a.branch_id = b.branch_id
JOIN 
    kimia_farma.kf_product AS c
ON 
    a.product_id = c.product_id;
