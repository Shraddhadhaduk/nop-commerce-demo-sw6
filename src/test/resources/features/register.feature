@regression
Feature:NopCommerce demo Register Test
  As a user,I am able to Register successfully


@author_shraddha @smoke  @regression
Scenario: Verify User Should Navigate To Register Page Successfully
Given     I am on home page
When      I Click on Register Link
Then      I Verify "Register" text

@author_shraddha @sanity
Scenario Outline: Verify That FirstName LastName EmailPassword And ConfirmPassword Fields Are Mandatory
Given     I am on home page
When      I Click on Register Link
And       Click on "REGISTER" button
Then      Verify the error message "<errormessage>"
  Examples:  | errorMessage |
  |First name is required.|
  |Last name is required. |
  |Email is required.     |
  |Password is required.  |
  |Password is required.  |

@author_shraddha @regression
Scenario: Verify That User Should Create Account Successfully
Given     I am on Home Page
When      I Click on Register Link
And       Select gender "Female"
And       Enter firstname "Shraddha"
And       Enter lastname "Malaviya"
And       Select day "11"
And       Select month "10"
And       Select year "1996"
And       Enter email "KA123@gmail.com"
And       Enter password "KA123"
And       Enter Confirm Password "KA123"
And       Click on "REGISTER" button
Then      Verify message "Your registration completed"