*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary

*** Variables ***

${BROWSER}      edge
${URL}          https://demo.seleniumeasy.com/
${Timeout}      10s


${AllExamples}           Xpath://*[@id="treemenu"]/li/a
# InputForm 
${InputForms}            //*[@id="treemenu"]/li/ul/li[1]
      # SimpleFormDemo
  # Menu
${SimpleFormDemo}        //*[@id="treemenu"]/li/ul/li[1]/ul/li[1]/a
  # Input
${EnterMessage}          //*[@id="user-message" and @class='form-control']
${Input_EnterMessage}    demo.seleniumeasy.com
${EnterValueA}           //*[@id="value1" and @class='form-control']
${EnterValueB}           //*[@id="value2" and @class='form-control']
${Input_EnterValueA}     2     
${Input_EnterValueB}     3
${Sum_EnterValue} =    ${Input_EnterValueA}  +  ${Input_EnterValueB}
  # Button
${ShowMessage}           //*[@id="get-input"]/button
${GetTotal}              //*[@id="gettotal"]/button

      # CheckboxDemo
  # Menu
${CheckboxDemo}          //*[@id="treemenu"]/li/ul/li[1]/ul/li[2]/a
  # Input
${CilckOnBox}            id:isAgeSelected 
${DefaultCheck}          //*[@id="easycont"]/div/div[2]/div[1]/div[2]/div[1]/form/label[2]/input
${DefaultDisable}        //*[@id="easycont"]/div/div[2]/div[1]/div[2]/div[1]/form/label[3]/input
${MultipleCheckbox}      class:cb1-element
${MultiCheckbox1}        xpath:(//input[@class='cb1-element'])[1]
${MultiCheckbox2}        xpath:(//input[@class='cb1-element'])[2]
${MultiCheckbox3}        xpath:(//input[@class='cb1-element'])[3]
${MultiCheckbox4}        xpath:(//input[@class='cb1-element'])[4]
  # Button
${UncheckAll}            //*[@id="check1" and @value ='Uncheck All']
${CheckAll}              //*[@id="check1" and @value ='Check All']

      # SimpleFormDemo
  # Menu
${SimpleFormDemo}        //*[@id="treemenu"]/li/ul/li[1]/ul/li[1]/a
  # Input
${EnterMessage}          //*[@id="user-message" and @class='form-control']
${Input_EnterMessage}    demo.seleniumeasy.com
${EnterValueA}           //*[@id="value1" and @class='form-control']
${EnterValueB}           //*[@id="value2" and @class='form-control']
${Input_EnterValueA}     2     
${Input_EnterValueB}     3
${Sum_EnterValue} =    ${Input_EnterValueA}  +  ${Input_EnterValueB}
  # Button
${ShowMessage}           //*[@id="get-input"]/button
${GetTotal}              //*[@id="gettotal"]/button

      # RadioButtonDemo
  # Menu
${RadioButtonDemo}         //*[@id="treemenu"]/li/ul/li[1]/ul/li[3]/a
  # Input
${MaleRadio}               //input[@name='optradio' and @value='Male']
${FemaleRadio}             //input[@name='optradio' and @value='Female']
${MaleRadioGroup}          //input[@name='gender' and @value='Male']
${FemaleRadioGroup}        //input[@name='gender' and @value='Female']
${0to5RadioGroup}          //input[@name='ageGroup' and @value = '0 - 5']        
${5to15RadioGroup}         //input[@name='ageGroup' and @value = '5 - 15']
${15to50RadioGroup}        //input[@name='ageGroup' and @value = '15 - 50']

  # Button
${GetCheckedValue}         //*[@id="buttoncheck"]
${GetValue}                //*[@id="easycont"]/div/div[2]/div[2]/div[2]/button

      # SelectDropdownListDemo
  # Menu
${SelectDropdownList}      //*[@id="treemenu"]/li/ul/li[1]/ul/li[4]/a
  # Input
${SelectAday}              id:select-demo    
@{FilterSelectAday}=       Sunday    Monday    Tuesday    Wednesday    Thursday    Friday    Saturday
${MultiSelectList}         id:multi-select
@{FilterMultiSelectList}=  California     Florida    New Jersey    New York    Ohio    Texas    Pennsylvania    Washington
  # Button
${FirstSelected}           id:printMe
${GetAllSelected}          id:printAll

      # InputFormSubmitDemo
  # Menu
${InputFormSubmit}           //*[@id="treemenu"]/li/ul/li[1]/ul/li[5]/a
  # Input
${From_FirstName}            //input[@placeholder="First Name" and @name= 'first_name']
${From_LastName}             //input[@placeholder="Last Name" and @name= 'last_name']
${From_Email}                //input[@placeholder="E-Mail Address" and @name= 'email']
${From_Phone}                //input[@placeholder="(845)555-1212" and @name= 'phone']
${From_Address}              //input[@placeholder="Address" and @name= 'address']
${From_city}                 //input[@placeholder="city" and @name= 'city']
${From_state}                //*[@id="contact_form"]/fieldset/div[7]/div/div/select
${From_ZipCode}              //input[@placeholder="Zip Code" and @name= 'zip']
${From_Website}              //input[@placeholder="Website or domain name" and @name= 'website']
${From_ProjectDescription}   //textarea[@placeholder="Project Description" and @name="comment"]

${Input_FirstName}            Beer
${Input_LastName}             TestQA
${Input_Email}                Testqa@gmail.com
${Input_Phone}                0660089500
${Input_Address}              123 Moo. 16 Mittraphap Rd., Nai-Muang,Muang 
${Input_city}                 Muang District
${Input_state}                Alabama
${Input_ZipCode}              44000
${Input_Website}              https://demo.seleniumeasy.com/
${Input_ProjectDescription}   Software Tester
  # Button
${Yes_Hosting}               //input[@type='radio' and @value = 'yes']
${No_Hosting}                //input[@type='radio' and @value = 'no']
${From_Send}                 //button[@type='submit' and @class= 'btn btn-default']

      # AjaxFormSubmitDemo
  # Menu
${AjaxFormSubmit}            //*[@id="treemenu"]/li/ul/li[1]/ul/li[6]/a
  # Input
${AjaxForm_Name}             id:title
${AjaxForm_Comment}          id:description

${Input_AjaxForm_Name}       Test
${Input_AjaxForm_Comment}    DemoSeleniumeasy
  # Button
${Ajax_Submit}               id:btn-submit
${Input_Ajax_Submit}         id:submit-control

      # JQuerySelectdropdown
  # Menu
${JQuerySelectdropdown}      //*[@id="treemenu"]/li/ul/li[1]/ul/li[7]/a
  # Input
${JQueryDropDownBox}              id:select2-country-container  
@{FilterJQueryDropDownBox}=       Australia    Bangladesh     Denmark     Hong Kong     India     Japan     Netherlands     New Zealand     South Africa     United States of America