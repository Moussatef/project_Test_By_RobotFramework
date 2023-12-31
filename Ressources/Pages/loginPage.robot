*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Ressources/Utils/Utils.robot

*** Variables ***


${xpath.fieldRegisterEmail}    //input[@id='reg_email']
${xpath.fieldRegisterPassword}    //input[@id='reg_password']
${xpath.registerButton}    //input[@value='Register']

${xpath.fieldLoginUserName}    //input[contains(@name,'username')]
${xpath.fieldLoginPassword}    //input[@id='password']
${xpath.loginButton}    //input[@type='submit' and @name='login']



*** Keywords ***

register
    [Arguments]  ${username}  ${password}
    Utils.input in Web Element  locator=${xpath.fieldRegisterEmail}  timeout=5s  text=${username}
    Utils.input in Web Element  locator=${xpath.fieldRegisterPassword}  timeout=5s  text=${password}
    Sleep  3


Click register
    Utils.click Web Element  locator=${xpath.registerButton}  timeout=20s 


login

    [Arguments]  ${username}  ${password}

    Utils.input in Web Element  locator=${xpath.fieldLoginUserName}  timeout=5s  text=${username}

    Utils.input in Web Element  locator=${xpath.fieldLoginPassword}  timeout=5s  text=${password}

 

click login

     Utils.click Web Element  locator=${xpath.loginButton}  timeout=20s


