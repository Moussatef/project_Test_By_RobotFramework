*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Config/Setup_Teardown.robot
Resource    ../../Ressources/Utils/Utils.robot
Library    String
Documentation    ce fichier nous aide à faire executer un test
Test Setup    Setup_Teardown.ouvrir navigateur  url=${urlTest}
Test Teardown    Setup_Teardown.fermer navigateur

*** Variables ***
${urlTest}    https://demo.applitools.com/

*** Keywords ***

*** Test Cases ***
testLogin

    
   

    