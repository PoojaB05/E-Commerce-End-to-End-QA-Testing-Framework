# SQL Validation Test Cases

Purpose of SQL testing in this project:
Validate backend data consistency for UI & API actions using read-only SQL (SELECT) queries.


-----------------------

## USER / AUTHENTICATION MODULE

**TC-SQL-01 (Positive)**

**Title:** Verify user record exists after successful login.

**Trigger:** User logs in successfully (UI/API).

**Query:**

SELECT * FROM users WHERE user_id = <user_id>;

**Expected Result:**

 User record exists.

 User status is active.
 
------------------------

**TC-SQL-02 (Negative)**

**Title:** Verify no user session created for invalid login.

**Trigger:** Login attempt with invalid credentials.

**Query:**

SELECT * FROM user_sessions WHERE user_id = <user_id>;

**Expected Result:**

 No session record created.
 
---------------

## PRODUCT MODULE

**TC-SQL-03 (Positive)**

**Title:** Verify product data exists in database.

**Trigger:** User views product list.

**Query:**

SELECT * FROM products WHERE product_id = <product_id>;

**Expected Result:**

 Product record exists.
 
 Price and stock are valid.

 -------------------------
 
**TC-SQL-04 (Edge)**

**Title:** Verify product price is not negative.

**Query:**

SELECT price FROM products WHERE product_id = <product_id>;

**Expected Result:**

 Price ≥ 0
 
-----------------

## CART MODULE

**TC-SQL-05 (Positive)**

**Title:** Verify cart record created when product added.

**Trigger:** User adds product to cart.

**Query:**

SELECT * FROM cart_items WHERE user_id = <user_id>;

**Expected Result:**

 Cart record exists.
 
 Correct product_id and quantity.
 
---------------------------------

**TC-SQL-06 (Edge)**

**Title:** Verify cart quantity is greater than zero.

**Query:**

SELECT quantity FROM cart_items WHERE user_id = <user_id>;

**Expected Result:**

Quantity > 0

-----------------------------

**TC-SQL-07 (Negative)**

**Title:** Verify cart record not created for invalid product.

**Trigger:** Add invalid product ID.

**Query:**

SELECT * FROM cart_items WHERE product_id = <invalid_product_id>;

**Expected Result:**

 No record found.

 -----------------------
 
## CHECKOUT / ORDER MODULE

**TC-SQL-08 (Positive)**

**Title:**  Verify order record created after successful checkout.

**Trigger:**  Successful checkout.

**Query:**

SELECT * FROM orders WHERE user_id = <user_id>;

**Expected Result:**

 Order record exists.
 
 Order status is confirmed.

 -----------------------
 
**TC-SQL-09 (Edge)**

**Title:**  Verify order total equals sum of cart items.

**Query:**

SELECT total_amount FROM orders WHERE order_id = <order_id>;

**Expected Result:**

 Total amount is correct.
 
-------------------------------

**TC-SQL-10 (Edge)**

**Title:**  Verify order total is not NULL or negative.

**Query:**

SELECT total_amount FROM orders WHERE order_id = <order_id>;

**Expected Result:**

 Total amount is NOT NULL.
 
 Total amount ≥ 0

------------------------

**TC-SQL-11 (Negative)**

**Title:**  Verify order not created when checkout fails.

**Trigger:**  Checkout failure (empty cart / unauthorized user).

**Query:**

SELECT * FROM orders WHERE user_id = <user_id>;

**Expected Result:**

 No new order record created.

 --------------------------
 
## DATA CONSISTENCY MODULE

**TC-SQL-12 (Positive)**

**Title:**  Verify product price consistency across tables.

**Query:**

SELECT p.price, c.price
FROM products p, cart_items c
WHERE p.product_id = c.product_id;

**Expected Result:**

 Product price matches cart price.

 -------------------------------
 
**TC-SQL-13 (Edge)**

**Title:**  Verify no orphan cart records exist.

**Query:**

SELECT * FROM cart_items WHERE user_id IS NULL;

**Expected Result:**

 No orphan records.

---------------------------






