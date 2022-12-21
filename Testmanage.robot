*** Settings ***
Resource    Resource/Testconfig.robot
Library    Resource/MongDb_SSH_tunnel.py

*** Test Cases ***
TC001:verify Login_Credentials:
    [Tags]    Login_Credentails_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Log    Login_sucessful   
    Set Test Message    ExecuteLoginpage
    Close Browser

TC002:verify_add_application_case: 
    [Tags]    Appliaction_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Add Application in Application management:
    Log    Login_sucessful    
    Set Test Message    ExecuteLoginpage

TC003:verify_Delete_Application_management:
    [Tags]    Appliaction_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Delete_Application_Management:
TC004:verify_view_Application_Management
    [Tags]    Appliaction_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    View_Application_Management:

TC005:Verify_Edit_Appliaction_Management:
    [Tags]    Appliaction_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Edit_app_Management:

# TC006:verify_add_application_invalid_Mobilenumber_Email-id:
#     [Tags]    Login_Sitemanagement_case
#     Set Test Documentation    Executing_Login_Testcase
#     Read Product excel Sheet:
#     [Setup]    Login With Application Credentials:
#     Add Application in Application management_Invalid_Emailid&Mobilenumber:

TC006:verify_Create_XDK_Devices_Complex_Json
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase    
    [Setup]    Login With Application Credentials:
    complex_XDK_management:

TC007:verify_Create_GPS_Devices_GPS_Json    
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Gps_XDK_Management:
 
TC008:verify_Create_XDK_Devices_Simple_Json    
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    simple_XDK_MAnagement:

TC009:verify_create_XDK_Devices_invaild_Json
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    XDK_management_invaid_json:

TC010:Verify_Edit_Deveicemanagement:
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    Read Product excel Sheet:
    [Setup]    Login With Application Credentials:
    Edit_Device_Management:
TC011:Verify_Create_XDK_Devices_Delete_MAnagement:    
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    Read Product excel Sheet:
    [Setup]    Login With Application Credentials:
    Delete_Device_Management:

TC012:Verify_create_XDK_Device_View_Device_management:    
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    Read Product excel Sheet:
    [Setup]    Login With Application Credentials:
    View_Device_Management:
TC013:Verify_XDK_Invaild_serial_no:
    [Tags]    Device_Management_case
    Set Test Documentation    Executing_Login_Testcase
    Read Product excel Sheet:
    [Setup]    Login With Application Credentials:

TC014:Verify_Group_Management:
    [Tags]    Group_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Manage_New_group_management:        

TC015:Verify_Manage_Existing_Group_Management:    
    [Tags]    Group_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Manage_Exit_group_management:

TC016:Verify_Manage_View_group_Management:
    [Tags]    Group_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    View_group_Management:

TC017:Verify_Manage_Delete_group_Management:
    [Tags]    Group_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Delete_group_Management:

TC018:Verify_Manage_Edit_group_management:
    [Tags]    Group_Management_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Edit_group_Management:

TC019:verify_Device_Report_In_XDK_Devices:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Device_Report_In_Select_All_XDK_Device_management:    

TC020:verify_Device_Report_In_Devices:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Device_Report_In_XDK_Device_management:

TC021:verify_Device_Report_In_Org_XDK_Devices:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Device_Report_Invaild_Org_Device_management:

TC022:verify_Device_Report_In_XDK_Devices:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Device_Report_Invaild_Site_Device_management:

TC023:verify_Device_Report_In_XDK_Devices_Management:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
    Device_Report_Invaild_Device_:    

TC024:verify_Device_Report_In_XDK_Table_View_Devices_Management:
    [Tags]    Device_Report_case
    Set Test Documentation    Executing_Login_Testcase
    [Setup]    Login With Application Credentials:
     Device_Report_Invaild_Table_view_Device_management:

TC025:Verify DB user_validation
    [Tags]    MYSQL
    Verify serialNo is updated in mysql:    XDK1309
	Set Test Message    XDK Device with serialNo ModelXDK1309 is successfully onboarded & inserted in DB with ${db_output}

TC026:CONNECT MONGODB_Device_Report:
    [Tags]    Mongo_DB
    ${db_output}=    Execute_mongodb_query

TC027:verify_Downlink_Management:
    [Tags]    Downlink_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Downlink_Management_Downlink_Command:

TC028:verify_Downlink_Management_Downlink_History:
    [Tags]    Downlink_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Downlink_Management_Downlink_History:

