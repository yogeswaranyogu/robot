*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary
Library    Collections
Library    BuiltIn
Library    pymysql
Library    pymongo
# Library    paramiko
Library    sshtunnel
Library    Screenshot
Library    sqlconnect.py
Library    MongDb_SSH_tunnel.py
Library    RobotMongoDBLibrary
Library    RobotMongoDBLibrary.Find
Library    RobotMongoDBLibrary.Update 
Library    RobotMongoDBLibrary.Delete
Library    RobotMongoDBLibrary.Insert
Library    RPA.Desktop



*** Variables ***
${Mongohost}    157.245.110.89
${port}         27017
${mongousername}    yogesh
${mongopassword}    Yogu@IOTPT
${librarykey}       E:/IOT/putty key/arunidea 
# CONNECT WITH CONNECTION STRING CLUSTER
# &{MONGODB_CONNECT_STRING}=   host=157.245.110.89    port=22    username=yogesh    password=Yogu@IOTPT    database=iotplatform   collection=iot_31_data
&{MONGODB_CONNECT_STRING}=   connection=mongodb://localhost:27017/    database=local   collection=startup_logs





${url}             https://iottez.com:8443/IOT_WEB_APP/
${browser}         chrome   
${app}             arorg   
${app_pass}        Unizen@123
${submitbutton}    xpath://*[@id="user_validation_form"]/div[4]/div[2]/div/button
${page_contain}    Organization - arorg
${click_Element_app}    xpath:/html/body/div/div[1]/aside/section/ul/li[5]/a
${click_element_add_app}    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
${select_value_org}             xpath:/html/body/div/div[5]/form/section[1]/div/div[2]/div/div[1]/div[1]/select
${select_value_org1}            61   
${select_value_site}        xpath:/html/body/div/div[5]/form/section[1]/div/div[2]/div/div[1]/div[2]/select
${select_value_site1}    45
${input_app}    xpath:/html/body/div/div[5]/form/section[1]/div/div[2]/div/div[1]/div[3]/input
${input_app1}    siteapp
${Input_user_app}    xpath:/html/body/div/div[5]/form/section[2]/div[1]/div[2]/div[1]/input
${Input_user_app1}    appapp
${input_email}    xpath:/html/body/div/div[5]/form/section[2]/div[1]/div[2]/div[2]/input
${input_email1}    yogesh@gmail.com
${input_mobile_no}    xpath:/html/body/div/div[5]/form/section[2]/div[1]/div[2]/div[3]/input
${input_mobile_no1}    9988776655
${click_sbt_app}    xpath:/html/body/div/div[5]/form/section[2]/div[2]/div/button
${input_invaild_mobile_no}    97766551
${Delete_app_mana}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[3]/td[8]/button[3]
${view_app_mana}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[5]/td[8]/button[1]
${view_app_mana1}    xpath:/html/body/div/div[5]/section/button
${Edit_app_mana}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[8]/button[2]
${input_mobile_no_edit}    9911442200
${manage_group_}    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
${Delete_device}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[6]/button[3]
${view_device_edit}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[6]/button[1]
${Fleet_vaild1}    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/a
${Fleet_vaild2}	    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/ul/li[1]/a
${Fleet_vaild_value1}    xpath:/html/body/div/div[5]/section[1]/div/div[2]/div/div/div[1]/select
${Fleet_vaild_value1_1}      61
${Fleet_vaild_value2}    xpath:/html/body/div/div[5]/section[1]/div/div[2]/div/div/div[2]/select
${Fleet_vaild_value2_2}    45
${Fleet_Add_Info_}    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button
${Fleet_Input_Driver_}    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[1]/input
${Fleet_Input_Driver_name}    yogeswaran
${Fleet_Input_Mobile_}    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[2]/input    
${Fleet_Input_Mobile_number}    8796543210
${Fleet_InputLicense_}    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[3]/input    
${Fleet_Input_License_number}    Tn15U0369        
${Fleet_Sub_Btn}    xpath:/html/body/div/div[5]/section[3]/div[2]/div/div/div/button[2]
${Reset_Fleet}    xpath:/html/body/div/div[5]/section[2]/div[2]/div/div/div/button[1]
${Fleet_View}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr/td[6]/button[1]
${Fleet_Edit}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr/td[6]/button[2]
${Fleet_Edit_value}    xpath:/html/body/div/div[5]/section/div/div[2]/div/div[2]/div[2]/input
${Fleet_Edit_value1}    9787632118
${Fleet_Edit_info}    xpath:/html/body/div/div[5]/section/div/div[2]/div/div[5]/div/button
${Fleet_Delete_optn}    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[2]/td[6]/button[3]
${Fleet_vehicle_add_info}    xpath:/html/body/div/div[5]/section/div[1]/div[1]/div[2]/button 
${Fleet_vehicle_Management}    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/ul/li[2]/a
${Fleet_vaild_Vechile1}    xpath:/html/body/div/div[5]/form/section/div/div[2]/div/div/div[1]/select
${Fleet_vaild_Vechile2}    xpath:/html/body/div/div[5]/form/section/div/div[2]/div/div/div[2]/select
${Fleet_vaild_Vechile3}    xpath:/html/body/div/div[5]/form/section/div/div[2]/div/div/div[3]/select
${Fleet_vehicle_}    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/div[3]/div/div/div[1]/input    
${Fleet_vehicle_number}    0987
${Fleet_Vehicle_sub_Btn}    xpath:/html/body/div/div[5]/section/div[2]/div/div/div/button[2]
${Fleet_vhl_Reset}    xpath:/html/body/div/div[5]/section/div[2]/div/div/div/button[1]
${Fleet_vehicle_Type}    xpath:/html/body/div/div[5]/section/div[1]/div[2]/div[1]/div[3]/div/div/div[2]/select    
${Fleet_vehicle_Type1}    1
${Device - Vehicle Association}    Device - Vehicle Association
${Device_Vehicle_Association_org}    xpath:/html/body/div/div[5]/div[2]/div[1]/select
${Device_Vehicle_Association}    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[3]/a
${Device_Vehicle_Association_Site}    Xpath:/html/body/div/div[5]/div[2]/div/select[2]
${Device_Vehicle_Association_App}    xpath://*[@id="appFilter"]
${Assign_btn}    xpath:/html/body/div/div[5]/div[4]/div/button
${Device_vechile_Assocation_Device_list}    xpath:/html/body/div/div[5]/div[4]/div/select[1]
${Driver_vehicle_delete}    xpath:/html/body/div/div[5]/div[6]/div/div/div/div[2]/div/table/tbody/tr/td[5]/button
${Driver - Vehicle Association}    Driver - Vehicle Association
${Route_Config_Site}    xpath:/html/body/div/div[5]/div[2]/div[2]/select
${Route_Config_App}    xpath:/html/body/div/div[5]/div[2]/div[3]/select
${Login_Org}        xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div/input[1]
${Continue}         xpath:/html/body/div[1]/div[2]/div/div[2]/div/div/div[3]/button[1]
${signout}                 xpath:/html/body/div[1]/div[1]/aside/section/ul/li[12]/a   
${cancelsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/button
${Exitsignout}    xpath:/html/body/div[1]/div[4]/div/div/div[2]/div/div[2]/a/button
${Time}    2s

*** Keywords ***
Login With Application Credentials:
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window   
    Input Text    id:uname    ${app} 
    Input Password    id:pass    ${app_pass} 
    Click Button    ${submitbutton}
    Sleep    2s
    Click Element    ${Login_Org}
    Click Element    ${Continue}
    
Add Application in Application management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    ${click_Element_app}
    Click Button     ${click_element_add_app}
    Select From List By value    ${select_value_org}    ${select_value_org1}
    Sleep    2s
    Select From List By value    ${select_value_site}    45
    Input Text    ${input_app}    ${input_app1}
    Select From List By value    xpath:/html/body/div/div[5]/form/section[2]/div[1]/div[2]/div[1]/select    136
    Execute JavaScript    window.scrollBy(0,400) 
    Sleep    2s   
    Click Button    ${click_sbt_app}
# Add Application in Application management_Invalid_Emailid&Mobilenumber:
#     Page Should Contain    ${page_contain}
#     Click Element    ${click_Element_app}
#     Click Button     ${click_element_add_app}
#     Select From List By value    ${select_value_org}    ${select_value_org1}
#     Sleep    2s
#     Select From List By Value    ${select_value_site}    ${select_value_site1}
#     Input Text    ${input_app}    ${input_app1}
#     Input Text    ${Input_user_app}    ${Input_user_app1}
#     Input Text    ${input_email}    ${input_email1}
#     Input Text    ${input_mobile_no}    ${input_invaild_mobile_no}
#     Click Button    ${click_sbt_app}



Delete_Application_Management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    ${click_Element_app}
    Sleep    2s
    Click Element    ${Delete_app_mana}
    # Handle Alert    ACCEPT:Ok

View_Application_Management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    ${click_Element_app}
    Sleep    2s    
    Click Element    ${view_app_mana}     
    Sleep    3s    
    Click Element    ${View_app_mana1}



Edit_app_Management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    ${click_Element_app}
    Sleep    2s        
    Click Element    ${Edit_app_mana}
    Sleep    3s  
    Input Text    ${input_app}    ${input_app1}
    Sleep    3s    
    # Click Element    ${click_sbt_app}


Create_XDK_Device_In_Device_Management:
    [Arguments]    ${strRowCount_Prod}  
    # ${strRowCount_Prod}    Convert To Integer    ${strRowCount_Prod}
    FOR    ${i}    IN RANGE    1    ${strRowCount_Prod}
    
        Sleep    2s
        Click Element     xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
        Sleep             5 seconds
        Click Button      ${click_element_add_app}
        Sleep             5 seconds
        
        Select From List By Label   xpath://html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select     ${Orgnization}[${i}]
        sleep    3
         
        Select From List By Label     id:siteId    ${site}[${i}]
        sleep    3
    
        Select From List By Label     id:appId    ${Application}[${i}]
        Sleep             2 seconds
        Select From List By Label     id:protocol_type    ${Protocoltype}[${i}]
        Sleep             2 seconds
        Input Text    id:serialNo    ${Serialnumber}[${i}]
        Sleep            2 Seconds
        Input Text    id:devName     ${Devicenumber}[${i}]
        Sleep            2 Seconds
        Input Text    id:modalId    ${Model}[${i}]
        Sleep             5s
        Choose File    //*[@id="jsonFile"]        ${file}[${i}]
        Sleep              2 seconds    
        Select From List By Label     id:deviceType    ${type}[${i}]
        Select From List By Label     id:group        ${group}[${i}]
        Click Button    id:submit
        Handle Alert       action=ACCEPT
    
        FOR   ${i}    IN RANGE    1    ${strRowCount_sensor}
           Click Button    xpath://*[@id="addInfo"]
           Sleep    1s
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[1]/input        ${Sensorname}[${i}]
           Select From List By Label   xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[2]/select    ${Hierarchy}[${i}]   
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[3]/input    ${Min}[${i}]    
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[4]/input   ${Max}[${i}]
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[5]/input    ${Threshold}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[6]/select   ${Graph}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[7]/select   ${Unit}[${i}]
           
        END
        Click Button    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2] 
        Handle Alert       action=ACCEPT
    
    END

