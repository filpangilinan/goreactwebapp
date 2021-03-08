# goreactwebapp
A CoDev - goreact login application

**HOW TO SETUP:**
I. Install Pycharm and robotframework libraries, and setup JDK and Python Environments

Download and install Pycharm v2019.3.4 (Community Edition)
Download and install Python 3.9.2 (https://www.python.org/downloads/)
Download and install JDK (https://www.oracle.com/ph/java/technologies/javase-jdk15-downloads.html)
II. Adding JDK and Python to Environment Variable

Press Windows icon on your keyboard, type and select "variables for your account"
Under User variables, you have to click New button to create a new variable, just name it ‘JAVA_HOME’ and set its value on your jdk’s path, in my case, it is located at C:\Program Files\Java\jdk- then click OK to save
Under User variables, double click on Path variable to edit
Click New button
Find the paths (directory location) of your JDK, Python and Python scripts, copy then paste it. In my case, python is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39 while python scripts is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39\Scripts and you can just use the created variable for JDK which is JAVA_HOME + \bin: %JAVA_HOME%\bin
III. Library Installation (run as administrator)

Open your command prompt then type "pip install -U selenium"
Then install robot framework by typing “pip install -U robotframework”
Next, install robot framework with selenium library by typing $“pip install --upgrade robotframework-selenium2library"
And type "pip install robotframework-pabot
IV. Running the automation script

Open cmd
Type "git clone origin https://github.com/filpangilinan/optimyappAutoScripts.git
Open Pycharm
Click File and then select Open
Go to the folder that you clone from the branch
Go to the terminal and type "robot -i login tests" OR
Open the cloned folder
Double click the test.bat
