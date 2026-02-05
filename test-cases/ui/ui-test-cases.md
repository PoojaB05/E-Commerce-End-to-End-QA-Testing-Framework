# UI Test Cases

# Authentication (Login)


TC-UI-01 (Positive)


Module: Authentication


Title:  Verify user can log in with valid credentials

Preconditions:
 User has valid login credentials

Steps:
1.	Open application
2.	Navigate to Login page
3.	Enter valid username and password
4.	Click Login

Expected Result:

User logs in successfully

User is redirected to home page

-------------------

TC-UI-02 (Negative)

Title: Verify system displays error message for invalid login credentials

Preconditions:

Application is accessible

Steps:
1.	Open Login page
2.	Enter invalid credentials
3.	Click Login

Expected Result:

Login fails

Proper error message is displayed















