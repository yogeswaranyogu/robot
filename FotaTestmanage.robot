*** Settings ***
Resource    FotaTestconfig.robot


*** Test Cases ***
TC001:verify Login With Fota Credentials:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

TC002:verify Fota release manager:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota Release Manager:   
    Set Test Message    ExecuteLoginpage     

TC003:verify Fota_release_manager_view_option:
    [Tags]    View_release_manager_option
    Set Test Documentation    Executing_Fota_release_manager_view_option_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_view_option:
    Set Test Message    View_option_msg     

TC004:verify Fota_release_manager_Delete_option:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_Delete_option:

TC005:verify Fota_release_manager_sign_out:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_sign_out:
    Close All Browsers

TC006:verify Fota_release_manager_Invaild_case_atleast_one_device:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_Invaild_case_atleast_one_device:
    

TC007:verify Fota_release_manager_Invaild_case_Description:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_Invaild_case_Description:  
    Sleep    2s
    Close All Browsers

TC008:verify Fota_release_manager_once_reject_File_edit_option:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_manager_once_reject_File_edit_option:
    Close Browser

TC009:verify Login With Fota Credentials_Release_Approver:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage


TC010:verify_Fota_Release_Approver:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_approver_in_approved:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

TC011:verify_Fota_Release_Approver_in_Rejected:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_approver_in_Reject:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

TC012:verify_Fota_Release_Approver_in_View_option:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_approver_in_View:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

   
TC013:verify_Fota_Release_Approver_in_Sign_Out:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Release_Manager:
    Fota_release_Approver_sign_out:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

TC014:verify Login With Fota Credentials_Requester:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Requester:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
TC015:verify_With_Fota Credentials_Requester_Sign_Out:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Requester:
    Fota_Requester_sign_out:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
    Close Browser
TC016:verify_With_Fota Credentials_Requester_View:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Requester:
    Fota_Requester_View_option:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
    Close Browser
TC017:verify_With_Fota Credentials_Requester_Schudle:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Fota_Credentials_Requester:
    Fota_Requester_sign_out:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
    Close Browser
TC018:Verify_Login_In_Fota_sim
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login_In_Fota_sim:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

   
TC019:Verify_In_Fota_sim_Download:
    [Tags]    Login_Fota_case
    Set Test Documentation    Executing_Login_Testcase
    Login_In_Fota_sim:
    Send the FotaRequest:    
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage

TC020:Verify_In_Fota_sim_Sign_Out: