*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Test Cases  ***
User should be able to land on Google Page
    [Tags]  demo
    Open Google Browser