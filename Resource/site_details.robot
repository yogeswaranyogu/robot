*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary
Library    Collections
Library    BuiltIn


***Variables***
${url}             https://iottez.com:8443/IOT_WEB_APP/
${browser}         chrome   
${app}             arsite   
${app_pass}        Unizen@123
${submitbutton}    xpath:/html/body/div/div[2]/div/form/div[4]/div[2]/div/button
${appuser}         arapp   
${Login_site}        xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div/input[2]
${Continue}         xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[3]/button[1]
${pagecontain}    Site - site2
${siteadmin}    xpath:/html/body/div/div[1]/aside/section/ul/li[2]/a
${siteadmin_view}    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[8]/button[1]
${Goback}        xpath:/html/body/div/div[5]/section/button
${siteadmin_Edit}    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[8]/button[2]
${siteadmin_Editvalue}    xpath:/html/body/div/div[5]/form/section[1]/div/div[2]/div/div[1]/div[1]/input     
${siteadmin_Editname}    site2
${siteadmin_Edit_save}    xpath:/html/body/div/div[5]/form/section[2]/div[2]/div/button




*** Keywords ***
Login With_Credentials_Site_Details:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app}     
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton} 
    Sleep    2s
    Click Element    ${Login_site}
    Click Element    ${continue}
Site_details_for_Site_Management_View_option:
    # Sleep    2s
    # Click Element    xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div/input[2]
    Sleep    2s
    Page Should Contain    ${pagecontain}
    Click Element    ${siteadmin}
    Sleep    2s
    Click Element    ${siteadmin_view}
    Sleep    2s
    Click Element    ${Goback}
    Close Browser    
Site_details_for_Site_Management_Edit_option:
    Sleep    2s
    Page Should Contain    ${pagecontain}
    Click Element    ${siteadmin}
    Sleep    2s
    Click Element    ${siteadmin_Edit}    
    Sleep    2s
    Input Text    ${siteadmin_Editvalue}    ${siteadmin_Editname}    
    Sleep    2s
    Click Element    ${siteadmin_Edit_save}
    Handle Alert    action=ACCEPT
Site_details_for_Site_Management_Delete_option:    
    Sleep    2s
    Page Should contain    ${pagecontain}
    Sleep    2S
    Click Element    ${siteadmin}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[8]/button[3]
    # Handle Alert     action=ACCEPT

Site_Details_Sign_out:
    sleep    2s
    Page Should Contain    ${pagecontain}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[11]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[11]/a
    Sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button

Application_Details_Login_With_Application_Credentails:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${appuser}     
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton} 
    
Application_Details:
    Page Should Contain    arapp
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[3]/a    

Application_details_for_Application_Management_View_option:
    Page Should Contain    arapp
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[9]/button[1]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/button

Application_details_for_Application_Management_Edit_option:
    Page Should Contain    arapp
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[9]/button[2]
    Input Text    xpath:/html/body/div/div[5]/form/section[1]/div/div[2]/div/div/div[3]/input     arapp
    Sleep    2s  
    Click Element    xpath:/html/body/div/div[5]/form/section[2]/div[2]/div/button
    # Handle Alert    action=ACCEPT
    # sleep    2s
    # Click Element    xpath:/html/body/div/div[5]/section/button    

Application_details_for_Application_Management_Delete_option:    
    Page Should Contain    arapp
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[9]/button[3]
    # Handle Alert    DISMISS:cancel

Application_details_for_Application_Management_Search_option:
    Page Should Contain    arapp
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[2]/select    46    
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div[3]/button


Application_Details_Sign_out:    
    Page Should Contain    arapp
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/a
    Sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button


Application_Management_In_Site_Details_Search_Option:
    Page Should Contain    arapp
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[2]/a
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div/select    45
    


Application_Management_In_Site_Details_View_Option:
    Page Should Contain    arapp
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[2]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[3]/div/div/div/div[2]/div/table/tbody/tr/td[8]/button
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/button
    Sleep    2s