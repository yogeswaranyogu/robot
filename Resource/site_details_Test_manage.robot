*** Settings ***
Resource    site_details.robot


*** Test Cases ***
TC001:verify Login With_site_Details_Credentials:
    [Tags]    Site_Details
    Set Test Documentation    Executing_Login_Testcase
    Login With_Credentials_Site_Details:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
TC002:verify Site_details_for_Site_Management_View_option:
    [Tags]    Site_Details
    Set Test Documentation    Executing_View_Testcase
    Login With_Credentials_Site_Details:
    Site_details_for_Site_Management_View_option:
    Log    Site_details_for_Site_Management_View_option   
    Set Test Message    ExecuteViewpage
TC003:verify Site_details_for_Site_Management_Edit_option:
    [Tags]    Site_Details
    Set Test Documentation    Executing_Edit_Testcase
    Login With_Credentials_Site_Details:
    Site_details_for_Site_Management_Edit_option:
    Log    Site_details_for_Site_Management_Edit_option   
    Set Test Message    ExecuteEditpage
TC004:verify Site_details_for_Site_Management_Delete_option:
    [Tags]    Site_Details
    Set Test Documentation    Executing_Delete_Testcase
    Login With_Credentials_Site_Details:
    Site_details_for_Site_Management_Delete_option:
    Log    Site_details_for_Site_Management_Delete_option   
    Set Test Message    ExecuteDeletepage
TC005:verify Site_details_for_Site_Management_Sign_Out_option:
    [Tags]    Site_Details
    Set Test Documentation    Executing_Login_Testcase
    Login With_Credentials_Site_Details:
    Site_Details_Sign_out:
    Log    Site_details_for_Site_Management
    Set Test Message    ExecuteLoginpage


TC006:verify_Login_With_App_Details_Credentials:
    [Tags]    App_Details_case
    Set Test Documentation    Executing_Login_Testcase
    Application_Details_Login_With_Application_Credentails:
    Log    Application_Details:   
    Set Test Message    ExecuteLoginpage

TC007:verify_App_Details:
    [Tags]    App_Details_case
    Set Test Documentation    Application_Details:
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Log    Application_Details:   
    Set Test Message    Application_Details:
    
TC008:verify Site_details_for_Site_Management_View_option:
    [Tags]    Site_details_for_Site_Management
    Set Test Documentation    Executing_View_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Application_details_for_Application_Management_View_option:
    Log    Site_details_for_Site_Management 
    Set Test Message    ExecuteViewpage
TC009:verify Site_details_for_Site_Management_Edit_option:
    [Tags]    Site_details_for_Site_Management
    Set Test Documentation    Executing_Edit_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Application_details_for_Application_Management_Edit_option:
    Log    Application_details_for_Application_Management   
    Set Test Message    ExecuteEditpage
TC010:verify Site_details_for_Site_Management_Delete_option:
    [Tags]    Application_details_for_Application_Management
    Set Test Documentation    Executing_Delete_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Application_details_for_Application_Management_Delete_option:
    Log    Application_details_for_Application_Management_Delete_option   
    Set Test Message    ExecuteDeletepage

    
TC011:Verify_Appliaction_Details_Search_option:
    [Tags]    Application_details_for_Application_Management
    Set Test Documentation    Executing_Search_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Application_details_for_Application_Management_Search_option:
    Log    Application_details_for_Application_Management   
    Set Test Message    ExecuteSearchpage

TC012:Verify_Application_Details_Sign_out:
    [Tags]    Application_details_for_Application_Management
    Set Test Documentation    Executing_Search_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Details:
    Application_Details_Sign_out:
    Log    Application_details_for_Application_Management   
    Set Test Message    ExecuteSignoutpage

# TC013:Verify_Application_Management_In_Site_Details_Search_option:
#     [Tags]    Application_Management_case
#     Set Test Documentation    Executing_Search_Testcase
#     Application_Details_Login_With_Application_Credentails:
#     Application_Management_In_Site_Details_Search_Option:
#     Log    Application_details_for_Application_Management_Search_option   
#     Set Test Message    ExecuteSignoutpage

TC013:Verify_Application_Management_In_Site_Details_View_option:
    [Tags]    Application_Management_case
    Set Test Documentation    Executing_Search_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Management_In_Site_Details_View_Option:
    Log    Application_details_for_Application_Management   
    Set Test Message    ExecuteSignoutpage

TC014:Application_Management_In_Site_Details:
    [Tags]    Application_Management_case
    Set Test Documentation    Executing_Search_Testcase
    Application_Details_Login_With_Application_Credentails:
    Application_Management_In_Site_Details_Search_Option:
    Log    Application_details_for_Application_Management   
    Set Test Message    ExecuteSignoutpage
