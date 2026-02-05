# API Test Cases

## Products API

**TC-API-01 (Positive)**

**Endpoint:** GET /products

**Title:** Verify API returns list of products.

**Steps:**

1.	Send GET request to /products

**Expected Result:**

 Status code is 200 OK.
 
 Response contains list of products.
 
 Each product has id, title, price.
 
----------------------------

**TC-API-02 (Positive)**

**Endpoint:** GET /products/{id}

**Title:** Verify API returns product details for valid product ID.

**Steps:**

1.	Send GET request with valid product ID.
   
**Expected Result:**

 Status code 200 OK.
 
 Correct product details returned.

--------------------

**TC-API-03 (Negative)**

**Title:** Verify API returns error for invalid product ID.

**Steps:**

1.	Send GET request with invalid product ID.

**Expected Result:**

 Status code 404 Not Found.
 
 Error message is returned.

 ---------------------------------
 
**TC-API-04 (Edge)**

**Title:** Verify API handles very large product ID value.

**Steps:**

1.	Send GET request with extremely large product ID.

**Expected Result:**

 API responds without error.
 
 No crash or server error.

---------------------------------------

## Search API

**TC-API-05 (Positive)**

**Endpoint:** GET /products/search?q=

**Title:** Verify search returns products matching query.

**Steps:**

1.	Send search request with valid keyword.

**Expected Result:**

 Status code 200 OK.
 Relevant products returned.
 
-----------------------------

**TC-API-06 (Negative)**

**Title:** Verify empty result when product not found.

**Steps:**

1.	Send search request with non-existing keyword.
   
**Expected Result:**

 Status code 200 OK.
 Empty product list returned.
 
----------------------------

**TC-API-07 (Edge)**

**Title:** Verify search with special characters.

**Steps:**

1.	Send search request with special characters.

**Expected Result:**

 API handles input properly.
 
 No server error.
 
-------------------

## Authentication API

**TC-API-08 (Positive)**

**Endpoint:** POST /auth/login

**Title:** Verify user login with valid credentials.

**Steps:**

1.	Send POST request with valid username & password.
   
**Expected Result:**

 Status code 200 OK.
 
 Token returned in response.

------------------------------

**TC-API-09 (Negative)**

**Title:** Verify error for invalid login credentials.

**Steps:**

1.	Send POST request with invalid credentials.

**Expected Result:**

Status code 401 Unauthorized.

Error message returned.

-------------------

**TC-API-10 (Edge)**

**Title:** Verify login request with empty request body.

**Steps:**

1.	Send POST request without credentials.
   
**Expected Result:**

 Login fails.
 
 Proper error response returned.

-----------------------

## Cart API

**TC-API-11 (Positive)**

**Endpoint:** POST /carts/add

**Title:** Verify product can be added to cart.

**Steps:**

1.	Send request with valid product ID and quantity.

**Expected Result:**

 Status code 200 OK.
 
 Product added to cart.

-----------------------------------

**TC-API-12 (Negative)**

**Title:** Verify cart API rejects invalid product ID.

**Steps:**

1.	Add product with invalid product ID.

**Expected Result:**
 
 API returns error response.
 
---------------------------------

**TC-API-13 (Edge)**

**Title:** Verify cart API handles zero quantity.

**Steps:**

1.	Add product with quantity = 0.

**Expected Result:**

 Product is not added.

 Validation error returned.
 
------------------------

## Data Consistency API

**TC-API-14 (Positive)**

**Title:** Verify product price matches UI/cart data.

**Steps:**

1.	Fetch product price from /products.
2.	Compare with cart response.
   
**Expected Result:**

 Prices are consistent.

--------------------

**TC-API-15 (Edge)**

**Title:** Verify API response time is acceptable.

**Steps:**

1.	Send product list request.
   
**Expected Result:**

 Response time within acceptable limit (e.g. <2 sec).

---------------------------------









