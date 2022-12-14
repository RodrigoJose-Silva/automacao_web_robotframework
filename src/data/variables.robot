*** Settings ***
Documentation       Nesse arquivo contem todas as variáveis de testes

Resource            ../config/main.resource

*** Variable ***
${BROWSER}                  chrome
${URL}                      https://beta.coodesh.com/
${CONF_COOKIES}             xpath=//button[@id='onetrust-accept-btn-handler']
${BTN_LOGIN}                xpath=//*[contains(text(), "Login")]
${BTN_CADASTRE}             css=a[class='small']
${NAME}                     id=displayName
${E_MAIL}                   xpath=//*[@id="email"]
${PASSWORD}                 id=password
${CHECK_TERMO}              id=privacy.gpdr
${SUBMIT}                   xpath=//button[type='submit']
