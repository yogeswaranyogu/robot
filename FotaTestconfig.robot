*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary
Library    Collections
Library    BuiltIn


***Variables***
${url}             https://iottez.com:8443/IOT_WEB_APP/
${browser}         chrome   
${app}             arorg   
${app_pass}        Unizen@123
${submitbutton}    xpath:/html/body/div/div[2]/div/form/div[4]/div[2]/div/button
${url1}             https://iottez.com:8443/IOT_FOTA_SIM/
${app3}             sim
${Login_Org}        xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div/input[1]
${Continue}         xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[3]/button[1]
${Time}              2s   
${IOT_FOTA}          xpath:/html/body/div[1]/div[1]/aside/section/ul/li[11]/a
${releasemanager}    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[11]/ul/li[1]/a
${Grouplist}         xpath:/html/body/div[1]/div[5]/section/div[2]/div[2]/div[1]/select    
${grouplistvalue}    105
${chooosefile}       xpath:/html/body/div[1]/div[5]/section/div[2]/div[2]/div[3]/input    
${locationfile}      E:/IOT/iqoo3/invoice.pdf
${version}           xpath:/html/body/div[1]/div[5]/section/div[2]/div[3]/div[1]/input    
${versionvalue}      1
${Descrption}        xpath:/html/body/div[1]/div[5]/section/div[2]/div[3]/div[2]/input    
${Descrptionvalue}   NEWUPDATE
${releasemanagerview}    xpath:/html/body/div[1]/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[2]/td[9]/button
${releasemanagerviewclose}    xpath:/html/body/div[2]/div/div/div[1]/button/span
${releasemanagerdelete}    xpath:/html/body/div[1]/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[2]/td[9]/button[2]
${signout}                 xpath:/html/body/div[1]/div[1]/aside/section/ul/li[12]/a   
${cancelsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
${Exitsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button
${submitmanager}    xpath:/html/body/div[1]/div[5]/section/div[2]/div[3]/div[3]/button
${Releaseapprover}    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[11]/ul/li[2]/a
${releasemanager_edit}    xpath:/html/body/div[1]/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[3]/td[9]/button[2]
${approver}    xpath:/html/body/div[1]/div[5]/div/div[2]/div/div/div[2]/div/table/tbody/tr[1]/td[9]/button[1]
${approver_reject}    xpath:/html/body/div[1]/div[5]/div/div[2]/div/div/div[2]/div/table/tbody/tr[2]/td[9]/button[2]            
${approverDescrption}    xpath:/html/body/div[4]/div/div/div[2]/div/div/div/textarea    
${approverDescrptionvalue}    DoubleCheck
${approversubmit}    xpath:/html/body/div[4]/div/div/div[2]/div/div/div/div/div/button
${approverview}    xpath:/html/body/div[1]/div[5]/div/div[2]/div/div/div[2]/div/table/tbody/tr[2]/td[9]/button
${approver_viewclose}    xpath:/html/body/div[3]/div/div/div[1]/button
    

*** Keywords ***

Login With Fota_Credentials_Release_Manager:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app}     
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton} 
    Sleep    ${Time}
    Click Element    ${Login_Org}
    Click Element    ${Continue}

Fota Release Manager: 
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}
    Select From List By Value    ${Grouplist}    ${grouplistvalue}
    Choose File    ${chooosefile}    ${locationfile}
    Input Text    ${version}    ${versionvalue}
    Input Text    ${Descrption}    ${Descrptionvalue}	 
    # Click Element    xpath:/html/body/div[1]/div[5]/section/div[2]/div[3]/div[3]/button
   

 Fota_release_manager_view_option:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}    
    Click Element    ${releasemanagerview}
    Sleep    ${Time}
    Click Element    ${releasemanagerviewclose}
    Close All Browsers

Fota_release_manager_Delete_option:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}
    Click Element    ${releasemanagerdelete}
    Sleep    ${Time}
    # Handle Alert    Accept:OK

Fota_release_manager_sign_out:
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${cancelsignout}
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${Exitsignout}

Fota_release_manager_Invaild_case_atleast_one_device:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}
    Click Element    ${submitmanager}
    Sleep    ${Time}
    # Handle Alert    ACCEPT:OK


Fota_release_manager_Invaild_case_Description:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}                    
    Select From List By Value    ${Grouplist}    ${grouplistvalue}
    Choose File    ${chooosefile}    ${locationfile}
    Click Element    ${submitmanager}

Fota_release_manager_once_reject_File_edit_option:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${releasemanager}
    Sleep    ${Time}                    
    Click Element    ${releasemanager_edit}
    Sleep    ${Time}
    Choose File    ${chooosefile}    ${locationfile}
    Sleep    ${Time}
    Click Element    ${submitmanager}

# Login With Fota_Credentials_Release_approver:
#     Open Browser    ${url}    ${browser}  
#     Maximize Browser Window   
#     Input Text    id:uname    ${app}     
#     Input Password    id:pass    ${app_pass} 
#     Click Button    ${submitbutton} 
#     Sleep    ${Time}
#     Click Element    ${Login_Org}
#     Click Element    ${Continue}

Fota_release_approver_in_approved:
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${Releaseapprover}
    Sleep    ${Time}
    click Element    ${approver}
     # Handle Alert    Accept:OK

Fota_release_approver_in_Reject:
    Sleep    5s
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${Releaseapprover}
    Sleep    ${Time}
    click Element    ${approver_reject}    
    Sleep    ${Time}
    Input Text    ${approverDescrption}    ${approverDescrptionvalue}
    Sleep    ${Time}
    Click Element    ${approversubmit}
    Sleep    ${Time}
    Close Browser
Fota_release_approver_in_View:    
    Sleep    ${Time}
    Click Element    ${IOT_FOTA}
    Sleep    ${Time}
    Click Element    ${Releaseapprover}
    Sleep    ${Time}
    click Element    ${approverview}
    Sleep    ${Time}
    # Click Element    ${approver_viewclose}
    Close Browser


Fota_release_Approver_sign_out:
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${cancelsignout}
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${Exitsignout}


Login With Fota_Credentials_Requester:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app}     
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton}
    Sleep    ${Time}
    Click Element    ${Login_Org}
    Click Element    ${Continue}


Fota_Requester_sign_out:
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${cancelsignout}
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${Exitsignout}

Fota_Requester_View_option:
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[11]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[11]/ul/li[3]/a
    Sleep    ${Time}
    Click Element    xpath:/html/body/div[1]/div[5]/div[2]/div/div/div/div[2]/div/table/tbody/tr[1]/td[9]/button[2]
    Sleep    ${Time}



Login_In_Fota_sim:    
    Open Browser    ${url1}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app3}     
    Input Password    id:pass    ${app_pass} 
    Click Button    xpath:/html/body/div/div/div/form/div[3]/div[2]/div/button


Send the FotaRequest:  
    Sleep    ${Time}
    Click Element    xpath:/html/body/div[1]/div[5]/div/div[2]/div/table/tbody/tr[74]/td[8]/button    
    Sleep    ${Time}
    # Handle Alert    ok
Fota_Sim_sign_out:
    Sleep    ${Time}
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[2]/a  
    Sleep    ${Time}
    Click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
    sleep    ${Time}
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[2]/a  
    Sleep    ${Time}
    click Element    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button