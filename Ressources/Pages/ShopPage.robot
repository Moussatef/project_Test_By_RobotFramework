*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Ressources/Utils/Utils.robot


*** Variables ***

${xpath.addToCardButton}    //a[@href='/shop/?add-to-cart=169']

${xpath.removeProductButton}    //td[@class='product-remove']/a


*** Keywords ***

click on add to basket
    Utils.Scroll en bas
    Utils.click Web Element  locator=${xpath.addToCardButton}   timeout=5
    Sleep  2

click on remove from basket
    Utils.click Web Element  locator=${xpath.removeProductButton}  timeout=5
