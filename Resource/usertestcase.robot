*** Settings ***
Library    RPA.Browser
*** Variables ***

${url}             https://iottez.com:8443/IOT_WEB_APP/
${browser}         chrome   
${app}             arorg   
${app_pass}        Unizen@123
${submitbutton}    xpath://*[@id="user_validation_form"]/div[4]/div[2]/div/button
${signout}                 xpath:/html/body/div[1]/div[1]/aside/section/ul/li[12]/a   
${cancelsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
${Exitsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button
${Time}    2s



*** Keywords ***
Login With Org Credentials:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app}     
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton} 
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div/input[1]
    Click Element    xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[3]/button[1]

user_management_add_user:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[1]/div[2]/button[2]
    Input Text       xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/input    Yogesh    
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[2]/input    yogu
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[3]/input    Yogeswaran@Techtez.com
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[4]/input    9876543211

user_management_add_user_ID_Invaild_:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s    
    Click Element    xpath:/html/body/div/div[5]/section/div[1]/div[2]/button[2]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div/button


User_management_add_user_displayname_invaild:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[1]/div[2]/button[2]
    Sleep    2s
    Input Text       xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/input    Yogesh    
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div/button

User_management_add_user_Email_invaild:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[1]/div[2]/button[2]
    Sleep    2s
    Input Text       xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/input    Yogesh    
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[2]/input    yogu
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div/button


User_management_add_user_Phone_number_invaild:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[1]/div[2]/button[2]
    Input Text       xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/input    Yogesh    
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[2]/input    yogu
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[3]/input    Rombo@gmail.cm
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[4]/input    987654321121
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div/button
    

User_management_View_Option:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[1]/td[7]/button[1]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/button


User_management_Edit_Option:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[2]/td[7]/button[2]
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[3]/input    arun@techtez.com
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div/input[1]


User_management_Delete_Option:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[3]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[2]/td[7]/button[3]
    Sleep    2s
    Handle Alert    ACCEPT:OK


User_management_sign_out:
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${cancelsignout}
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${Exitsignout}

