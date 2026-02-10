
Feature: Shopping Cart

  Scenario: Add product to cart
    Given the user is logged in
    When the user adds a product to the cart
    Then the product should appear in the cart

  Scenario: Add product with zero quantity
    Given the user is logged in
    When the user adds a product with quantity zero
    Then the system should handle the input gracefully
