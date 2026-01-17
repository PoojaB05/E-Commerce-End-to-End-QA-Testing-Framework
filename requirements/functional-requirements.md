# Functional Requirements:

FR-01: Product Display

  The system shall display a list of available products to users.
  Each product shall show correct name, price, and category.
  The system shall display detailed information when a product is selected.

FR-02: Product Search and Filtering

  The system shall return products matching the user’s search input.
  The system shall allow users to filter products by category.
  The system shall handle cases where no products are found.

FR-03: User Login Behavior

  The system shall allow users to log in using valid credentials.
  The system shall show an error message for invalid login attempts.
  The system shall restrict access to certain features for users who are not logged in.

FR-04: Shopping Cart Behavior

  The system shall allow users to add products to the shopping cart.
  The system shall allow users to update or remove products from the cart.
  The system shall update the cart total when items are added or removed.
  The system shall display current cart contents correctly.

FR-05: Checkout Process

  The system shall allow users to proceed to checkout if the cart contains items.
  The system shall prevent checkout if the cart is empty.
  The system shall display order confirmation after successful checkout.

FR-06: Data Consistency

  The system shall ensure product prices and quantities are consistent across the application.
  The system shall calculate totals correctly based on cart contents.

FR-07: Error Handling

  The system shall display appropriate messages for invalid actions.
  The system shall handle unexpected errors without crashing.
