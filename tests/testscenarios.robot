*** Settings ***
Resource  ../../goreactwebapp/config/variables.robot
Resource  ../../goreactwebapp/config/keywords.robot

Library  String

Test Setup  Open Chrome Browser  ${goreactURL}  ${chromedriver89_path}
Test Teardown  Run Keywords  Close Browser

*** Test Cases ***

# ---------------------- Positive Scenarios ---------------------- #

GoReact Login Page - Logging In an Account
    [Tags]  login  posScenario  posScenario1
    Logging In an Account

GoReact Login Page - Creation of an Instruction Account
    [Tags]  login  posScenario  posScenario2
    Creating an Instructor Account

GoReact Login Page - Creation of a Student Account
    [Tags]  login  posScenario  posScenario3
    Creating a Student Account

GoReact Login Page - Forgot Password
    [Tags]  login  posScenario  posScenario4
    Steps in resetting your password

GoReact Login Page - Cancel Creation of Account by Clicking Log In button in Account Type Selection
    [Tags]  login  posScenario  posScenario5
    Cancel Creation of Account by Clicking Log In button in Account Type Selection

GoReact Login Page - Clicking Cancel button in Create Instructor Account page
    [Tags]  login  posScenario  posScenario6
    Clicking Cancel button in Create Instructor Account page

GoReact Login Page - Cancel Creation of a Student Account
    [Tags]  login  posScenario  posScenario7
    Clicking Cancel button in Create Student Account page




# ---------------------- Negative Scenarios ---------------------- #
#--------- LOGIN PAGE ---------#
GoReact Login Page - Clicking LOG IN button without inputting in Email and Password text field
    [Tags]  login  negScenario  negScenario1
    Clicking Login button with empty Username and Password field

GoReact Login Page - Clicking LOG IN button with inputting valid value in Email but missing Password text field
    [Tags]  login  negScenario  negScenario2
    Clicking Login button with valid Email but without Password

GoReact Login Page - Inputting Invalid Email Format in Email text field
    [Tags]  login  negScenario  negScenario3
    Inputting Invalid Email Format in Email text field

GoReact Login Page - Inputting Unregistered Email and Password value
    [Tags]  login  negScenario  negScenario4
    Inputting Incorrect Email and Password value

#--------- ACCOUNT CREATION PAGE ---------#
GoReact Instructor Creation Account - Clicking Continue button without inputting any value
    [Tags]  login  negScenario  negScenario5
    Proceed to the Create Instructor Account page
    Clicking Continue button without inputting any value

GoReact Instructor Creation Account - Inputting Alpha Numeric Phone Number
    [Tags]  login  negScenario  negScenario6
    Proceed to the Create Instructor Account page
    Inputting Alpha Numeric Phone Number

GoReact Instructor Creation Account - Inputting Invalid Email in Creation Acct Page
    [Tags]  login  negScenario  negScenario7
    Proceed to the Create Instructor Account page
    Inputting Invalid Email in Creation Acct Page

GoReact Instructor Creation Account - Inputting Invalid Password in Creation Acct Page
    [Tags]  login  negScenario  negScenario8
    Proceed to the Create Instructor Account page
    Inputting Invalid Password in Creation Acct Page

GoReact Instructor Creation Account - Inputting a value in Confirm Password that is not the same value with Password
    [Tags]  login  negScenario  negScenario9
    Proceed to the Create Instructor Account page
    Inputting a value in Confirm Password that is not the same value with Password

GoReact Instructor Creation Account - Clicking Continue button without checking the checkbox of Terms
    [Tags]  login  negScenario  negScenario10
    Proceed to the Create Instructor Account page
    Clicking Continue button without checking the checkbox of Terms



# ---------------------- Ramdom Scenario ---------------------- #


