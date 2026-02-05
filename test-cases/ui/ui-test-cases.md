# UI Test Cases

# Authentication (Login)

**TC-UI-01 (Positive)**

**Module:** Authentication

**Title:**  Verify user can log in with valid credentials.

**Preconditions:**

User has valid login credentials.

**Steps:**

1.	Open application.
2.	Navigate to Login page.
3.	Enter valid username and password.
4.	Click Login.

**Expected Result:**

User logs in successfully.

User is redirected to home page.

-------------------

**TC-UI-02 (Negative)**

**Title:** Verify system displays error message for invalid login credentials.

**Preconditions:**

Application is accessible.

**Steps:**

1.	Open Login page.
2.	Enter invalid credentials.
3.	Click Login.

**Expected Result:**

Login fails.

Proper error message is displayed.

--------------

**TC-UI-03 (Edge)**

**Title:** Verify login attempt with empty username and password.

**Preconditions:**

Application is accessible.

**Steps:**

1.	Open Login page.
2.	Leave username and password empty.
3.	Click Login.
   
**Expected Result:**

 Login is not allowed.

 Validation message is displayed.

-------------

# Product Listing & Search

**TC-UI-04 (Positive)**

**Module:** Product Listing.

**Title:** Verify product list is displayed on home page.

**Steps:**

1.	Open application.

**Expected Result:**
 Product list is displayed with name and price.

------------------------
**TC-UI-05 (Positive)**

**Module:** Search.

**Title:** Verify search returns products matching user input.

**Steps:**
1.	Enter valid product name in search bar.
2.	Submit search.
   
**Expected Result:**

Relevant products are displayed.

----------------------------

**TC-UI-06 (Negative)**

**Title:** Verify proper message is shown when searched product does not exist.

**Steps:**
1.	Search for a non-existing product.
   
**Expected Result:**

 “No products found” message is displayed.

------------------------

**TC-UI-07 (Edge)**

**Title:** Verify search with special characters.

**Steps:**

1.	Enter special characters in search bar.
2.	Submit search.
   
**Expected Result:**

 Application handles input without errors.

 No crash occurs.

---------------------------

# Shopping Cart

**TC-UI-08 (Positive)**

**Module:** Cart.

**Title:** Verify user can add product to cart.

**Steps:**

1.	Select a product.
2.	Click “Add to Cart”.

**Expected Result:**

Product is added to cart.

---------------------------

**TC-UI-09 (Positive)**

**Title:** Verify user can update product quantity in cart.

**Preconditions:**
Product exists in cart.

**Steps:**

1.	Open cart.
2.	Update product quantity.
   
**Expected Result:**

Quantity updates correctly.

Cart total is recalculated.

-----------------------------------

**TC-UI-10 (Negative)**

**Title:** Verify user cannot set negative quantity in cart.

**Steps:**

1.	Open cart.
2.	Attempt to set quantity to negative value.

**Expected Result:**

 System prevents invalid quantity.
 
 Error or validation message is shown.

--------------------

**TC-UI-11 (Edge)**

**Title:** Verify cart behavior when same product is added multiple times.

**Steps:**

1.	Add same product multiple times.

**Expected Result:**
 
 Quantity increments correctly.
 
 No duplicate cart entries.

---------------

# Checkout

**TC-UI-12 (Positive)**

**Module:** Checkout.

**Title:** Verify user can proceed to checkout with items in cart.

**Preconditions:**

 User is logged in.
 
 Cart has items.

**Steps:**

1.	Open cart.
2.	Click Checkout.
   
**Expected Result:**

User proceeds to checkout.

-----------------------------

**TC-UI-13 (Negative)**

**Title:** Verify checkout is blocked when cart is empty.

**Steps:**

1.	Attempt checkout with empty cart.

**Expected Result:**

 Checkout is not allowed.
 
 Proper message is displayed.
 
-----------------------------

**TC-UI-14 (Edge)**

**Title:** Verify user redirected to login when attempting checkout without login.

**Steps:**

1.	Add item to cart.
2.	Attempt checkout without logging in.

**Expected Result:**
 
 User is redirected to login page.

 -----------------------------------------
# Data Consistency & Error Handling

**TC-UI-15 (Positive)**

**Module:** Data Consistency.

**Title:** Verify product price is consistent across pages.

**Steps:**

1.	Note product price on listing page.
2.	Verify price in cart.
   
**Expected Result:**

Price matches across pages.

-----------------------------------------

**TC-UI-16 (Edge)**

**Module:** Error Handling.

**Title:** Verify application does not crash on unexpected user actions.

**Steps:**

1.	Perform invalid or rapid actions (refresh, multiple clicks).

**Expected Result:**

Application remains stable.

--------------------------------------------


