Read Product excel Sheet:
    Open Excel    E:/robot/IOT.xls
    ${strColCount} =    Get Column Count  IOT
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_Prod}      Get Row Count   IOT
    
    
    
    Set Test Variable    @{Orgnization}           Product
    Set Test Variable    @{site}                  Link  
    Set Test Variable    @{Application}           Amt     
    Set Test Variable    @{Protocoltype}          Dis
    Set Test Variable    @{Serialnumber}          DATA 
    Set Test Variable    @{Devicenumber}          Check  
    Set Test Variable    @{Model}                 Category
    Set Test Variable    @{file}                  File
    Set Test Variable    @{type}                  Devicetype
    Set Test Variable    @{group}                 Devicegroup
    
      
    
     FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_Prod}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Product_data}            Read Cell Data By Coordinates   IOT    0     ${rowIndex}
                ${Link_data}               Read Cell Data By Coordinates   IOT    1     ${rowIndex}
                ${Rupee}                   Read Cell Data By Coordinates   IOT    2     ${rowIndex}
                ${Discount_data}           Read Cell Data By Coordinates   IOT    3     ${rowIndex}
                ${Metadata_data}           Read Cell Data By Coordinates   IOT    4     ${rowIndex}
                ${categoty}                Read Cell Data By Coordinates   IOT    5     ${rowIndex} 
                ${CAtegory_data}           Read Cell Data By Coordinates   IOT    6     ${rowIndex}
                ${file_data}               Read Cell Data By Coordinates   IOT    7     ${rowIndex}
                ${Devicetype}              Read Cell Data By Coordinates   IOT    8     ${rowIndex}
                ${Devicegroup}             Read Cell Data By Coordinates   IOT    9     ${rowIndex}   
            
                Append To List    ${Orgnization}        ${Product_data}
                Append To List    ${site}               ${Link_data}
                Append To List    ${Application}        ${Rupee}
                Append To List    ${Protocoltype}       ${Discount_data}
                Append To List    ${Serialnumber}       ${Metadata_data}
                Append To List    ${Devicenumber}       ${categoty} 
                Append To List    ${Model}              ${CAtegory_data}
                Append To List    ${file}               ${file_data}    
                Append To List    ${type}               ${Devicetype}
                Append To List    ${group}              ${Devicegroup}
                
            END
     END  
    log    ${Orgnization} 
    log    ${site}
    log    ${Application}
    log    ${Protocoltype}
    log    ${Serialnumber} 
    log    ${Devicenumber}
    log    ${Model} 
    log    ${file}
    log    ${type}
    log    ${group}




 
    Set Test Variable   ${strRowCount_Prod}
    [Return]    ${strRowCount_Prod}

Read Sensor Value:
    Open Excel    E:/robot/Testdata/IOT.xls
    ${strColCount} =    Get Column Count  Sensor
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_sensor}      Get Row Count   Sensor
    


    Set Test Variable    @{Sensorname}            sensorvalue
    Set Test Variable    @{Hierarchy}             Hierar
    Set Test Variable    @{Min}                   Minimum 
    Set Test Variable    @{Max}                   Maximum
    Set Test Variable    @{Threshold}             Thresold
    Set Test Variable    @{Graph}                 graphbar
    Set Test Variable    @{Unit}                  unitbar 

        FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_sensor}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Sensor}                  Read Cell Data By Coordinates   Sensor    0     ${rowIndex}  
                ${Hierarchyvalue}          Read Cell Data By Coordinates   Sensor    1     ${rowIndex}  
                ${Minvalue}                Read Cell Data By Coordinates   Sensor    2     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    2     ${rowIndex}  
                ${Minvalue}=      Convert To Integer      ${MN}
                                  Set Test Variable     ${MOBILE NUMBER}    ${Minvalue}
                
                ${Maxvalue}                Read Cell Data By Coordinates   Sensor    3     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    3     ${rowIndex}  
                ${Maxvalue}=      Convert To Integer      ${MN}
                                  Set Test Variable     ${MOBILE NUMBER}    ${Maxvalue}
                
                ${Thresholdvalue}          Read Cell Data By Coordinates   Sensor    4     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    4     ${rowIndex}  
                ${Thresholdvalue}=      Convert To Integer      ${MN}
                                        Set Test Variable     ${MOBILE NUMBER}    ${Thresholdvalue}
                     
                ${Graphtype}               Read Cell Data By Coordinates   Sensor    5     ${rowIndex}
                ${Unitvalue}               Read Cell Data By Coordinates   Sensor    6     ${rowIndex}
                

                Append To List    ${Sensorname}         ${Sensor}
                Append To List    ${Hierarchy}          ${Hierarchyvalue}
                Append To List    ${Min}                ${Minvalue}
                Append To List    ${Max}                ${Maxvalue}
                Append To List    ${Threshold}          ${Thresholdvalue}
                Append To List    ${Graph}              ${Graphtype}
                Append To List    ${Unit}               ${Unitvalue}
            END
        END
    log    ${Sensorname}
    log    ${Hierarchy} 
    log    ${Min}
    log    ${Max}
    log    ${Threshold}
    log    ${Graph} 
    log    ${Unit}




 
    Set Test Variable   ${strRowCount_sensor}
    [Return]    ${strRowCount_sensor}


Create a GPS Device Management:
    
   [Arguments]    ${strRowCount}  
      
   FOR   ${i}    IN RANGE    1    ${strRowCount}
    
    Click Element     xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep             5 seconds
    Click Button      ${click_element_add_app}
    Sleep             5 seconds
           
    Select From List By Label    xpath://html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select    ${Org}[${i}]
    sleep    3
        
    Select From List By Label     id:siteId    ${MECsite}[${i}]
    sleep    3
    
    Select From List By Label     id:appId    ${MECApp}[${i}]
    Sleep             2 seconds
    Select From List By Label     id:protocol_type    ${Protocol}[${i}]
    Sleep             2 seconds
    Input Text    id:serialNo    ${GPSSerial}[${i}]
    Sleep            2 Seconds
    Input Text    id:devName     ${GPSDevice}[${i}]
    Sleep            2 Seconds
    Input Text    id:modalId    ${GPSModel}[${i}]
    Sleep             2 seconds
    Choose File   id:jsonFile        ${GPSfile}[${i}]
    Sleep              2 seconds    
    Select From List By Label     id:deviceType    ${GPStype}[${i}]
    Select From List By Label     id:group        ${GPSgroup}[${i}]
    Click Button    id:submit
    Handle Alert       action=ACCEPT
    
     FOR   ${i}    IN RANGE    1    ${strRowCount_GPS_Sensor}
           Click Button    xpath://*[@id="addInfo"]
           Sleep    1
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[1]/input        ${Sensorname1}[${i}]
           Select From List By Label   xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[2]/select    ${Hierarchy1}[${i}]   
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[3]/input    ${Min1}[${i}]    
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[4]/input   ${Max1}[${i}]
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[5]/input    ${Threshold1}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[6]/select   ${Graph1}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[7]/select   ${Unit1}[${i}]
           
     END
     Click Button    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2] 
     Handle Alert       action=ACCEPT
    
   END

Read Product GPS excel Sheet:
    Open Excel    E:/gps.xls
    ${strColCount} =    Get Column Count  GPS
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount}      Get Row Count   GPS
    
    
    
    Set Test Variable    @{Org}                      Product
    Set Test Variable    @{MECsite}                  Link  
    Set Test Variable    @{MECApp}                   Amt     
    Set Test Variable    @{Protocol}                 Dis
    Set Test Variable    @{GPSSerial}                DATA 
    Set Test Variable    @{GPSDevice}                Check  
    Set Test Variable    @{GPSModel}                 Category
    Set Test Variable    @{GPSfile}                  File
    Set Test Variable    @{GPStype}                  Devicetype
    Set Test Variable    @{GPSgroup}                 Devicegroup
    
      
    
     FOR    ${rowIndex}     IN RANGE    1    ${strRowCount}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Product_data1}            Read Cell Data By Coordinates   GPS    0     ${rowIndex}
                ${Link_data1}               Read Cell Data By Coordinates   GPS    1     ${rowIndex}
                ${Rupee1}                   Read Cell Data By Coordinates   GPS    2     ${rowIndex}
                ${Discount_data1}           Read Cell Data By Coordinates   GPS    3     ${rowIndex}
                ${Metadata_data1}           Read Cell Data By Coordinates   GPS    4     ${rowIndex}
                ${categoty1}                Read Cell Data By Coordinates   GPS    5     ${rowIndex} 
                ${CAtegory_data1}           Read Cell Data By Coordinates   GPS    6     ${rowIndex}
                ${file_data1}               Read Cell Data By Coordinates   GPS    7     ${rowIndex}
                ${Devicetype1}              Read Cell Data By Coordinates   GPS    8     ${rowIndex}
                ${Devicegroup1}             Read Cell Data By Coordinates   GPS    9     ${rowIndex}   
            
                Append To List    ${Org}                   ${Product_data1}
                Append To List    ${MECsite}               ${Link_data1}
                Append To List    ${MECApp}                ${Rupee1}
                Append To List    ${Protocol}              ${Discount_data1}
                Append To List    ${GPSSerial}             ${Metadata_data1}
                Append To List    ${GPSDevice}             ${categoty1} 
                Append To List    ${GPSModel}              ${CAtegory_data1}
                Append To List    ${GPSfile}               ${file_data1}    
                Append To List    ${GPStype}               ${Devicetype1}
                Append To List    ${GPSgroup}              ${Devicegroup1}
                
            END
     END  
    log    ${Org}
    log    ${MECsite}
    log    ${MECApp}
    log    ${Protocol}
    log    ${GPSSerial} 
    log    ${GPSDevice}
    log    ${GPSModel} 
    log    ${GPSfile}
    log    ${GPStype}
    log    ${GPSgroup}




 
    Set Test Variable   ${strRowCount}
    [Return]    ${strRowCount}

Read GPS Sensor Value:
    Open Excel    E:/robot/Testdata/IOT.xls
    ${strColCount} =    Get Column Count  GPS_Sensor
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_Gpssensor}      Get Row Count   GPS_Sensor
    


    Set Test Variable    @{Sensorname1}            sensorvalue
    Set Test Variable    @{Hierarchy1}             Hierar
    Set Test Variable    @{Min1}                   Minimum 
    Set Test Variable    @{Max1}                   Maximum
    Set Test Variable    @{Threshold1}             Thresold
    Set Test Variable    @{Graph1}                 graphbar
    Set Test Variable    @{Unit1}                  unitbar 

        FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_Gpssensor}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Sensor1}                  Read Cell Data By Coordinates   GPS_Sensor    0     ${rowIndex}  
                ${Hierarchyvalue1}          Read Cell Data By Coordinates   GPS_Sensor    1     ${rowIndex}  
                ${Minvalue1}                Read Cell Data By Coordinates   GPS_Sensor    2     ${rowIndex}
                                  ${MN}=    Read Cell Data By Coordinates    GPS_Sensor    2     ${rowIndex}  
                ${Minvalue1}=      Convert To Integer      ${MN}
                                   Set Test Variable     ${MOBILE NUMBER}    ${Minvalue1}
                
                ${Maxvalue1}                Read Cell Data By Coordinates   GPS_Sensor    3     ${rowIndex}
                                 ${MN}=     Read Cell Data By Coordinates    GPS_Sensor    3     ${rowIndex}  
                ${Maxvalue1}=      Convert To Integer      ${MN}
                                   Set Test Variable     ${MOBILE NUMBER}    ${Maxvalue1}
                
                ${Thresholdvalue1}          Read Cell Data By Coordinates   GPS_Sensor    4     ${rowIndex}
                                 ${MN}=     Read Cell Data By Coordinates    GPS_Sensor    4     ${rowIndex}  
                ${Thresholdvalue1}=      Convert To Integer      ${MN}
                                         Set Test Variable     ${MOBILE NUMBER}    ${Thresholdvalue1}
                     
                ${Graphtype1}               Read Cell Data By Coordinates   GPS_Sensor    5     ${rowIndex}
                ${Unitvalue1}               Read Cell Data By Coordinates   GPS_Sensor    6     ${rowIndex}
                

                Append To List    ${Sensorname1}         ${Sensor1}
                Append To List    ${Hierarchy1}          ${Hierarchyvalue1}
                Append To List    ${Min1}                ${Minvalue1}
                Append To List    ${Max1}                ${Maxvalue1}
                Append To List    ${Threshold1}          ${Thresholdvalue1}
                Append To List    ${Graph1}              ${Graphtype1}
                Append To List    ${Unit1}               ${Unitvalue1}
            END
        END
    log    ${Sensorname1}
    log    ${Hierarchy1} 
    log    ${Min1}
    log    ${Max1}
    log    ${Threshold1}
    log    ${Graph1} 
    log    ${Unit1}




 
    Set Test Variable   ${strRowCount_Gpssensor}
    [Return]    ${strRowCount}
    



Create_XDK_Devices_simple_Json:
    [Arguments]    ${strRowCount_Prod}   
    FOR   ${i}    IN RANGE    1    ${strRowCount_Prod}
    
    Click Element     xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep             5 seconds
    Click Button      ${click_element_add_app}
    Sleep             5 seconds
        
    Select From List By Label   xpath://html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select     ${Orgnization}[${i}]
    sleep    3
         
    Select From List By Label     id:siteId    ${site}[${i}]
    sleep    3
    
    Select From List By Label     id:appId    ${Application}[${i}]
    Sleep             2 seconds
    Select From List By Label     id:protocol_type    ${Protocoltype}[${i}]
    Sleep             2 seconds
    Input Text    id:serialNo    ${Serialnumber}[${i}]
    Sleep            2 Seconds
    Input Text    id:devName     ${Devicenumber}[${i}]
    Sleep            2 Seconds
    Input Text    id:modalId    ${Model}[${i}]
    Sleep             2 seconds
    Choose File   id:jsonFile        ${file}[${i}]
    Sleep              2 seconds    
    Select From List By Label     id:deviceType    ${type}[${i}]
    Select From List By Label     id:group        ${group}[${i}]
    Click Button    id:submit
    Handle Alert       action=ACCEPT
    
     FOR   ${i}    IN RANGE    1    ${strRowCount_sensor}
           Click Button    xpath://*[@id="addInfo"]
           Sleep    1
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[1]/input        ${Sensorname}[${i}]
           Select From List By Label   xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[2]/select    ${Hierarchy}[${i}]   
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[3]/input    ${Min}[${i}]    
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[4]/input   ${Max}[${i}]
           Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[5]/input    ${Threshold}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[6]/select   ${Graph}[${i}]
           Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[7]/select   ${Unit}[${i}]
           
     END
     Click Button    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2] 
     Handle Alert       action=ACCEPT
    
   END

