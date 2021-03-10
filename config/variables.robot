*** Variables ***
#---------- CORE VARIABLES ----------#

${chromedriver22_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-22.exe
${chromedriver25_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-25.exe
${chromedriver27_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-27.exe
${chromedriver70_path}      ${CURDIR}\\..\\webdrivers\\chromedriver70.exe
${chromedriver79_path}      ${CURDIR}\\..\\webdrivers\\chromedriver79.exe
${chromedriver87_path}      ${CURDIR}\\..\\webdrivers\\chromedriver87.exe
${chromedriver89_path}      ${CURDIR}\\..\\webdrivers\\chromedriver89.exe

#---------- MAIN LOGIN LOCATORS ----------#

${btnLogin}                     //button[@type="submit"]
${btnLogin2}                    //button[text()='Log In']
${txtEmail}                     //input[@id="email"]
${txtResetEmail}                //input[@type='email']
${txtPassword}                  //input[@id="password"]
${lnkForgotPwd}                 //button[@aria-label="forgot password"]
${btnCreateAcct}                //button[@aria-label="create account"]
${lblMissingEmail}              //span[contains(text(), "Please enter an email address.")]
${lblIncEmailFormat}            //span[contains(text(), "Please enter an email address in a format example@email.com.")]
${lblMissingPwd}                //span[contains(text(), "Please enter a password.")]
${lblInvalidData}               //p[contains(text(), "Check username and password")]

#---------- FORGOT PASSWORD LOCATORS ----------#

${btnSend}                      //span[text()='Send']
${btnClose}                     //span[text()='Close']
${lblPwdReset}                  //h4[text()='Password Reset Email Sent']


#---------- CREATION OF INSTRUCTOR ACCOUNT LOCATORS ----------#

${btnInstructor}                //button[contains(text(), "INSTRUCTOR")]  #//button[@arial-label="instructor"]
${btnStudent}                   //button[@arial-label="student"]
${chkTerms}                     //input[@type="checkbox"]
${btnCancel}                    //button[text()='Cancel']
${btnContinue}                  //span[text()='Continue']
${txtFirstName}                 //input[@id="first-name"]
${txtLastName}                  //input[@id="last-name"]
${txtPhoneNo}                   //input[@id="phone-number"]
${txtEmail}                     //input[@id="email"]
${txtPwd}                       //input[@id="password"]
${txtConfirmPwd}                //input[@id="confirm-password"]
${lblAcctCreation}              //h4[text()='Create Instructor Account']

${lblMissingFirstName}          //span[contains(text(), "First name is required.")]
${lblMissingLastName}           //span[contains(text(), "Last name is required.")]
${lblMissingEmail2}              //span[contains(text(), "Email is required.")]
${lblInvEmail}                  //span[text()='Invalid Email.']
${lblMissingPwd2}                //span[contains(text(), "Password is required.")]
${lblIncPwdFormat}              //span[contains(text(), "Password does not meet requirements")]
${lblMissingConfirmPwd}         //span[contains(text(), "Passwords do not match.")]
${lblNotMatchedPwd}             //span[contains(text(), "Re-type the new password")]
${lblMissingTerms}              //span[text()='Please accept terms and privacy policy.']
${lblMissingOrgName}            //span[contains(text(), "Organization name is required.")]

${lblAcctSetup}                 //h4[contains(text(), "Account Setup")]
${ddlUsingReactAs}              (//span[text()='Select one...'])[1]
${ddlCourseType}                (//span[text()='Select one...'])[2]
${ddlCourseFormat}              (//span[@class='ng-scope']//span)[3]
${ddlYourRole}                  (//span[text()='Select one...'])[1]
${txtOrgName}                   //input[contains(@class,'form-control ng-pristine')]

${lstGoReactAs}                 //a[@aria-label="Higher Education Institution"]
${lstCourseType}                (//span[text()='Teacher Preparation'])[2]
${lstCourseFormat}              //span[text()='Online']
${lstYourRole}                  //a[@aria-label="Coordinator"]
${lstOrgName}                   //a[@aria-label="Shaolin Temple"]


#---------- CREATION OF INSTRUCTOR & STUDENT ACCOUNT LOCATORS ----------#

${btnCourseContinue}            //button[@type='button']
${btnTermsContinue}             //button[text()='Continue']
${lblLobbyTestCourse}           (//div[text()='Sample Test Course'])[2]

#---------- LOBBY PAGE LOCATORS ----------#

${imgGoReact}                   //img[@class="logo"]
${imgGoReact1}                  //img[@alt='GoReact']
${imgGOREACT}                   //img[@alt='GoReact logo']
${lblWelcomeMsg}                //span[contains(text(), "Welcome to GoReact!")]

#---------- VARIABLES ----------#

${goreactURL}                   https://dev.goreact.com/
${goreactURLforStudents}        https://dev.goreact.com/join/8302dd44-8ea1-408a-9965-5ef8d4a01842
${goreactURLforStudents2}       https://dev.goreact.com/join/aceaaf25-55f8-4e7c-b297-1b07ab9f7bae

${validEmail}                   Dact1944@teleworm.us
${validPwd}                     Pwd@095749
${sampleName}                   Chip
${sampleLastName}               Cookie
${samplePhoneNo}                +639152527368
${basePwd}                      Pwd@
${inputOrgName}                 Sample
${emailAdd}                     validEmail
${dotCom}                       @hotemail.com

${UsingGoReactAs}               Higher Education Institution
${CourseType}                   Teacher Preparation



${LOWER}                        qwertyuiopasdfghjklzxcvbnm
${UPPER}                        QWERTYUIOPASDFGHJKLZXCVBNM
${NUMBERS}                      1234567890
${InvaildEmail}                 sampleEmail
${UnregEmail}                   sampleEmail@sample.com
${IncPwd}                       123456
${IncEmailFormat}               SampleIncorrectEmailFormat
${InvalidPhoneNo}               InvalidPhoneNumber