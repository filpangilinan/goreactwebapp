*** Settings ***
Resource  ../../goreactwebapp/config/variables.robot
Resource  ../../goreactwebapp/common-actions/selenium-actions.robot

#---------- LOGICAL KEYWORDS ----------#
# ---------------------- Negative Scenarios ---------------------- #
*** Keywords ***
Clicking Login button with empty Username and Password field
    Wait Until Page Contains Element  ${btnLogin}  20
    Wait then Click  ${btnLogin}  20
    ${text}=  Get Text  ${lblMissingEmail}
    Log to console  ----------------------------------
    Log to console  System should display an error message for both Email and Password text field:
    Log to console  ${text}
    Log to console  ----------------------------------
    ${text}=  Get Text  ${lblMissingPwd}
    Log to console  ${text}
    Sleep  5

Clicking Login button with valid Email but without Password
    Wait Until Page Contains Element  ${btnLogin}  20
    Wait Until Page Contains Element  ${txtEmail}  20
    Input Text  ${txtEmail}  ${validEmail}
    Wait then Click  ${btnLogin}  20
    ${text}=  Get Text  ${lblMissingPwd}
    Log to console  ----------------------------------
    Log to console  System should display an error message for Password text field:
    Log to console  ${text}
    Log to console  ----------------------------------
    Sleep  5

Inputting Invalid Email Format in Email text field
    Wait Until Page Contains Element  ${txtEmail}  20
    Input Text  ${txtEmail}  ${IncEmailFormat}
    ${text}=  Get Text  ${lblIncEmailFormat}
    Log to console  ----------------------------------
    Log to console  System should display an error message for Email text field:
    Log to console  ${text}
    Log to console  ----------------------------------
    Sleep  5

Inputting Incorrect Email and Password value
    Wait Until Page Contains Element  ${btnLogin}  20
    Wait Until Page Contains Element  ${txtEmail}  20
    Input Text  ${txtEmail}  ${UnregEmail}
    Wait Until Page Contains Element  ${txtPassword}  20
    Input Text  ${txtPassword}  ${IncPwd}
    Click Element  ${btnLogin}
    ${text}=  Get Text  ${lblInvalidData}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  ${text}
    Log to console  ----------------------------------
    Sleep  5

Proceed to the Create Instructor Account page
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait Until Page Contains Element  ${btnInstructor}  20
    Click Element  ${btnInstructor}

Clicking Continue button without inputting any value
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    Scroll Element Into View  ${btnContinue}
    Wait Until Page Contains Element  ${btnContinue}  20
    Double Click Element  ${btnContinue}
    FOR  ${ctr}  IN RANGE  10
        Click Element  ${btnContinue}
        ${status}=  Run Keyword and Return Status  Wait Until Element is Visible  ${lblMissingLastName}  5
        Exit For Loop If  '${status}'=='True'
    END
    Wait Until Page Contains Element  ${lblMissingFirstName}  5
    ${text1}=  Get Text  ${lblMissingFirstName}
    Wait Until Page Contains Element  ${lblMissingLastName}  5
    ${text2}=  Get Text  ${lblMissingLastName}
    Wait Until Page Contains Element  ${lblMissingEmail2}  5
    ${text3}=  Get Text  ${lblMissingEmail2}
    ${text4}=  Get Text  ${lblMissingPwd2}
    Wait Until Page Contains Element  ${lblNotMatchedPwd}  5
    ${text5}=  Get Text  ${lblNotMatchedPwd}
    Wait Until Page Contains Element  ${lblMissingTerms}  5
    ${text6}=  Get Text  ${lblMissingTerms}
    Log to console  ----------------------------------
    Log to console  System should display the ff error messages:
    Log to console  ${text1}
    Log to console  ${text2}
    Log to console  ${text3}
    Log to console  ${text4}
    Log to console  ${text5}
    Log to console  ${text6}
    Log to console  ----------------------------------
    Sleep  5

Inputting Alpha Numeric Phone Number
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    Input Text  ${txtPhoneNo}  ${InvalidPhoneNo}
    Log to console  ----------------------------------
    Log to console  Phone Number should be numeric only.
    Log to console  ----------------------------------

Inputting Invalid Email in Creation Acct Page
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    Input Text  ${txtPhoneNo}  ${samplePhoneNo}
    Input Text  ${txtEmail}  ${emailAdd}
    Press Keys  None  \ue007
    Wait Until Page Contains Element  ${lblInvEmail}  20
    ${text}=  Get Text  ${lblInvEmail}
    Log to console  ----------------------------------
    Log to console   ${text}
    Log to console  ----------------------------------
    Sleep  5

Inputting Invalid Password in Creation Acct Page
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    Input Text  ${txtPhoneNo}  ${samplePhoneNo}
    ${suffix}=  Generate Random String  3  [NUMBERS]
    Input Text  ${txtEmail}  ${emailAdd}${suffix}${dotCom}
    Scroll Element Into View  ${txtPwd}
    Input Text  ${txtPwd}  ${IncPwd}
    Press Keys  None  \ue007
    Wait Until Page Contains Element  ${lblIncPwdFormat}  20
    ${text}=  Get Text  ${lblIncPwdFormat}
    Log to console  ----------------------------------
    Log to console   ${text}
    Log to console  ----------------------------------
    Sleep  5

