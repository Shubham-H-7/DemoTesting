*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Test Cases  ***
User should be able to land on Google Page
    [Tags]  demo
    Open Google Browser
    Search for robotframework
    Check the product
    Remove product off cart
   # Go to home page


