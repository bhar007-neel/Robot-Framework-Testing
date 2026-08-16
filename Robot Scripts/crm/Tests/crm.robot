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
    set selenium speed      0.2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/        edge

    #resize browser close window
    set window position     x=150    y=50
    set window size         width=1200  height=1090

    page should contain    Customers Are Priority One!

    click link              xpath=//*[@id="SignIn"]
    page should contain    Login

    input text              id=email-id     admin@robotframeworktutorial.com
    input text              id=password     qwe
    click button            Submit
    page should contain     Our Happy Customers

    click link            id=new-customer
    wait until page contains     Add Customer
    input text              id=EmailAddress           nomi@gmail.com
    input text              id=FirstName               Nomi
    input text              id=LastName                 B
    input text              id=City                     Ottawa
    select from list by value              id=StateOrRegion            TX
    select radio button    gender           male
    select checkbox        name=promos-name
    click button           Submit




    sleep                   3s
    close browser




*** Keywords ***