Read Product excel Sheet_simple_json:
    Open Excel    E:\robot\Testdata\IOT.xls
    ${strColCount} =    Get Column Count  Simple_json
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_Prod}      Get Row Count   Simple_json
    
    
    
    Set Test Variable    @{Orgnization}           Product
    Set Test Variable    @{site}                  Link  
    Set Test Variable    @{Application}           Amt     
    Set Test Variable    @{Protocoltype}          Dis
    Set Test Variable    @{Serialnumber}          DATA 
    Set Test Variable    @{Devicenumber}          Check  
    Set Test Variable    @{Model}                 Category
    Set Test Variable    @{file}                  File
    Set Test Variable    @{type}                  Devicetype
    Set Test Variable    @{group}                 Devicegroup
    
      
    
     FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_Prod}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Product_data}            Read Cell Data By Coordinates   Simple_json    0     ${rowIndex}
                ${Link_data}               Read Cell Data By Coordinates   Simple_json    1     ${rowIndex}
                ${Rupee}                   Read Cell Data By Coordinates   Simple_json    2     ${rowIndex}
                ${Discount_data}           Read Cell Data By Coordinates   Simple_json    3     ${rowIndex}
                ${Metadata_data}           Read Cell Data By Coordinates   Simple_json    4     ${rowIndex}
                ${categoty}                Read Cell Data By Coordinates   Simple_json    5     ${rowIndex} 
                ${CAtegory_data}           Read Cell Data By Coordinates   Simple_json    6     ${rowIndex}
                ${file_data}               Read Cell Data By Coordinates   Simple_json    7     ${rowIndex}
                ${Devicetype}              Read Cell Data By Coordinates   Simple_json    8     ${rowIndex}
                ${Devicegroup}             Read Cell Data By Coordinates   Simple_json    9     ${rowIndex}   
            
                Append To List    ${Orgnization}        ${Product_data}
                Append To List    ${site}               ${Link_data}
                Append To List    ${Application}        ${Rupee}
                Append To List    ${Protocoltype}       ${Discount_data}
                Append To List    ${Serialnumber}       ${Metadata_data}
                Append To List    ${Devicenumber}       ${categoty} 
                Append To List    ${Model}              ${CAtegory_data}
                Append To List    ${file}               ${file_data}    
                Append To List    ${type}               ${Devicetype}
                Append To List    ${group}              ${Devicegroup}
                
            END
     END  
    log    ${Orgnization} 
    log    ${site}
    log    ${Application}
    log    ${Protocoltype}
    log    ${Serialnumber} 
    log    ${Devicenumber}
    log    ${Model} 
    log    ${file}
    log    ${type}
    log    ${group}




 
    Set Test Variable   ${strRowCount_Prod}
    [Return]    ${strRowCount_Prod}

Read Sensor Value_simple_json:
    Open Excel    E:/robot/Testdata/IOT.xls
    ${strColCount} =    Get Column Count  Sensor
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_sensor}      Get Row Count   Sensor
    


    Set Test Variable    @{Sensorname}            sensorvalue
    Set Test Variable    @{Hierarchy}             Hierar
    Set Test Variable    @{Min}                   Minimum 
    Set Test Variable    @{Max}                   Maximum
    Set Test Variable    @{Threshold}             Thresold
    Set Test Variable    @{Graph}                 graphbar
    Set Test Variable    @{Unit}                  unitbar 

        FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_sensor}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Sensor}                  Read Cell Data By Coordinates   Sensor    0     ${rowIndex}  
                ${Hierarchyvalue}          Read Cell Data By Coordinates   Sensor    1     ${rowIndex}  
                ${Minvalue}                Read Cell Data By Coordinates   Sensor    2     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    2     ${rowIndex}  
                ${Minvalue}=      Convert To Integer      ${MN}
                                  Set Test Variable     ${MOBILE NUMBER}    ${Minvalue}
                
                ${Maxvalue}                Read Cell Data By Coordinates   Sensor    3     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    3     ${rowIndex}  
                ${Maxvalue}=      Convert To Integer      ${MN}
                                  Set Test Variable     ${MOBILE NUMBER}    ${Maxvalue}
                
                ${Thresholdvalue}          Read Cell Data By Coordinates   Sensor    4     ${rowIndex}
                                 ${MN}=    Read Cell Data By Coordinates   Sensor    4     ${rowIndex}  
                ${Thresholdvalue}=      Convert To Integer      ${MN}
                                        Set Test Variable     ${MOBILE NUMBER}    ${Thresholdvalue}
                     
                ${Graphtype}               Read Cell Data By Coordinates   Sensor    5     ${rowIndex}
                ${Unitvalue}               Read Cell Data By Coordinates   Sensor    6     ${rowIndex}
                

                Append To List    ${Sensorname}         ${Sensor}
                Append To List    ${Hierarchy}          ${Hierarchyvalue}
                Append To List    ${Min}                ${Minvalue}
                Append To List    ${Max}                ${Maxvalue}
                Append To List    ${Threshold}          ${Thresholdvalue}
                Append To List    ${Graph}              ${Graphtype}
                Append To List    ${Unit}               ${Unitvalue}
            END
        END
    log    ${Sensorname}
    log    ${Hierarchy} 
    log    ${Min}
    log    ${Max}
    log    ${Threshold}
    log    ${Graph} 
    log    ${Unit}




 
    Set Test Variable   ${strRowCount_sensor_simple}
    [Return]    ${strRowCount_sensor_simple}


Create_XDK_Device_In_Device_Management_Invaild_json
    [Arguments]    ${strRowCount}   
    FOR   ${i}    IN RANGE    1    ${strRowCount}
    
    Click Element     xpath:/ html/body/div/div[1]/aside/section/ul/li[5]/a
    Sleep             5 seconds
    Click Button      ${click_element_add_app}
    Sleep             5 seconds
        
    Select From List By Label   xpath://html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select     ${Orgnization}[${i}]
    sleep    3
         
    Select From List By Label     id:siteId    ${site}[${i}]
    sleep    3
    
    Select From List By Label     id:appId    ${Application}[${i}]
    Sleep             2 seconds
    Select From List By Label     id:protocol_type    ${Protocoltype}[${i}]
    Sleep             2 seconds
    Input Text    id:serialNo    ${Serialnumber}[${i}]
    Sleep            2 Seconds
    Input Text    id:devName     ${Devicenumber}[${i}]
    Sleep            2 Seconds
    Input Text    id:modalId    ${Model}[${i}]
    Sleep             2 seconds
    Choose File   id:jsonFile        ${file}[${i}]
    Sleep              2 seconds    
    Select From List By Label     id:deviceType    ${type}[${i}]
    Select From List By Label     id:group        ${group}[${i}]
    Click Button    id:submit    
    END


 Read Product excel Sheet_invaild_Json:
    Open Excel    E:/robot/Testdata/IOT.xls
    ${strColCount} =    Get Column Count  Simple_json
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount_Prod}      Get Row Count   Simple_json
    
    
    
    Set Test Variable    @{Orgnization}           Product
    Set Test Variable    @{site}                  Link  
    Set Test Variable    @{Application}           Amt     
    Set Test Variable    @{Protocoltype}          Dis
    Set Test Variable    @{Serialnumber}          DATA 
    Set Test Variable    @{Devicenumber}          Check  
    Set Test Variable    @{Model}                 Category
    Set Test Variable    @{file}                  File
    Set Test Variable    @{type}                  Devicetype
    Set Test Variable    @{group}                 Devicegroup
    
      
    
     FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_Prod}
 	        FOR     ${colIndex}    IN RANGE   0  1
                ${Product_data}            Read Cell Data By Coordinates   Simple_json    0     ${rowIndex}
                ${Link_data}               Read Cell Data By Coordinates   Simple_json    1     ${rowIndex}
                ${Rupee}                   Read Cell Data By Coordinates   Simple_json    2     ${rowIndex}
                ${Discount_data}           Read Cell Data By Coordinates   Simple_json    3     ${rowIndex}
                ${Metadata_data}           Read Cell Data By Coordinates   Simple_json    4     ${rowIndex}
                ${categoty}                Read Cell Data By Coordinates   Simple_json    5     ${rowIndex} 
                ${CAtegory_data}           Read Cell Data By Coordinates   Simple_json    6     ${rowIndex}
                ${file_data}               Read Cell Data By Coordinates   Simple_json    7     ${rowIndex}
                ${Devicetype}              Read Cell Data By Coordinates   Simple_json    8     ${rowIndex}
                ${Devicegroup}             Read Cell Data By Coordinates   Simple_json    9     ${rowIndex}   
            
                Append To List    ${Orgnization}        ${Product_data}
                Append To List    ${site}               ${Link_data}
                Append To List    ${Application}        ${Rupee}
                Append To List    ${Protocoltype}       ${Discount_data}
                Append To List    ${Serialnumber}       ${Metadata_data}
                Append To List    ${Devicenumber}       ${categoty} 
                Append To List    ${Model}              ${CAtegory_data}
                Append To List    ${file}               ${file_data}    
                Append To List    ${type}               ${Devicetype}
                Append To List    ${group}              ${Devicegroup}
                
            END
     END  
    log    ${Orgnization} 
    log    ${site}
    log    ${Application}
    log    ${Protocoltype}
    log    ${Serialnumber} 
    log    ${Devicenumber}
    log    ${Model} 
    log    ${file}
    log    ${type}
    log    ${group}




 
    Set Test Variable   ${strRowCount_Prod}
    [Return]    ${strRowCount_Prod}
