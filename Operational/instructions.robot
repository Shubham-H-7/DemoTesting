*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Google Browser
    Open Browser    ${url}  ${brows}
    Maximize Browser Window
    sleep  2s
   # Execute Javascript  window.scrollTo(0, 300)

Search for robotframework
    sleep  2s
    Click Element  ${login}
    Wait Until Element Is Visible  ${un}
    Input Text  ${un}  ${mob}
    Input Text  ${pwd}  ${pass}
    Click Element  ${login2}
    Log to Console  Step 2 done

Check the product
    sleep  3s
    Wait Until Element Is Visible  ${act}
    ${actual}=  Get Text  ${act}
    Log to Console  ${actual}
    Log to Console  ${expt}
    Run Keyword If  '${expt}' == '${actual}'  Remove product off cart
    ...  ELSE  Log to console  present

Remove product off cart
    sleep  2s
    Click Element  ${del}
