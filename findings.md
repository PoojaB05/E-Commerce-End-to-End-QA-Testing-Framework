## Test Findings and Observations 

## 1. Cart product Quantity Validation.

- When quantity = 0 is sent in Add to Cart API,
  the system defaults it to 1 instead of returning an error.
  
- This behavior was observed in DummyJSON API.



## 2. Invalid Product ID in Cart

- Cart API allows adding invalid product IDs (e.g., 99999).

- This appears to be a limitation of the mock environment.
