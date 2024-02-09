#a
select * from customers;

SELECT 
    *
FROM
    customers
WHERE
    city = 'Mila';




#b
SELECT 
    *
FROM
    products
WHERE
    genre = 'Adventure';
    
#c

SELECT 
    COUNT(*)
FROM
    customers
WHERE
    city = 'Mila';
    
#d

SELECT 
    AVG(unit_price) AS Average_Unit_Price
FROM
    products;
    
#e

SELECT 
    *
FROM
    orders
WHERE
    status = 'Processing';


#f

SELECT 
    o.order_id, o.order_date, o.payment_mode, p.product_id, p.title, p.description
FROM
    orders o
        INNER JOIN
    order_details od ON o.order_id = od.order_id
        INNER JOIN
    products p ON od.product_id = p.product_id
WHERE
    p.description LIKE '%the%'
        AND p.product_type = 'Book';
    
select * from payments;

#g
WITH music_credit AS (select o.customer_id, o.payment_mode from products p
join order_details od on p.product_id = od.product_id
join orders o on od.order_id = o.order_id
where p.product_type = 'Music record' and o.payment_mode = 'credit card')

select * from music_credit mc
join payments p on mc.customer_id = p.customer_id;

#h
SELECT 
    COUNT(*)
FROM
    employee e
        JOIN
    products p ON e.employee_id = p.employee_id
WHERE
    p.product_type = 'Music record';
    
    
#i
SELECT 
    COUNT(*)
FROM
    employee
WHERE
    first_name LIKE 'S%';
    
    
#j
select count(*) from orders;


select * from products;


select o.customer_id, o.order_id, sum(od.price) from orders o join order_details od
on o.order_id = od.order_id
group by o.customer_id, order_id;

select * from payments;