TC029:CONNECT MONGODB_Downlink_History
    [Tags]    Mongo_DB
    ${db_output}=    downlink_History_Mongodb_Query

TC030:Verify_Fleet_Management_In_Driver_Management:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management:

TC031:Verify_Fleet_Management_In_Driver_Management_Invaild_Case:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Invalid_Org:
TC032:Verify_Fleet_Management_In_Driver_Management_Invaild_Case:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Invalid_Site:

TC033:Verify_Fleet_Management_In_Driver_Management_Invaild_Case_Driver_name:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_Name:

TC034:Verify_Fleet_Management_In_Driver_Management_Invaild_Case_Driver_MObile_Number:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_MObile_number:       

TC035:Verify_Fleet_Management_In_Driver_Management_Invaild_Case_Driver_Lincense:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_Lincense:

TC036:Verify_Fleet_Management_In_Driver_Management_Reset:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_ADD_Driver_Management_Reset:
TC037:Verify_Fleet_Management_In_Driver_Management_View_option:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_View_Option:
  
TC038:Verify_Fleet_Management_In_Driver_Management_Edit_option:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Edit_Option:

TC039:Verify_Fleet_Management_In_Driver_Management_Delete_option:    
    [Tags]    Fleet_Management_Driver_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Delete_Option:

TC040:Verify DB user_validation
    [Tags]    MYSQL
    Verify Drivertbl is updated in mysql:    Driver1
	Set Test Message    Driver Management with Drivername Driver1 is successfully onboarded & inserted in DB with ${db_output1}

TC041:Verfiy_Fleet_Management_Vehicle_Management:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management:
    
TC042:Verfiy_Fleet_Management_Vehicle_Management_Org:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_org_Invaild:

TC043:Verfiy_Fleet_Management_Vehicle_Management_Site:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_Site_Invaild:

TC044:Verfiy_Fleet_Management_Vehicle_Management_APP:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_App_Invaild:

TC045:Verfiy_Fleet_Management_Vehicle_Management_Vechile_Number:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_Invaild_Vechile_Number:


TC046:Verfiy_Fleet_Management_Vehicle_Management_Truck:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_Invaild_Truck:

TC047:Verfiy_Fleet_Management_Vehicle_Management_Reset:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:  
    Fleet_Management_In_Vehicle_Management_Reset:

TC048:Verfiy_Fleet_Management_Vehicle_Management_View:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Vehicle_Management_View_:

TC049:Verfiy_Fleet_Management_Vehicle_Management_Edit:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Vehicle_Management_Edit_:

TC050:Verfiy_Fleet_Management_Vehicle_Management_Delete:
    [Tags]    Fleet_Management_Vehicle_Management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Vehicle_Management_Delete_:

TC051:Verify DB user_validation:
    [Tags]    Mongo_DB
    Verify Vehicletbl is updated in mysql:    9876
	Set Test Message    Driver Management with vehiclemanagement 9876 is successfully onboarded & inserted in DB with ${db_output2}



TC052:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation:

TC053:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Org:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Org:

TC054:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Site:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Site:

TC055:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Invaild_App:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Invaild_App:

TC056:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Device_List:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Device_List:

TC057:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Vehicle_List:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Vehicle_List:

TC058:Verfiy_Fleet_Management_In_Device_Vehicle_Assocation_Delete:
    [Tags]    Device_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Device_Vehicle_Assocation_Delete:

TC059:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation:


TC060:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_org:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Org:
    
TC061:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_Site:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Site:

TC062:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_App:    
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_App:


TC063:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_Driver_List:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Device_List:
TC064:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_Vechile_List:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Vehicle_List:


TC065:Verfiy_Fleet_Management_In_Driver_Vehicle_Assocation_Invalid_Delete:
    [Tags]    Driver_Vehicle_Assocation_management_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Driver_Vehicle_Assocation_Delete:

TC066:Verfiy_Fleet_Management_In_Route_Configuration:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration:

TC067:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_Org:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Org:

TC068:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_Site:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Site:


TC069:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_App:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_App:
TC070:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_origin:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Origin:

TC071:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_Destination:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Destination:

TC072:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_Route:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Route:

TC073:Verfiy_Fleet_Management_In_Route_Configuration_Invaild_Travel_Mode:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_Invaild_Travel_mode:

TC074:Verify_Fleet_Management_In_Route_Configuration_View_option:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase   
    [setup]    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_View_option:

TC075:Verify_Fleet_Management_In_Route_Configuration_sign_out:
    [Tags]    Fleet_Management_Route_Configuration_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Route_Configuration_sign_out:
    Close All Browsers

