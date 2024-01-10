*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary
Resource    Variables_InputForms.robot
Resource    Keyword.robot

*** Test Cases ***
TestCases_01 : Simple Form Demo
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${SimpleFormDemo}

    #Single Input Field
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[1]/div[1]    Single Input Field
    Input Text       ${EnterMessage}    ${Input_EnterMessage}
    Click Button     ${ShowMessage}
    Wait Until Element Contains    id:display    ${Input_EnterMessage}
    Sleep    5s

    #Two Input Fields
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[2]/div[1]    Two Input Fields
    Input Text        ${EnterValueA}     ${Input_EnterValueA}
    Input Text        ${EnterValueB}     ${Input_EnterValueB}
    Click Button      ${GetTotal}
 #   Wait Until Element Contains    id:displayvalue    ${Sum_EnterValue}

TestCases_02 : Checkbox Demo
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${CheckboxDemo}

    #Single Checkbox Demo
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[1]/div[1]    Single Checkbox Demo
    Select Checkbox  ${CilckOnBox}
    Select Checkbox  ${DefaultCheck} 
    Wait Until Element Contains    id:txtAge    Success - Check box is checked 

    #Multiple Checkbox Demo
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[2]/div[1]    Multiple Checkbox Demo
    Select Checkbox                ${MultiCheckbox1}
    Checkbox Should Be Selected    ${MultiCheckbox1}
    Select Checkbox                ${MultiCheckbox2}
    Select Checkbox                ${MultiCheckbox3}
    Select Checkbox                ${MultiCheckbox4}
    Sleep    3s
    Unselect Checkbox              ${MultiCheckbox1}
    Checkbox Should Not Be Selected    ${MultiCheckbox1}
    Unselect Checkbox              ${MultiCheckbox3}
    Sleep    5s
    Click Element               ${CheckAll}
    Click Element               ${UncheckAll}
    Sleep    5s

TestCases_03 : RadioButton Demo
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${RadioButtonDemo}    

    #Radio Button Demo
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[1]/div[1]    Radio Button Demo
    Click Button    ${MaleRadio}
    Click Element   ${GetCheckedValue} 
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[1]/div[2]/p[3]    Radio button 'Male' is checked
    Sleep    3s
    Click Button    ${FemaleRadio}
    Click Element   ${GetCheckedValue} 
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[1]/div[2]/p[3]    Radio button 'Female' is checked
    Sleep    3s

    #Group Radio Buttons Demo
    Wait Until Element Contains    //*[@id="easycont"]/div/div[2]/div[2]/div[1]    Group Radio Buttons Demo
    Click Button    ${MaleRadioGroup}
    Click Button    ${5to15RadioGroup}
    Click Element    ${GetValue}
    Element Should Be Visible    //p[@class='groupradiobutton']    ${MaleRadioGroup}
    Element Should Be Visible    //p[@class='groupradiobutton']    ${5to15RadioGroup}

TestCases_04 : SelectDropdownList Demo
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${SelectDropdownList}
    
    #Select List Demo
    Wait Until Element Contains    //div[normalize-space()="Select List Demo"]    Select List Demo

    FOR    ${SelectListDemo}    IN  @{FilterSelectAday}
        Click Element    ${SelectAday}
        Sleep   2s
        Select From List By Value     ${SelectAday}     ${SelectListDemo}
        Element Should Be Visible       //p[@class="selected-value"]        ${FilterSelectAday}
        Sleep    3s
    END 
    
    # #Multi Select List Demo
    Select From List By Index    ${MultiSelectList}     5  
    Select From List By Label    ${MultiSelectList}     Ohio
    Select From List By Value    ${MultiSelectList}     New Jersey  
    sleep     2s 
    @{selectedValues}=     Get Selected List Values    ${MultiSelectList} 
    ${numOfSelected} =    Get Length    ${selectedValues}
    # Log To Console    "Totol selected Items : ",${numOfSelected}    
    # Log Many    @{selectedValues}
    Click Element    ${FirstSelected} 

TestCase_05 : Input Form Submit
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${InputFormSubmit}

    #InputForm
    Input Text     ${From_FirstName}    ${Input_FirstName}    
    Input Text     ${From_LastName}     ${Input_LastName}
    Input Text     ${From_Email}        ${Input_Email}
    Input Text     ${From_Phone}        ${Input_Phone}
    Input Text     ${From_Address}      ${Input_Address}
    Input Text     ${From_city}         ${Input_city}
    Select From List By Label    ${From_state}        ${Input_state}  
    Sleep    5s
    Input Text     ${From_ZipCode}      ${Input_ZipCode}
    Click Element  ${No_Hosting}   
    Input Text     ${From_ProjectDescription}    ${Input_ProjectDescription}
    Click Element    ${From_Send}

TestCase_06 : Ajax Form Submit
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${AjaxFormSubmit}   

    #AjaxForm
    Input Text       ${AjaxForm_Name}           ${Input_AjaxForm_Name}
    Input Text       ${AjaxForm_Comment}        ${Input_AjaxForm_Comment}
    Click Button     ${Ajax_Submit} 
    Element Should Be Visible        ${Input_Ajax_Submit}    Form submited Successfully!

Testcase_07 : JQuery Select dropdown
    GoToWeb
    SeleniumEasy
    Click Element    ${InputForms}
    Click Element    ${JQuerySelectdropdown}

    #JQuery Drop Down with Search box