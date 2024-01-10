*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary
Resource    Variables.robot
Resource    Variables_InputForms.robot
Resource    Variables_DatePickers.robot

*** Keywords ***
GoToWeb
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window

SeleniumEasy
    Wait Until Element Contains    //*[@id="site-name"]/a    Selenium Easy