TC076:Verify_Fleet_Management_In_Trip_Generation:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation:
    Close All Browsers
TC077:Verify_Fleet_Management_In_Trip_Generation_View_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_View_Option:
    Close Browser

TC078:Verify_Fleet_Management_In_Trip_Generation_Delete_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Delete_Option:
    Close Browser

TC079:Verify_Fleet_Management_In_Trip_Generation_Invaid_Org_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Org:
    Close Browser

TC080:Verify_Fleet_Management_In_Trip_Generation_Invaid_site_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Site:
    Close Browser

TC081:Verify_Fleet_Management_In_Trip_Generation_Invaid_App_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_App:
    Close Browser

TC082:Verify_Fleet_Management_In_Trip_Generation_Invaid_Route_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Route:
    Close Browser

TC083:Verify_Fleet_Management_In_Trip_Generation_Invaid_Driver_Option:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Driver:
    # Close Browser

TC084:Verify_Fleet_Management_In_Trip_Generation_Select_Date:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Date:
    # Close Browser

TC085:Verify_Fleet_Management_In_Trip_Generation_Select_Time:
    [Tags]    Fleet_Management_Trip_Generation_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Trip_Generation_Invaild_Time:
    # Close Browser

TC086:Verify_Fleet_Management_In_Upcoming_Trips:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips:
    # Close Browser

TC087:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_Org:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_Org:
    # Close Browser

TC088:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_Site:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_Site:
    # Close Browser

TC089:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_App:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_App:
    # Close Browser

TC090:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_Route:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_Route:
    # Close Browser

TC091:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_Trip:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_Trip:
    # Close Browser

TC092:Verify_Fleet_Management_In_Upcoming_Trips_Invaild_Date:
    [Tags]    Fleet_management_Upcoming_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Upcoming_Trips_Invaild_Date:
    # Close Browser


TC093:Verify_Fleet_Management_In_Complete_Trips:
    [Tags]    Fleet_Management_Complete_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Complete_Trips:
    # Close Browser

TC094:Verify_Fleet_Management_In_Complete_Trips_Invaild_Org:
    [Tags]    Fleet_Management_Complete_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Complete_Trips_Invaild_Org:
    # Close Browser

TC095:Verify_Fleet_Management_In_Complete_Trips_Invaild_Site:
    [Tags]    Fleet_Management_Complete_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Complete_Trips_Invaild_Site:
    # Close Browser


TC096:Verify_Fleet_Management_In_Complete_Trips_Invaild_App:
    [Tags]    Fleet_Management_Complete_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Complete_Trips_Invaild_App:
    # Close Browser

TC097:Verify_Fleet_Management_In_Complete_Trips_Invaild_Route:
    [Tags]    Fleet_Management_Complete_Trips_case
    Set Test Documentation    Executing_Login_Testcase
    Login With Application Credentials:
    Fleet_Management_In_Complete_Trips_Invaild_Route:
    # Close Browser






# TC020:Validate error message in Add org without Email Id
#     [Tags]   Add Organization without Email Id
#     Set Test Documentation    Executing_Add_Organization_without_EmailId_Testcase
#     [Setup]   Load_Test_Data_From_Excel  20
#     Log    ${Test_Status_var}  
#     Run Keyword If    '${Test_Status_var}' == 'Execute'  Load_Add_Organization_without_EmailId_Testsuite
#     ...    ELSE    Skip    Test Case Skipped
#     Log    Testcase_exceutedsuccessfully....  

# TC027:Verify DB user_validation_mongoDB:
# Verify serialNo is updated in mongodb:    XDKjio
# Set Test Message    XDK Device with serialNo ModelXDKjio is successfully onboarded & inserted in DB with ${db_output1}
# Verify_Mongo_DB_Connnection_Iot_Platform:    
# Test find by fillter data from mongodb    
# Verify DB Connection
# Test find data by ID from mongodb


# TC0000:verify
#     Login With Application Credentials:
#     Read Product excel Sheet111: 
#     Create a XDK Device Management1:    ${strRowCount_Prod}


# TC0:Complex_XDK_management:
#     Login With Application Credentials:
    


# TC1001:Simple_XDK_Management:
#     Login With Application Credentials:
#     simple_XDK_management:    

# TC1002:GPS_XDK_Management:
#     Login With Application Credentials:
#     Gps_XDK_management:        

# TC1003:XDK_management_invaid_json:
#     Login With Application Credentials:
#     XDK_management_invaid_json:            