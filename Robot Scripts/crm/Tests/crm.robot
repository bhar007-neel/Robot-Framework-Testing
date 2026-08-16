*** Settings ***
Documentation    This is some basic info about SUITE
Library          SeleniumLibrary


#Run the Script
# robot -d Results Tests/crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006     smoke       Contacts
    set selenium speed      1.2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/        edge

    #resize browser close window
    set window position     x=341    y=169
    set window size         width=1002  height=1090


    sleep                   3s
    close browser




*** Keywords ***