Inputting a value in Confirm Password that is not the same value with Password
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    Input Text  ${txtPhoneNo}  ${samplePhoneNo}
    ${suffix}=  Generate Random String  3  [NUMBERS]
    Input Text  ${txtEmail}  ${emailAdd}${suffix}${dotCom}
    Scroll Element Into View  ${txtPwd}
    ${suffix}=  Generate Random String  6  [NUMBERS]
    Input Text  ${txtPwd}  ${basePwd}${suffix}
    Wait Until Page Contains Element  ${txtConfirmPwd}  20
    Input Text  ${txtConfirmPwd}  ${IncPwd}
    Press Keys  None  \ue007
    Wait Until Page Contains Element  ${lblMissingConfirmPwd}  20
    ${text}=  Get Text  ${lblMissingConfirmPwd}
    Log to console  ----------------------------------
    Log to console   ${text}
    Log to console  ----------------------------------
    Sleep  5

Clicking Continue button without checking the checkbox of Terms
    Wait Until Page Contains Element  ${lblAcctCreation}  20
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    Input Text  ${txtPhoneNo}  ${samplePhoneNo}
    ${suffix}=  Generate Random String  3  [NUMBERS]
    Input Text  ${txtEmail}  ${emailAdd}${suffix}${dotCom}
    Scroll Element Into View  ${txtPwd}
    ${suffix}=  Generate Random String  6  [NUMBERS]
    Input Text  ${txtPwd}  ${basePwd}${suffix}
    Scroll Element Into View  ${txtConfirmPwd}
    Input Text  ${txtConfirmPwd}  ${basePwd}${suffix}
    Scroll Element Into View  ${btnContinue}
    Click Element  ${btnContinue}
    Wait Until Page Contains Element  ${lblMissingTerms}  20
    ${text}=  Get Text  ${lblMissingTerms}
    Log to console  ----------------------------------
    Log to console   ${text}
    Log to console  ----------------------------------
    Sleep  5


# ---------------------- Positive Scenarios ---------------------- #

Logging In an Account
    Wait Until Page Contains Element  ${btnLogin}  20
    Wait Until Page Contains Element  ${txtEmail}  20
    Input Text  ${txtEmail}  ${validEmail}
    Wait Until Page Contains Element  ${txtPassword}  20
    Input Text  ${txtPassword}  ${validPwd}
    Click Element  ${btnLogin}
    Sleep  5

Creating an Instructor Account
    #---- Clicking Create Account to proceed in creating an instructor account  ----#
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait then Click  ${btnInstructor}  20
    #---- Fill up the details all required fields  ----#
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    Input Text  ${txtPhoneNo}  ${samplePhoneNo}
    ${suffix}=  Generate Random String  3  [NUMBERS]
    Input Text  ${txtEmail}  ${emailAdd}${suffix}${dotCom}
    ${suffix}=  Generate Random String  6  [NUMBERS]
    Input Text  ${txtPwd}  ${basePwd}${suffix}
    Input Text  ${txtConfirmPwd}  ${basePwd}${suffix}
    Scroll Element Into View  ${chkTerms}
    Wait then Click  ${chkTerms}  20
    Scroll Element Into View  ${btnContinue}
    Wait then Click  ${btnContinue}  20
    #---- Fill up the Account Setup  ----#
    Wait Until Page Contains Element  ${lblAcctSetup}  20
    Click Element  ${ddlUsingReactAs}
    Wait then Click  ${lstGoReactAs}  20
    Wait Until Page Contains Element  ${txtOrgName}  20
    Input Text  ${txtOrgName}  ${inputOrgName}
    Wait then Click  ${lstOrgName}  20
    Click Element  ${ddlYourRole}
    Wait then Click  ${lstYourRole}  20
    Sleep  10
    ${count}=  Get Element Count  //span[text()='Select one...']
    log to console  ${count}
    Sleep  20
#    Wait Until Page Contains Element  ${ddlCourseFormat}  20
#    Click Element  ${ddlCourseFormat}
#    Wait then Click  //span[text()='Teacher Preparation']  20
    Wait Until Page Contains Element  //span[text()='Select one...']  20
    Click Element  //span[text()='Select one...']
    Wait then Click  ${lstCourseFormat}  20
    Click Element  ${btnContinue}
    #---- Fill up the Account Setup  ----#
    Wait Until Page Contains Element  ${lblWelcomeMsg}  20
    ${text}=  Get Text  ${lblWelcomeMsg}
    Log to console  ----------------------------------
    Log to console   ${text}
    Log to console  ----------------------------------

