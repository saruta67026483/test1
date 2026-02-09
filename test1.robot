*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser  https://reg.up.ac.th/  chrome
Suite Teardown    Close Browser

***Variables***  
${PASSWORD}  P@ploy110448p


***Keywords***
Login To Application
   Wait Until Element Is Visible 	 locator=//input[@id='username'] 	 timeout=180 	 error=None
    Input Text   xpath=//input[@id='username']   ${STUDENT_ID}
    Input Text   xpath=//input[@id='password']   ${PASSWORD}
    Click Button   xpath=//button[@type='submit']
   Wait Until Page Contains 	UP ACCOUNT	 timeout=None 	 error=None  60s
Verify Successful Login
    Page Should Contain   UP ACCOUNT

    
*** Test Cases ***
User Can Login Successfully
    Login To Application
    Verify Successful Login