Delete_Device_Management:
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a      
    Sleep    2s
    Click Element    ${Delete_device}
    # Handle Alert    ACCEPT:Ok    

View_Device_Management:
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[6]/td[6]/button[1]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/button     
    Sleep    3s            


Edit_Device_Management:
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[4]/td[6]/button[2] 
    Sleep    3s              
    Input Text       xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div[4]/div[3]/input    90
    Sleep    3s    
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div[5]/div/button 
   
Manage_New_group_management:
    sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[7]/a
    sleep    2s    
    click Element    ${manage_group_}    
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[2]/input[2]
    Sleep    2s
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[2]/input[1]
    Sleep    2s
    Select From List By Value   xpath:/html/body/div/div[5]/section/div/div[3]/div[1]/select    ${select_value_site1}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[3]/div[2]/input
    sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section/div/div[3]/div[2]/input    OGR
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div/div[5]/div[1]/select    30
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section/div/section/ul/li[2]
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section/div/section/button


Manage_Exit_group_management:
    sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[7]/a
    sleep    2s    
    click Element    ${manage_group_}    
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[2]/input[2]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[2]/label[1]
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div/div[4]/div/select    111
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div/div[5]/div[1]/select    30
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section/div/div[6]/div[2]/div/button


Delete_group_Management:
    sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[7]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button[3]
    Sleep    2s
    # Handle Alert    ACCEPT:Ok

View_group_Management:
    sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[7]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button[1]     
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/section/div/div[1]/div[2]/button


Edit_group_Management:
    sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[7]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[4]/button[2]  
    Sleep    3s  



Device_Report_In_XDK_Device_management:
    sleep    3s
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    ${Fleet_vaild_value1_1}    
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    111
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button

 Device_Report_Invaild_Org_Device_management:   
     Sleep    3s
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Click Element      xpath:/html/body/div/div[5]/form/div[2]/div[1]/select
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button    


Device_Report_Invaild_Site_Device_management:    
    sleep    3s
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    ${Fleet_vaild_value1_1}    
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button    
Device_Report_Invaild_Device:   
    Sleep    2s 
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    ${Fleet_vaild_value1_1}    
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button

    
 Device_Report_Invaild_Table_view_Device_management:  
    Sleep    2s  
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    ${Fleet_vaild_value1_1}    
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    111
    Sleep    3s
    Click Element    xpath://*[@id="device_form"]/div[3]/div[2]/span[1]/div/button
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[3]/select    0
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button




Device_Report_In_Select_All_XDK_Device_management:
    Sleep    2s
    Click Element   xpath:/html/body/div/div[1]/aside/section/ul/li[8]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    111
    Sleep    3s
    Click Element    xpath://*[@id="device_form"]/div[3]/div[2]/span[1]/div/button
    Sleep    3s
    Select From List By Value                xpath:/html/body/div/div[5]/form/div[3]/div[3]/select    5
    Sleep    3s
    click Element    xpath:/html/body/div/div[5]/form/div[4]/div/button
    sleep    30s
    Execute JavaScript    window.scrollBy(0,400)
    Sleep    3s
    seleniumlibrary.Set Screenshot Directory    E:/IOT/iot screenshot/
    # Capture Element Screenshot    xpath:/html/body/grafana-app/div/div/react-container/div/div/div[1]/div/div[2]/div/div    
    Take Screenshot        E:/IOT/iot screenshot/1.jpeg

Verify serialNo is updated in mysql: 
    [Arguments]    ${SerialNo_var}
    ${output1}=    sqlconnect.Connectdb    (select * from iot_platform.tbl_device_info where serialNo="${SerialNo_var}")
	Log    ${output1}
    
    Set Global Variable    @{db_output}     ${output1}[serialNo],    ${output1}[appId],    ${output1}[modal]    
    [Return]    @{db_output}


# Verify_Mongo_DB_Connnection_Iot_Platform:
#     ${RESULTS}    FindOneByID    ${MONGODB_CONNECT_STRING}    62b2d07c7053b4770fa362d4
#     Log To Console    ${RESULTS}    
# Test find by fillter data from mongodb
#     &{FILLTER}     Create Dictionary   serialNo=XDKjio      created_time=2022-06-22T08:19:07.946+00:00
#     ${RESULTS}     Find    ${MONGODB_CONNECT_STRING}    ${FILLTER}
#     FOR    ${RESULT}    IN    @{RESULTS}
#            Log To Console    ${RESULT["phone"]}
#     END
# Test find data by ID from mongodb:
#     ${RESULTS}     FindOneByID    ${MONGODB_CONNECT_STRING}    "pid:16128"
#     Log To Console      ${RESULTS}
 



Downlink_Management_Downlink_Command:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/a
    Sleep    3s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/ul/li[1]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[3]/select    111
    Sleep    3s
    Choose File    xpath://*[@id="jsonFile"]    E:/IOT/json file for web/JSON FILES/DOWNLINK_json.txt
    Sleep    3s
    Execute Javascript    window.scrollBy(0,400)    
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/button

Downlink_Management_Downlink_History:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    3s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/a
    Sleep    3s    
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[9]/ul/li[2]/a
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    3s
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    3
    Select From List By Value    xpath:/html/body/div/div[5]/div[2]/div[3]/select    111
    Sleep    3s     
    Click Element    xpath:/html/body/div/div[5]/div[3]/div[1]/div
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/div[3]/div[2]/div
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/div[3]/div[1]/div
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/button

Fleet_Management_In_ADD_Driver_Management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    2s
    Click Element                ${Fleet_Add_Info_}    
    Sleep    2s
    Input Text                   ${Fleet_Input_Driver_}    ${Fleet_Input_Driver_name}
    Sleep    2s
    Input Text                   ${Fleet_Input_Mobile_}    ${Fleet_Input_Mobile_number}
    Sleep    2s
    Input Text                   ${Fleet_InputLicense_}    ${Fleet_Input_License_number}
    Sleep    2s      
    Execute Javascript    window.scrollBy(0,400)    
    # submit button missing
Fleet_Management_In_ADD_Driver_Management_Invalid_Org:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Click Element    ${Fleet_Sub_Btn}       


Fleet_Management_In_ADD_Driver_Management_Invalid_Site:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    2s
    Execute Javascript    window.scrollBy(0,400)    
    Sleep    2s
    Execute Javascript    window.scrollBy(0,200)
    Click Element    ${Fleet_Sub_Btn}       


Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_Name:       
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    2s
    Execute Javascript    window,scrollBy(0,400)
    Click Element    ${Fleet_Sub_Btn}


Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_MObile_number:       
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[1]/input    ${Fleet_Input_Driver_name}
    Sleep    2s
    Click Button    ${Fleet_Sub_Btn}    



Fleet_Management_In_ADD_Driver_Management_Invalid_Driver_Lincense:       
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[2]/select    ${Fleet_vaild_value2_2}
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[1]/input    ${Fleet_Input_Driver_name}
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[2]/input    ${Fleet_Input_Mobile_number}
    Sleep    2s
    Click Button    ${Fleet_sub_Btn}


