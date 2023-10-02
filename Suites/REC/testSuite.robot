*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Config/Setup_Teardown.robot
Resource    ../../Ressources/Utils/Utils.robot
Resource    ../../Ressources/Pages/ShopPage.robot
Resource    ../../Ressources/Pages/homePage.robot
Resource    ../../Ressources/Pages/loginPage.robot
Library    String
Documentation    ce fichier nous aide à faire executer un test
Test Setup    Setup_Teardown.ouvrir navigateur  url=${urlTest}
Test Teardown    Setup_Teardown.fermer navigateur

*** Variables ***
${urlTest}    http://practice.automationtesting.in/

${BROWSER}                  Chrome
${SELENIUM}                 http://practice.automationtesting.in/


*** Keywords ***

*** Test Cases ***

regiter test
    homePage.click on the myAccount button
    loginPage.register    hajartaouil1test@gmail.com    TestOGG12345!@hajartaouiltest1998
    loginPage.Click register
    
    
shopping test 
    homePage.click on the shop button
    ShopPage.click on add to basket
    homePage.click on the start shopping button
    ShopPage.click on remove from basket


    
   

    