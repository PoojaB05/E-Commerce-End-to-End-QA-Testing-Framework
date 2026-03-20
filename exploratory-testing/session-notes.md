
# Exploratory Testing Session Notes

## Objective
To explore API behavior beyond predefined test cases and identify edge cases or unexpected responses.

---

## Area Tested
Products API (DummyJSON)

---

## Approach
- Tested APIs without predefined test steps
- Focused on invalid inputs, edge cases, and unexpected usage
- Used Postman to modify request payloads

---

## Scenarios Explored

1. Sent negative values in numeric fields
2. Sent empty request body
3. Sent incorrect data types (string instead of number)
4. Removed required fields from request
5. Tested large input values

---

## Observations / Findings

- API accepts negative values without validation
- Missing error messages for invalid inputs
- Inconsistent response structure in some cases

---

## Risks Identified

- Lack of input validation may lead to incorrect data processing
- Poor error handling can affect user experience

---

## Outcome

Exploratory testing helped identify gaps not covered in functional test cases and improved overall test coverage.
