use dynamo;
select * from products;


INSERT INTO departments
VALUES (1101, 'Accounting'),
	   (1102, 'Deliveries'),
       (1103, 'Human Resources');


select * from order_details;
TRUNCATE TABLE order_details;

INSERT INTO order_details
VALUES (1001, 212, 3, 5.97),
	   (1001, 222, 2, 5.98),
       (1003, 200, 3, 11.97),
       (1005, 202, 1, 2.99),
       (1005, 212, 2, 3.98),
       (1002, 224, 1, 4.99),
       (1003, 221, 3, 8.97),
       (1004, 204, 4, 7.96),
       (1001, 211, 1, 2.99);
       
INSERT INTO employee
VALUES (300, 'Sammy', 'Chandra', '212, beleke road, mumbai, india', 1102),
	   (301, 'Kyle', 'Robertson', '513, sunny road, iceland', 1102),
       (302, 'Ronnie', 'Bean', '10, igbogbo road, lagos, Nigeria', 1103),
       (303, 'Sandra', 'Wood', '12, avenue road, USA', 1102),
       (304, 'Sesame', 'Brown', '44, lamp street, UK', 1101),
       (305, 'Richard', 'Ajanlekoko', '23, Amadioha road, nnewi, Nigeria', 1102),
       (306, 'Keeanu', 'Meeves', '111, matrix road, california, USA', 1102),
       (307, 'Paul', 'Cycle', '113, salvatore road, los angeles, USA', 1101),
       (308, 'Ken', 'Ji', '12, Konoha road, Japan', 1103);
       
INSERT INTO products
VALUES (200, 'Sound of the times', 'A song to remember in all circumstances', 3.99, 'English', 'Country Song',
	    'Music record', 306),
	   (202, 'Life in chaos', 'A man finds himself in the middle of nowhere with no memories', 2.99, 'English',
        'Fiction', 'Movie', 301),
	   (204, 'Animals', 'A story of animals in the wild', 1.99, 'French', 'Non-fiction', 'Book', 305),
       (211, 'Seasons change', 'A song about the seasons of human life', 2.99, 'English', 'Jazz',
       'Music record', 303),
	   (212, 'Beautiful beast', 'A beautiful woman with bad character meets her match', 1.99, 'Spanish',
        'Fiction', 'Movie',300),
	   (221, 'Tale of Lee', 'A ghost tries to find the cause of his death', 2.99, 'French', 'Fiction',
        'Book', 305),
       (222, 'Run your race', 'A song telling young people to be focused and live their lives to the
        fullest', 2.99, 'English', 'Pop', 'Music record', 306),
       (224, 'The three', 'A story of the last three descendants of a great sorceress', 4.99, 'Spanish', 
        'Adventure', 'Movie', 301);
        
USE dynamo;

select distinct(product_id) from order_details;
select count(department_id) from employee
where department_id = 1102;

select * from customers;
select * from orders;
select * from order_details;

INSERT INTO customers
VALUES (511, 'Drake', 'Norman', '802-365-982', 'drakenorm@gmail.com', 24, 'Lake street', 'Athens', 10023,
		'Rome'),
	   (512, 'Kenny', 'Lynch', '556-123-067', 'kennly@hotmail.com', 15,  'Xiamei Rd','Han', 11054, 
        'China'),
       (513, 'Cindy', 'Altera', '663-452-882', 'cintera@hotmail.com', 55, 'Kanilo street', 'Rio', 12200, 
        'Brazil'),
	   (514, 'Sarah', 'Dane', '005-876-129', 'sarahdedane@ymail.com', 201, 'Wafer road', 'Mila', 22001,
        'Spain'),
	   (515, 'Kendrick', 'Ross', '023-876-554', 'kross@hotmail.com', 445, 'Sinister street', 'Mila',
        22001, 'Spain');
        
UPDATE customers
SET city = 'Mila', country = 'Spain', post_code = 22001
WHERE customer_id = 515;

INSERT INTO orders
VALUES  (1001, '2022-01-28', 'debit card', 'Shipped', 514), 
		(1002, '2022-01-30', 'mobile wallet', 'Processing', 515),
		(1003, '2022-02-02', 'credit card', 'Processing', 512),
		(1004, '2022-02-03', 'credit card', 'Cancelled', 513),
		(1005, '2022-02-07', 'debit card', 'Shipped', 511);
		

select * from order_details;

ALTER TABLE order_details
ADD price decimal(5,2);

select * from payments;

TRUNCATE TABLE payments;
INSERT INTO payments
VALUES ('HJKFF512', 512, '2022-02-02', 20.94),
	   ('WXYLL511', 511, '2022-02-07', 6.97),
       ('LAKYT515', 515, '2022-01-30', 4.99),
       ('ZMCFG513', 513, '2022-02-03', 7.96),
       ('SDERK514', 514, '2022-01-28', 14.94);
       
update orders
set payment_mode = 'mobile wallet'
where order_id = 1002;
select * from orders