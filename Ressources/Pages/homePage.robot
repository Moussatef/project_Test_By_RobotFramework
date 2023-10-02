*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Ressources/Utils/Utils.robot
Library    String

*** Variables ***
${xpath.header}    //h6[@id="time"]

${xpath.shopButton}    //li[@id='menu-item-40']/a

${xpath.startShopping}    //li[@id='wpmenucartli']/a

*** Keywords ***

click on the shop button
    Utils.click Web Element  locator=${xpath.shopButton}  timeout=5

click on the start shopping button
    Utils.click Web Element  locator=${xpath.startShopping}   timeout=5
 

