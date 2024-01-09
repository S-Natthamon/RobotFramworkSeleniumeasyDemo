*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary
Resource    Variables.robot

*** Keywords ***
GoToWeb
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window