Fleet_Management_In_ADD_Driver_Management_Reset:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s
    Click Element    ${click_element_add_app}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[3]/div[1]/div[1]/div[2]/button    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section[2]/div/div[2]/div/div/div[2]/select    45
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[3]/div[1]/div[2]/div[1]/div[3]/div/div/div[1]/input    ${Fleet_Input_Driver_name}
    Sleep    2s
    Execute Javascript    Window,scrollBy(0,400)
    Click Button    xpath:/html/body/div/div[5]/section[3]/div[2]/div/div/div/button[1]

Fleet_Management_In_View_Option:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s 
    Click Element    ${Fleet_View}  
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[1]/button
Fleet_Management_In_Edit_Option:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s 
    Click Element    ${Fleet_Edit}
    Sleep    2s
    Input Text        ${Fleet_Edit_value}    ${Fleet_Edit_value1}
    Sleep    2s
    click Element     ${Fleet_Edit_info}
    Sleep    1s
    # Handle Alert    Driver information has been updated successfully!:Ok

Fleet_Management_In_Delete_Option:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    3s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[1]/a 
    Sleep    2s 
    Click Element    ${Fleet_Delete_optn}
    Sleep    2s
    # Handle Alert    Ok

Verify Drivertbl is updated in mysql: 
    [Arguments]    ${Drivertbl_var}
    ${output1}=    sqlconnect.Connectdb    (select * from iot_platform.tbl_driver where Driver_name="${Drivertbl_var}")
	Log    ${output1}
    
    Set Global Variable    @{db_output1}     ${output1}[driver_name],    ${output1}[contact_number],    ${output1}[licence_no]    
    [Return]    @{db_output1}


Fleet_Management_In_Vehicle_Management:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile3}    30
    Sleep    2s
    Input Text        ${Fleet_vehicle_}    ${Fleet_vehicle_number}
    Sleep    2s
    Select From List By Value    ${Fleet_vehicle_Type}    ${Fleet_vehicle_Type1}
    Click Element       ${Fleet_Vehicle_sub_Btn}

Fleet_Management_In_Vehicle_Management_org_Invaild:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Sleep    2S
    Click Element    ${Fleet_Vehicle_sub_Btn}

Fleet_Management_In_Vehicle_Management_Site_Invaild:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    # Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    # Sleep    2s
    Click Element    ${Fleet_Vehicle_sub_Btn}



Fleet_Management_In_Vehicle_Management_App_Invaild:   
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Click Element    ${Fleet_Vehicle_sub_Btn}

Fleet_Management_In_Vehicle_Management_Invaild_Vechile_Number:   
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile3}    30
    Sleep    2s
    Click Element    ${Fleet_Vehicle_sub_Btn}

Fleet_Management_In_Vehicle_Management_Invaild_Truck:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile3}    30
    Sleep    2s
    Input Text        ${Fleet_vehicle_}    ${Fleet_vehicle_number}
    Sleep    2s
    Click Element    ${Fleet_Vehicle_sub_Btn}


 
Fleet_Management_In_Vehicle_Management_Reset:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    ${click_element_add_app}  
    Sleep    2s
    click Element    ${Fleet_vehicle_add_info} 
    Select From List By Value    ${Fleet_vaild_Vechile1}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile2}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Fleet_vaild_Vechile3}    30
    Sleep    2s
    Input Text        ${Fleet_vehicle_}    ${Fleet_vehicle_number}
    Sleep    2s   
    Click Element    ${Fleet_vhl_Reset}
                           
Fleet_Management_In_Vehicle_Management_View_:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr/td[5]/button[1]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/section/button
    
Fleet_Management_In_Vehicle_Management_Edit_:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr/td[5]/button[2]
    Sleep    2s
    Input Text        xpath:/html/body/div/div[5]/section/div/div[2]/div/div[2]/div[1]/input    ${Fleet_vehicle_number}
    Sleep    2s



Fleet_Management_In_Vehicle_Management_Delete_:
    Sleep    2s
    Page Should Contain    ${page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[2]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr/td[5]/button[3]
    Sleep    2s
    # submit button missing


Verify Vehicletbl is updated in mysql: 
    [Arguments]    ${Vehicletbl_var}
    ${output2}=    sqlconnect.Connectdb    (select * from iot_platform.tbl_vehicles where reg_no="${Vehicletbl_var}")
	Log    ${output2}
    
    Set Global Variable    @{db_output2}    ${output2}[reg_no],    ${output2}[vehicle_type],    ${output2}[status]    
    [Return]    @{db_output2}




Fleet_Management_In_Device_Vehicle_Assocation:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Page Should contain    ${Device - Vehicle Association}
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Select From List By Value    ${Device_vechile_Assocation_Device_list}    154
    Sleep    2s
    Select From List By Value    xpath://*[@id="siteId"]    36 
    # submit btn missing

Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Org:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Site:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Click Element    ${Assign_btn}


Fleet_Management_In_Device_Vehicle_Assocation_Invaild_App:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Device_List:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Device_Vehicle_Assocation_Invaild_Vehicle_List:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    ${Device_Vehicle_Association}    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Select From List By Value    ${Device_vechile_Assocation_Device_list}    155
    Click Element    ${Assign_btn}

Fleet_Management_In_Device_Vehicle_Assocation_Delete:
    Sleep    2s
    Page Should Contain    ${Page_contain}
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/a
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[3]/a    
    Sleep    2s
    Click Element    ${Driver_vehicle_delete}
    # Handle Alert    Accept:Ok

Verify tbl is updated in mysql: 
    [Arguments]    ${Vehicletbl_var}
    ${output2}=    sqlconnect.Connectdb    (select * from iot_platform.tbl_vehicles where reg_no="${Vehicletbl_var}")
	Log    ${output2}
    
    Set Global Variable    @{db_output2}    ${output2}[reg_no],    ${output2}[vehicle_type],    ${output2}[status]    
    [Return]    @{db_output2}



Fleet_Management_In_Driver_Vehicle_Assocation:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s            
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a       
    Sleep    2s
    Page Should contain    ${Driver - Vehicle Association}
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Select From List By Value    ${Device_vechile_Assocation_Device_list}    43
    Sleep    2s
    Select From List By Value    xpath://*[@id="siteId"]    20 
    # submit btn missing

Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Org:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s            
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Site:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s            
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_App:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s            
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Device_List:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s            
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Click Element    ${Assign_btn}

Fleet_Management_In_Driver_Vehicle_Assocation_Invaild_Vehicle_List:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s        
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_App}    30
    Sleep    2s
    Select From List By Value    ${Device_vechile_Assocation_Device_list}    43
    Click Element    ${Assign_btn}

Fleet_Management_In_Driver_Vehicle_Assocation_Delete:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[4]/a    
    Sleep    2s
    Click Element    ${Driver_vehicle_delete}
    # Handle Alert    Ok


Fleet_Management_In_Route_Configuration:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                        
    Select From List By Value    ${Route_Config_App}    30
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[1]/input    Villupuram
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[2]/input    Thiruvennainallur
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[3]/input    Route
    Select From List By Label   xpath:/html/body/div/div[5]/div[4]/div[1]/select    DRIVING
    # Execute Javascript    Window,scrollBy(0,1600)
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[1]/button
    Execute Javascript    Window,scrollBy(1600,1600)
    #sub btn Missing

Fleet_Management_In_Route_Configuration_Invaild_Org:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button
    
   

Fleet_Management_In_Route_Configuration_Invaild_Site:    
    Sleep    2s
    Page Should Contain    Organization - arorg
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    3s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    3s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button

Fleet_Management_In_Route_Configuration_Invaild_App:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                            
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button

Fleet_Management_In_Route_Configuration_Invaild_Origin:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                        
    Select From List By Value    ${Route_Config_App}    30
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button




Fleet_Management_In_Route_Configuration_Invaild_Destination:    
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                        
    Select From List By Value    ${Route_Config_App}    30
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[1]/input    Villupuram
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button


Fleet_Management_In_Route_Configuration_Invaild_Route:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                        
    Select From List By Value    ${Route_Config_App}    30
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[1]/input    Villupuram
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[2]/input    Thiruvennainallur
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button

Fleet_Management_In_Route_Configuration_Invaild_Travel_mode:
    Sleep    2s
    Page Should Contain    Organization - arorg
    sleep    2s    
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    ${Device_Vehicle_Association_org}    ${Fleet_vaild_value1_1}
    Sleep    2s
    Select From List By Value    ${Route_Config_Site}    ${Fleet_vaild_value2_2}
    Sleep    2s                        
    Select From List By Value    ${Route_Config_App}    30
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[1]/input    Villupuram
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[2]/input    Thiruvennainallur
    Input Text    xpath:/html/body/div/div[5]/div[3]/div[3]/input    Routes    
    Click Element    xpath:/html/body/div/div[5]/div[5]/div[2]/button



