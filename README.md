# goreactwebapp
A CoDev - goreact login application

**HOW TO SETUP:**

I. Install Pycharm and robotframework libraries, and setup JDK and Python Environments
1. Download and install Pycharm v2019.3.4 (Community Edition)
2. Download and install Python 3.9.2 (https://www.python.org/downloads/)
3. Download and install JDK (https://www.oracle.com/ph/java/technologies/javase-jdk15-downloads.html)


II. Adding JDK and Python to Environment Variable
1. Press Windows icon on your keyboard, type and select "variables for your account"
2. Under User variables, you have to click New button to create a new variable, just name it ‘JAVA_HOME’ and set its value on your jdk’s path, in my case, it is located at C:\Program Files\Java\jdk- then click OK to save
3. Under User variables, double click on Path variable to edit
4. Click New button
5. Find the paths (directory location) of your JDK, Python and Python scripts, copy then paste it. In my case, python is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39 while python scripts is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39\Scripts and you can just use the created variable for JDK which is JAVA_HOME + \bin: %JAVA_HOME%\bin


III. Library Installation (run as administrator)
1. Open your command prompt then type "pip install -U selenium"
2. Then install robot framework by typing “pip install -U robotframework”
3. Next, install robot framework with selenium library by typing $“pip install --upgrade robotframework-selenium2library"
4. And type "pip install robotframework-pabot


IV. Running the automation script
1. Open cmd
2. Type "git clone -b master https://github.com/filpangilinan/goreactwebapp.git
3. Open Pycharm
4. Click File and then select Open
5. Go to the folder that you clone from the branch
6. Go to the terminal and type "robot -i login tests" (for running the whole positive and negative scenarios) 
7.  OR type "robot -i posScenario tests" (for running the whole positive scenarios only)
8.  OR type "robot -i negScenario tests" (for running the whole negative scenarios only)
9. OR type "robot -i negScenario<number> tests" (for running a specific scenario)


Additional Instruction:
 For test scenario: "GoReact Login Page - Creation of an Instruction Account", you need to select manually the Course Type so that it will proceed to the next step. 
 Don't worry all my test scripts are working except that one step in Instruction account creation.
