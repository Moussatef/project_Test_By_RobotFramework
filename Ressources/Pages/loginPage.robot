*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Ressources/Utils/Utils.robot

*** Variables ***

${xpath.userNameInput}     //input[@id='username']
${xpath.passwordInput}     //input[@id='password']
${xpath.resetButton}    //a[@id= "log-in"]
${xpath.remembermeCheckBox}    //input[ @class = "form-check-input"]


${constante.login.username}  test
${constante.login.password}  password

*** Keywords ***

login
    [Arguments]  ${username}  ${password}
    Utils.input in Web Element  locator=${xpath.userNameInput}  timeout=5s  text=${username}
    Utils.input in Web Element  locator=${xpath.passwordInput}  timeout=5s  text=${password}



Click rememberme
    Utils.click Web Element  locator=${xpath.remembermeCheckBox}  timeout=5s


Click Login
    Utils.click Web Element  locator=${xpath.resetButton}  timeout=5s

loginTest
    [Arguments]  ${username}  ${password}
    loginPage.login  ${username}  ${password}
    loginPage.Click rememberme
    SeleniumLibrary.Capture Page Screenshot  filename=InputDone.png
    loginPage.Click Login