Fleet_Management_In_Route_Configuration_View_option:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s    
    Click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[10]/ul/li[5]/a
    Sleep    2s        
    click Element    xpath:/html/body/div/div[5]/div[4]/div/div/div/div[2]/div/table/tbody/tr[1]/td[6]/button    
                        
Fleet_Management_In_Route_Configuration_sign_out:
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${cancelsignout}
    Sleep    ${Time}
    click Element    ${signout}  
    Sleep    ${Time}
    Click Element    ${Exitsignout}

Fleet_Management_In_Trip_Generation:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    17
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button    
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/ul/li[2]/a/label
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button
    Sleep    2s
    Click Element       xpath:/html/body/div[1]/div[5]/form/div[4]/div[2]/input              
    Sleep    2s
    Click Element    xpath:/html/body/div[2]/div[1]/table/tbody/tr[5]/td[5]
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[3]/select
    sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/form/div[4]/div[3]/select    03:30
    Sleep    2s
    # Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Trip_Generation_View_Option:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep     2s    
    Click Element    //th[contains(text(),'Route_Status')]
    sleep    2s
    Click Element    xpath://tr[1]/td/button[@title='view']
    Sleep    2s                
    click Element    xpath:/html/body/div/div[5]/form/div[5]/div[1]/button

Fleet_Management_In_Trip_Generation_Delete_Option:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep     2s    
    Click Element    //th[contains(text(),'Route_Status')]
    sleep    2s
    Click Element    xpath://tr[1]/td/button[@title='delete']
    Sleep    2s                
    # click Element    xpath:/html/body/div/div[5]/div/div/div/div/div[2]/div/table/tbody/tr[3]/td[8]/button[2]

Fleet_Management_In_Trip_Generation_Invaild_Org:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button


Fleet_Management_In_Trip_Generation_Invaild_Site:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s    
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Trip_Generation_Invaild_App:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s    
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s    
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Trip_Generation_Invaild_Route:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s    
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s    
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30    
    sleep    2s 
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Trip_Generation_Invaild_Driver:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    17
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Trip_Generation_Invaild_Date:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    17
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button    
    Sleep    2s    
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/ul/li[2]/a/label
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button


Fleet_Management_In_Trip_Generation_Invaild_Time:    
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[6]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[1]/select    61    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[2]/select    45    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[2]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/div[3]/div[1]/select    17
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button    
    Sleep    2s    
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/ul/li[2]/a/label
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[4]/div[1]/span[1]/div/button
    Sleep    2s
    Click Element       xpath:/html/body/div[1]/div[5]/form/div[4]/div[2]/input              
    Sleep    2s
    Click Element    xpath:/html/body/div[2]/div[1]/table/tbody/tr[5]/td[5]
    Sleep    2s
    Click Element       xpath:/html/body/div[1]/div[5]/form/div[4]/div[2]/input              
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/div[5]/button

Fleet_Management_In_Upcoming_Trips:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[1]/select    21
    Sleep    2s            
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div[2]/select/option[2] 
    Sleep    2s
    Click Element       xpath:/html/body/div/div[5]/section/div[3]/div/div              
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button


Fleet_Management_In_Upcoming_Trips_Invaild_Org:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button


Fleet_Management_In_Upcoming_Trips_Invaild_Site:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button
Fleet_Management_In_Upcoming_Trips_Invaild_App:    
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button

Fleet_Management_In_Upcoming_Trips_Invaild_Route:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button

Fleet_Management_In_Upcoming_Trips_Invaild_Trip:    
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[1]/select    17
    Sleep    2s            
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button

Fleet_Management_In_Upcoming_Trips_Invaild_Date:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[7]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[1]/select    21
    Sleep    2s            
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div[2]/select/option[2] 
    Sleep    2s
    Click Element       xpath:/html/body/div/div[5]/section/div[3]/div/div              
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[4]/div/button    

Fleet_Management_In_Complete_Trips:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[8]/a
    sleep    2s
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[2]/div[1]/select    17
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section/div[2]/div[2]/select/option[2] 
    Sleep    2s                
    Click Element       xpath:/html/body/div/div[5]/section/div[4]/div/button              

Fleet_Management_In_Complete_Trips_Invaild_Org:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[8]/a
    sleep    2s
    Click Element       xpath:/html/body/div/div[5]/section/div[4]/div/button    


Fleet_Management_In_Complete_Trips_Invaild_Site:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[8]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                            
    Click Element       xpath:/html/body/div/div[5]/section/div[4]/div/button


Fleet_Management_In_Complete_Trips_Invaild_App:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[8]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                            
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                        
    Click Element       xpath:/html/body/div/div[5]/section/div[4]/div/button    


Fleet_Management_In_Complete_Trips_Invaild_Route:
    Sleep    2s
    Page Should Contain    Organization - arorg
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div[1]/aside/section/ul/li[10]/ul/li[8]/a
    sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[1]/select    61    
    sleep    2s                            
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[2]/select    45    
    sleep    2s                        
    Select From List By Value    xpath:/html/body/div/div[5]/section/div[1]/div[3]/select    30    
    sleep    2s    
    Click Element       xpath:/html/body/div/div[5]/section/div[4]/div/button        








# Create a XDK Device Management1:
#    [Arguments]    ${strRowCount}   
#    FOR   ${i}    IN RANGE    1    ${strRowCount}
    
#     Click Element     xpath:/html/body/div/div[1]/aside/section/ul/li[4]/a
#     Sleep             5 seconds
#     Click Button      xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
#     Sleep             5 seconds
        
#     Select From List By Label   xpath://html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select     ${Orgnization}[${i}]
#     sleep    3
         
#     Select From List By Label     id:siteId    ${site}[${i}]
#     sleep    3
    
#     Select From List By Label     id:appId    ${Application}[${i}]
#     Sleep             2 seconds
#     Select From List By Label     id:protocol_type    ${Protocoltype}[${i}]
#     Sleep             2 seconds
#     Input Text    id:serialNo    ${Serialnumber}[${i}]
#     Sleep            2 Seconds
#     Input Text    id:devName     ${Devicenumber}[${i}]
#     Sleep            2 Seconds
#     Input Text    id:modalId    ${Model}[${i}]
#     Sleep             2 seconds
#     Choose File   id:jsonFile        ${file}[${i}]
#     Sleep              2 seconds    
#     Select From List By Label     id:deviceType    ${type}[${i}]
#     Select From List By Label     id:group        ${group}[${i}]
#     Click Button    id:submit
#     Handle Alert       action=ACCEPT
    
#      FOR   ${i}    IN RANGE    1    ${strRowCount_sensor}
#            Click Button    xpath://*[@id="addInfo"]
#            Sleep    1
#            Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[1]/input        ${Sensorname}[${i}]
#            Select From List By Label   xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[2]/select    ${Hierarchy}[${i}]   
#            Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[3]/input    ${Min}[${i}]    
#            Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[4]/input   ${Max}[${i}]
#            Input Text      xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[5]/input    ${Threshold}[${i}]
#            Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[6]/select   ${Graph}[${i}]
#            Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[${i}]/div/div[7]/select   ${Unit}[${i}]
           
#      END
#      Click Button    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2] 
#      Handle Alert       action=ACCEPT
    
#    END

# # Read Product excel Sheet:
#     Open Excel    D:/robot/Testdata/IOT.xls
#     ${strColCount} =    Get Column Count  IOT
#     Set Test Variable   ${Col_ID}   ${strColCount}
#     ${strRowCount_Prod}      Get Row Count   IOT
    
    
    
#     Set Test Variable    @{Orgnization}           Product
#     Set Test Variable    @{site}                  Link  
#     Set Test Variable    @{Application}           Amt     
#     Set Test Variable    @{Protocoltype}          Dis
#     Set Test Variable    @{Serialnumber}          DATA 
#     Set Test Variable    @{Devicenumber}          Check  
#     Set Test Variable    @{Model}                 Category
#     Set Test Variable    @{file}                  File
#     Set Test Variable    @{type}                  Devicetype
#     Set Test Variable    @{group}                 Devicegroup
    
      
    
