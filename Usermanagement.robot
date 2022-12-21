*** Settings ***
Resource    Resource/usertestcase.robot



*** Test Cases ***
TC001:verify Login With Orgmanagement Credentials:
    [Tags]    Login_Sitemanagement_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Org Credentials:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage


TC002:verify user_management_add_user:
    [Tags]    Login_Sitemanagement_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Org Credentials:
    user_management_add_user:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage



TC003:verify_user_management_add_user_ID_Invaild_:
    [Tags]    Login_Sitemanagement_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Org Credentials:
    user_management_add_user_ID_Invaild_:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage


TC004:verify_User_management_add_user_displayname_invaild:
    [Tags]    Login_User_management_add_user_displayname_invaild_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_add_user_displayname_invaild:
    Log    User_management_add_user_displayname_invaild_sucessful   
    Set Test Message    User_management_add_user_displayname_invaild

TC005:verify_User_management_add_user_Email_invaild:
    [Tags]    Login_User_management_add_user_Email_invaild_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_add_user_Email_invaild:
    Log    User_management_add_user_Email_invaild_sucessful   
    Set Test Message    User_management_add_user_Email_invaild

TC006:verify_User_management_add_user_Phone_number_invaild:
    [Tags]    Login_User_management_add_user_Phone_number_invaild_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_add_user_Phone_number_invaild:
    Log    User_management_add_user_Phone_number_invaild_sucessful   
    Set Test Message    User_management_add_user_Phone_number_invaild

TC007:verify_User_management_View_Option:
    [Tags]    Login_User_management_View_Option_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_View_Option:
    Log    User_management_View_Option_sucessful   
    Set Test Message    User_management_View_Option

TC008:verify_User_management_Edit_Option:
    [Tags]    Login_User_management_Edit_Option_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_Edit_Option:
    Log    User_management_Edit_Option_sucessful   
    Set Test Message    User_management_Edit_Option



TC009:verify_User_management_Delete_Option:
    [Tags]    Login_User_management_Delete_Option_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_Delete_Option:
    Log    User_management_Delete_Option_sucessful   
    Set Test Message    User_management_Delete_Option

TC010:verify_User_management_sign_out:
    [Tags]    Login_User_management_Sign_out_Option_case
    Set Test Documentation    Executing_UserManagement_Testcase
    Login With Org Credentials:
    User_management_sign_out:
    Log    User_management_Sign_out_Option_sucessful   
    Set Test Message    User_management_Sign_out_Option
