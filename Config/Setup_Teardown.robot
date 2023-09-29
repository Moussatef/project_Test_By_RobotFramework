*** Settings ***
Resource    ImportRessources.robot

*** Variables ***

    
*** Keywords ***

ouvrir navigateur
    [Arguments]    ${url}
    Log To Console  message=Oppening ${url}
    SeleniumLibrary.Open Browser  url=${url}  browser=Chrome
    SeleniumLibrary.Maximize Browser Window

fermer navigateur
    Log To Console  message=closing browser
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser

