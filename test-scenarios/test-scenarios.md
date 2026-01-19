# Test Scenarios – E-Commerce Application

## SEARCH & FILTER SCENARIOS

**TS-SF-01**
**Title** Verify product search returns matching results
**Description** Verify the system displays products that match the user’s search input.

**TS-SF-02**
**Title** Verify product filtering by category
**Description** Verify the user can filter products by category and view only the filtered results.

**TS-SF-03**
**Title** Verify message displayed when no products match search criteria
**Description** Verify the system displays an appropriate message when no products are found for the search input.

## USER LOGIN SCENARIOS

**TS-LG-01**
**Title** Verify user login with valid credentials
**Description** Verify the user can successfully log in using valid credentials.

**TS-LG-02**
**Title** Verify error message for invalid login credentials
**Description** Verify the system displays an error message when invalid login credentials are used.

**TS-LG-03**
**Title** Verify access restriction for unauthenticated users
**Description** Verify certain features are restricted when the user is not logged in.

## SHOPPING CART SCENARIOS

**TS-CART-01**
**Title** Verify product can be added to shopping cart
**Description** Verify the user can add a product to the shopping cart.

**TS-CART-02**
**Title** Verify product quantity update and removal from cart
**Description** Verify the user can update product quantity or remove a product from the cart.

**TS-CART-03**
**Title** Verify correct cart total calculation
**Description** Verify the system displays the correct total amount for items in the shopping cart.

**TS-CART-04**
**Title** Verify cart displays current selected products
**Description** Verify the shopping cart displays all products currently added by the user.

## CHECKOUT SCENARIOS

**TS-CHK-01**
**Title** Verify user can proceed to checkout with items in cart
**Description** Verify the system allows checkout when the shopping cart contains items.

**TS-CHK-02**
**Title** Verify checkout is blocked when cart is empty
**Description** Verify the system prevents checkout when the shopping cart is empty.

**TS-CHK-03**
**Title** Verify order confirmation after successful checkout
**Description** Verify the system displays an order confirmation after a successful checkout.

## DATA CONSISTENCY SCENARIOS

**TS-DATA-01**
**Title** Verify product price and quantity consistency across application
**Description** Verify product prices and selected quantities remain consistent across product listing, cart, and checkout.

**TS-DATA-02**
**Title** Verify cart total matches individual product prices
**Description** Verify the total cart amount equals the sum of individual product prices and quantities.


## ERROR HANDLING SCENARIOS

**TS-ERR-01**
**Title** Verify error message for invalid user actions
**Description** Verify the system displays appropriate error messages for invalid user actions.

**TS-ERR-02**
**Title** Verify system stability during unexpected errors
**Description** Verify the system handles unexpected errors gracefully without crashing.


