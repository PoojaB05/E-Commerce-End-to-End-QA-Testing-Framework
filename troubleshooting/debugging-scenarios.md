# Troubleshooting / Debugging Scenarios

## Scenario 1: Unexpected API Success for Invalid Input

Issue:
API accepted negative quantity

Approach:
- Sent request using Postman
- Observed response in DevTools (Network tab)
- Compared expected vs actual behavior

Finding:
No validation applied on numeric fields

Learning:
Highlighted importance of input validation and negative testing
