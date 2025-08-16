-- procedure
DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN cust_id INT)
BEGIN
    IF EXISTS (SELECT 1 FROM customer WHERE customerid = cust_id) THEN
        SELECT c.CustomerName, c.city, o.product
        FROM customer c
        JOIN orders o ON c.customerid = o.customerid
        WHERE c.customerid = cust_id;
    ELSE
        SELECT 'Customer not found' AS message;
    END IF;
END //

DELIMITER ;

call GetCustomerOrders(1);

-- function

DELIMITER //

DELIMITER //

CREATE FUNCTION CountCustomerOrders(cust_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    -- Count orders for the given customer
    SELECT COUNT(*) INTO total
    FROM orders
    WHERE customerid = cust_id;

    RETURN total;
END //

DELIMITER ;

SELECT CountCustomerOrders(1);