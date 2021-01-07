*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Google Browser
    Open Browser    ${url}  ${brows}
    Maximize Browser Window
    sleep 2s
    Execute Javascript  Window.scrollTo(0, 300)