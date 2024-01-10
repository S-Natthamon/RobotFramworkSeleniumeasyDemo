*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary

*** Variables ***


${AllExamples}           Xpath://*[@id="treemenu"]/li/a
# DatePicker 
${DatePicker}            //*[@id="treemenu"]/li/ul/li[2]
      # BootstrapDatePicker
  # Menu
${BootstrapDatePicker}   //*[@id="treemenu"]/li/ul/li[2]/ul/li[1]/a
  # Input
${DateExample}           //div[@class="input-group date"]
${DateToDay}             //div[@class="datepicker-days"]//th[@class="today"][normalize-space()="Today"]
${DateClere}             //div[@class="datepicker-days"]//th[@class="clear"][normalize-space()="Clear"]

${DateRangeStart}        //input[@placeholder="Start date" and @class = 'form-control']
${DateRangeEnd}          //input[@placeholder="End date" and @class = 'form-control']
${Input_DateRangeStart}  //td[normalize-space()="21"]
${Input_DateRangeEnd}    //td[@class="day"][normalize-space()="29"]
  # Button


      # JQueryDatePickerDemo
  # Menu
${JQueryDatePickerDemo}  //*[@id="treemenu"]/li/ul/li[2]/ul/li[2]/a
  # Input
${JQueryDateForm}        //input[@id="from"]
${JQueryDateTo}          //input[@id="to"]

${Input_JQueryDateForm}   //tbody/tr[1]/td[1]     
${Input_JQueryDateTo}     //a[normalize-space()="25"]       

  # Button

