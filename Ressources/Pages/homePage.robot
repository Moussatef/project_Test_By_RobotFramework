*** Settings ***
Resource    ../../Config/ImportRessources.robot
Resource    ../../Ressources/Utils/Utils.robot
Library    String

*** Variables ***
${xpath.header}    //h6[@id="time"]
${xpath.first_balance}    //div[@class='element-balances']//descendant::span
${xpath.Credit}    //div[@class='balance-title' and contains(text(),"Credit Available")]//following::div[1]
${xpath.due}    //div[@class='balance-title' and contains(text(),"Due Today")]//following::div[1]

*** Keywords ***
 

