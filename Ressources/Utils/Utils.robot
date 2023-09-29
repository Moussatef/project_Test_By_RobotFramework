*** Settings ***
Resource    ../../Config/ImportRessources.robot
*** Variables ***

*** Keywords ***

click Web Element
    [Arguments]    ${locator}  ${timeout}
    Log To Console  message=clique sur l'element : ${locator}
    SeleniumLibrary.Wait Until Page Contains Element  locator=${locator}  timeout=${timeout}
    SeleniumLibrary.Click Element  locator=${locator}

input in Web Element
    [Arguments]    ${locator}  ${timeout}  ${text}
    Log To Console  message=Saisie du text : ${text} sur l'element ${locator}
    SeleniumLibrary.Wait Until Page Contains Element  locator=${locator}  timeout=${timeout}
    SeleniumLibrary.Input Text  locator=${locator}  text=${text}

verify Element is Present
    [Arguments]    ${locator}  ${timeout}
    Log To Console  message=verifier presence element: ${locator}
    SeleniumLibrary.Wait Until Page Contains Element  locator=${locator}  timeout=${timeout}

Scroll en bas
    Execute Javascript    window.scrollTo(0, window.scrollY+500)


get text header 
    [Arguments] ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Page Contains Element  locator=${locator}  timeout=${timeout}
    ${time_header} = SeleniumLibrary.Get Text  locator=${locator}
    [Return] ${time_header}