Creating a Student Account
    Sleep  5
    Close Browser
    Open Chrome Browser  ${goreactURLforStudents2}  ${chromedriver89_path}
    #---- Clicking Create Account to proceed in creating a student account  ----#
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait Until Page Contains Element  ${btnCourseContinue}  20
    Click Element  ${btnCourseContinue}
    #---- Fill up the details all required fields  ----#
    ${suffix}=  Generate Random String  2  [NUMBERS]
    Input Text  ${txtFirstName}  ${sampleName}${suffix}
    Input Text  ${txtLastName}  ${sampleLastName}
    ${suffix}=  Generate Random String  3  [NUMBERS]
    Input Text  ${txtEmail}  ${emailAdd}${suffix}${dotCom}
    ${suffix}=  Generate Random String  6  [NUMBERS]
    Input Text  ${txtPwd}  ${basePwd}${suffix}
    Input Text  ${txtConfirmPwd}  ${basePwd}${suffix}
    Scroll Element Into View  ${chkTerms}
    Sleep  5
    Wait then Click  //input[@type='checkbox']  20
    Sleep  5
    Wait Until Element is Enabled  ${btnContinue}  20
    Wait then Click  ${btnContinue}  20
    #---- Fill up the Account Setup  ----#
    Wait Until Element is Visible  //h4[text()='Updated User Terms and Privacy Policy']  100
    Wait Until Page Contains Element  //input[@type='checkbox']  20
    Click Element  //input[@type='checkbox']
    Click Element  ${btnTermsContinue}
    Wait Until Page Contains Element  (//div[text()='Sample Test Course'])[2]  20
    ${text}=  Get Text  (//div[text()='Sample Test Course'])[2]
    Log to console  ----------------------------------
    Log to console   ${text} is displayed
    Log to console  ----------------------------------
    Sleep  5

Steps in resetting your password
    Wait Until Page Contains Element  ${lnkForgotPwd}  20
    Click Element  ${lnkForgotPwd}
    Input Text  ${txtResetEmail}  ${validEmail}
    Wait Until Element is Enabled  ${btnSend}  20
    Click Element  ${btnSend}
    Wait Until Page Contains Element  ${lblPwdReset}  20
    ${text}=  Get Text  ${lblPwdReset}
    Log to console  ----------------------------------
    Log to console   ${text} is displayed
    Log to console  ----------------------------------
    Sleep  5
    Wait Until Element is Enabled  ${btnClose}  20
    Click Element  ${btnClose}
    Sleep  5

Cancel Creation of Account by Clicking Log In button in Account Type Selection
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait then Click  ${btnLogin2}  20
    Wait Until Page Contains Element  ${imgGoReact1}  20
    ${text}=  Get Text  ${imgGoReact1}
    Log to console  ----------------------------------
    Log to console   ${text} is displayed
    Log to console  ----------------------------------
    Sleep  5

Clicking Cancel button in Create Instructor Account page
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait then Click  ${btnInstructor}  20
    Scroll Element Into View  ${btnCancel}
    Wait then Click  ${btnCancel}  20
    Wait then Click  ${btnLogin2}  20
    Wait Until Page Contains Element  ${imgGoReact1}  20
    ${text}=  Get Text  ${imgGoReact1}
    Log to console  ----------------------------------
    Log to console   ${text} is displayed
    Log to console  ----------------------------------
    Sleep  5

Clicking Cancel button in Create Student Account page
    Sleep  5
    Close Browser
    Open Chrome Browser  ${goreactURLforStudents2}  ${chromedriver89_path}
    #---- Clicking Create Account to proceed in creating a student account  ----#
    Wait Until Page Contains Element  ${btnCreateAcct}  20
    Click Element  ${btnCreateAcct}
    Wait Until Page Contains Element  ${btnCourseContinue}  20
    Click Element  ${btnCourseContinue}
    Scroll Element Into View  ${btnCancel}
    Wait then Click  ${btnCancel}  20
    Wait Until Page Contains Element  ${imgGoReact1}  20
    ${text}=  Get Text  ${imgGoReact1}
    Log to console  ----------------------------------
    Log to console   ${text} is displayed
    Log to console  ----------------------------------
    Sleep  5

# ---------------------- Generate Random Numbers Scenarios ---------------------- #

Generate Random Number for Password
    [Tags]  random
    ${suffix}=    Generate Random String  6  [NUMBERS]
    log to console  ${suffix}

Generate Random Number for Username
    [Tags]  random
    ${suffix}=    Generate Random String  2  [NUMBERS]
    log to console  ${suffix}

String Lenght Should Be And It Should Consist Of
    [Arguments]    ${string}    ${length}    ${allowed chars}
    Length Should Be    ${string}    ${length}
    FOR    ${i}    IN RANGE    0    ${length}
        Should Contain    ${allowed chars}    ${string[${i}]}
        ...    String '${string}' contains character '${string[${i}]}' which is not in allowed characters '${allowed chars}'.
    END

Test Random String With
    [Arguments]    ${expected characters}    ${given characters}
    ${result} =    Generate Random String    100    ${given characters}
    String Lenght Should Be And It Should Consist Of    ${result}    100    ${expected characters}