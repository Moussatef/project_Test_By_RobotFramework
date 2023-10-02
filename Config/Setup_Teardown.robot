*** Settings ***
Resource    ImportRessources.robot

*** Variables ***
${EXTENSION_PATH}  file\adguard.crx
    
*** Keywords ***

ouvrir navigateur
    [Arguments]    ${url}
    Log To Console  message=Oppening ${url}
    Open Browser    url=about:blank    browser=chrome   
    SeleniumLibrary.Go To    ${url}
    SeleniumLibrary.Maximize Browser Window

fermer navigateur
    Log To Console  message=closing browser
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser

