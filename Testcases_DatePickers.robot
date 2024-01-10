*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary
Resource    Variables.robot
Resource    Variables_DatePickers.robot
Resource    Keyword.robot


*** Test Cases ***
Testcase_08 : Bootstrap Date Picker
    GoToWeb
    SeleniumEasy
    Click Element    ${DatePicker}
    Click Element    ${BootstrapDatePicker}

    #Date Example
    Wait Until Element Contains     //div[normalize-space()="Date Example :"]    Date Example :
    Click Element    ${DateExample}
    Sleep    5s
    Click Element    ${DateToDay}
    Sleep    3s
    Click Element    ${DateExample}
    Click Element    ${DateClere}
    Sleep    3s

    #Date Range Example
    Wait Until Element Contains     //div[normalize-space()="Date Range Example :"]    Date Range Example :
    Click Element    ${DateRangeStart}
    Sleep    3s
    Click Element    ${Input_DateRangeStart}
    Click Element    ${DateRangeEnd}
    Sleep    3s
    Click Element    ${Input_DateRangeEnd}

Testcase_09 : JQuery Date Picker Demo
    GoToWeb
    SeleniumEasy
    Click Element    ${DatePicker}
    
    #JQuery Date Picker Demo
    #Wait Until Element Contains    //div[normalize-space()="Date Range Picker"]       Date Range Picker
    # Click Element    ${JQueryDateForm}
    # Sleep    3s
    # Click Element    ${Input_JQueryDateForm}
    # Click Element    ${JQueryDateTo}
    # Sleep    3s
    # Click Element    ${Input_JQueryDateTo}    
    # Sleep    3s