#      FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_Prod}
#  	        FOR     ${colIndex}    IN RANGE   0  1
#                 ${Product_data}            Read Cell Data By Coordinates   IOT    0     ${rowIndex}
#                 ${Link_data}               Read Cell Data By Coordinates   IOT    1     ${rowIndex}
#                 ${Rupee}                   Read Cell Data By Coordinates   IOT    2     ${rowIndex}
#                 ${Discount_data}           Read Cell Data By Coordinates   IOT    3     ${rowIndex}
#                 ${Metadata_data}           Read Cell Data By Coordinates   IOT    4     ${rowIndex}
#                 ${categoty}                Read Cell Data By Coordinates   IOT    5     ${rowIndex} 
#                 ${CAtegory_data}           Read Cell Data By Coordinates   IOT    6     ${rowIndex}
#                 ${file_data}               Read Cell Data By Coordinates   IOT    7     ${rowIndex}
#                 ${Devicetype}              Read Cell Data By Coordinates   IOT    8     ${rowIndex}
#                 ${Devicegroup}             Read Cell Data By Coordinates   IOT    9     ${rowIndex}   
            
#                 Append To List    ${Orgnization}        ${Product_data}
#                 Append To List    ${site}               ${Link_data}
#                 Append To List    ${Application}        ${Rupee}
#                 Append To List    ${Protocoltype}       ${Discount_data}
#                 Append To List    ${Serialnumber}       ${Metadata_data}
#                 Append To List    ${Devicenumber}       ${categoty} 
#                 Append To List    ${Model}              ${CAtegory_data}
#                 Append To List    ${file}               ${file_data}    
#                 Append To List    ${type}               ${Devicetype}
#                 Append To List    ${group}              ${Devicegroup}
                
#             END
#      END  
#     log    ${Orgnization} 
#     log    ${site}
#     log    ${Application}
#     log    ${Protocoltype}
#     log    ${Serialnumber} 
#     log    ${Devicenumber}
#     log    ${Model} 
#     log    ${file}
#     log    ${type}
#     log    ${group}




 
#     Set Test Variable   ${strRowCount_Prod}
#     [Return]    ${strRowCount_Prod}

# Read Sensor Value1234:
#     Open Excel    D:/robot/Testdata/IOT.xls
#     ${strColCount} =    Get Column Count  Sensor
#     Set Test Variable   ${Col_ID}   ${strColCount}
#     ${strRowCount_sensor}      Get Row Count   Sensor
    


#     Set Test Variable    @{Sensorname}            sensorvalue
#     Set Test Variable    @{Hierarchy}             Hierar
#     Set Test Variable    @{Min}                   Minimum 
#     Set Test Variable    @{Max}                   Maximum
#     Set Test Variable    @{Threshold}             Thresold
#     Set Test Variable    @{Graph}                 graphbar
#     Set Test Variable    @{Unit}                  unitbar 

#         FOR    ${rowIndex}     IN RANGE    1    ${strRowCount_sensor}
#  	        FOR     ${colIndex}    IN RANGE   0  1
#                 ${Sensor}                  Read Cell Data By Coordinates   Sensor    0     ${rowIndex}  
#                 ${Hierarchyvalue}          Read Cell Data By Coordinates   Sensor    1     ${rowIndex}  
#                 ${Minvalue}                Read Cell Data By Coordinates   Sensor    2     ${rowIndex}
#                                  ${MN}=    Read Cell Data By Coordinates   Sensor    2     ${rowIndex}  
#                 ${Minvalue}=      Convert To Integer      ${MN}
#                                   Set Test Variable     ${MOBILE NUMBER}    ${Minvalue}
                
#                 ${Maxvalue}                Read Cell Data By Coordinates   Sensor    3     ${rowIndex}
#                                  ${MN}=    Read Cell Data By Coordinates   Sensor    3     ${rowIndex}  
#                 ${Maxvalue}=      Convert To Integer      ${MN}
#                                   Set Test Variable     ${MOBILE NUMBER}    ${Maxvalue}
                
#                 ${Thresholdvalue}          Read Cell Data By Coordinates   Sensor    4     ${rowIndex}
#                                  ${MN}=    Read Cell Data By Coordinates   Sensor    4     ${rowIndex}  
#                 ${Thresholdvalue}=      Convert To Integer      ${MN}
#                                         Set Test Variable     ${MOBILE NUMBER}    ${Thresholdvalue}
                     
#                 ${Graphtype}               Read Cell Data By Coordinates   Sensor    5     ${rowIndex}
#                 ${Unitvalue}               Read Cell Data By Coordinates   Sensor    6     ${rowIndex}
                

#                 Append To List    ${Sensorname}         ${Sensor}
#                 Append To List    ${Hierarchy}          ${Hierarchyvalue}
#                 Append To List    ${Min}                ${Minvalue}
#                 Append To List    ${Max}                ${Maxvalue}
#                 Append To List    ${Threshold}          ${Thresholdvalue}
#                 Append To List    ${Graph}              ${Graphtype}
#                 Append To List    ${Unit}               ${Unitvalue}
#             END
#         END
#     log    ${Sensorname}
#     log    ${Hierarchy} 
#     log    ${Min}
#     log    ${Max}
#     log    ${Threshold}
#     log    ${Graph} 
#     log    ${Unit}




 
#     Set Test Variable   ${strRowCount_sensor}
#     [Return]    ${strRowCount_sensor}



Complex_XDK_management:
    Sleep    2s
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[2]/select    45
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[3]/select    30
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[1]/select    mqtt
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[2]/input    XDK1110
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[1]/input    XDK1110
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[2]/input    XDK1110
    sleep    2s
    Choose File    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[3]/input    ${CURDIR}\\COMPLEX_XDKDEVICE.json    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[4]/div[1]/select    1
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[5]/div[1]/select    111
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[6]/div/button
    Handle Alert    action=ACCEPT
    Sleep    5s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[1]/div/button      
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[1]/input    Acoustic
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select    deviceSchema.Acoustic[0].Value
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[3]/input    0
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[4]/input    100
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[5]/input    10
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select    3D
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    # Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2]

simple_XDK_MAnagement:
    Sleep    2s
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[2]/select    45
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[3]/select    30
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[1]/select    mqtt
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[2]/input    XDK111011
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[1]/input    XDK111011
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[2]/input    XDK111011
    sleep    2s
    Choose File    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[3]/input    ${CURDIR}\\SIMPLE_XDKDEVICE.txt    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[4]/div[1]/select    1
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[5]/div[1]/select    111
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[6]/div/button
    Handle Alert    action=ACCEPT
    Sleep    5s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[1]/div/button      
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[1]/input    Temperature
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select    deviceSchema.Temperature
    Sleep    2s                        
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[3]/input    0
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[4]/input    100
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[5]/input    10
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select    2D
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    # Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2]


Gps_XDK_Management:
    Sleep    2s
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[2]/select    45
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[3]/select    30
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[1]/select    https
    Sleep    2s                            
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[2]/input    GPS11111
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[1]/input    GPS11111
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[2]/input    GPS11111
    sleep    2s
    Choose File    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[3]/input    ${CURDIR}\\GPS_JSON.txt    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[4]/div[1]/select    2
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[5]/div[1]/select    109
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[6]/div/button
    Handle Alert    action=ACCEPT
    Sleep    5s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[1]/div/button      
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[1]/input    longitude
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select    deviceSchema.longitude
    Sleep    2s                        
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[3]/input    0
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[4]/input    1
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[5]/input    0
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select    2D
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[1]/div/button      
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[2]/div/div[1]/input    latitude
    Sleep    2s
    click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[2]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[2]/div/div[2]/select    deviceSchema.latitude
    Sleep    2s                        
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[2]/div/div[3]/input    0
    Sleep    2s            
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[2]/div/div[4]/input    1
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div[2]/div/div[5]/input    0
    sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s
    Select From List By Label    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select    2D
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[4]/div/div/div[6]/select
    Sleep    2s    
    # Click Element    xpath:/html/body/div/div[5]/section[2]/div/div/div[1]/div[5]/div/div/button[2]

XDK_management_invaid_json:
    Sleep    2s
    click Element    xpath:/html/body/div/div[1]/aside/section/ul/li[6]/a
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/div[1]/div[2]/button[2]
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[1]/select    61
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[2]/select    45
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[1]/div[3]/select    30
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[1]/select    https
    Sleep    2s                            
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[2]/div[2]/input    GPS11111
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[1]/input    GPS11111
    Sleep    2s
    Input Text    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[2]/input    GPS11111
    sleep    2s
    # Choose File    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[3]/div[3]/input    ${CURDIR}\\GPS_JSON.txt    
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[4]/div[1]/select    2
    Sleep    2s
    Select From List By Value    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[5]/div[1]/select    109
    Sleep    2s
    Click Element    xpath:/html/body/div/div[5]/form/section/div/div[2]/div[1]/div[6]/div/button
