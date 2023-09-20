*** Settings ***
Documentation       Nesse arquivo contem as keywords de teste

Resource           ../config/main.resource
*** Keywords ***
####  Teardown
Fechar o navegador
    Close Browser

#### Ação
Dado que esteja na tela HOME da Coodesh
    Open Browser                        ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible       ${CONF_COOKIES}  # aguardando btn OK do termo da Politica de Cookies ficar visível
    Click Element                       ${CONF_COOKIES}  # fechar o termo da Politica de Cookies no OK

Quando efetuar o Login
    Click Element                       ${BTN_LOGIN}   # clicando no bnt LOGIN através do texto

Quando efetuar o cadastro de um novo candidato
    Click Element                       ${BTN_LOGIN}   # clicando no bnt LOGIN através do texto
    Wait Until Element Is Visible       ${BTN_CADASTRE}  # aguardando o link "Cadastre-se" ficar visível
    Click Element                       ${BTN_CADASTRE}  # clicando no link "Cadastre-se"

E preencho o formulario "${NOME}", "${EMAIL}" e "${SENHA}"
    Wait Until Element Is Visible       ${NAME}    # aguardando o campo de input "Nome Completo" ficar visível
    Input Text                          ${NAME}      ${NOME}
    Wait Until Element Is Visible       xpath=//input[@id='email']    # aguardando o campo de input "e-mail" ficar visível
    Input Text                          xpath=//input[@id='email']            ${EMAIL}
    Input Password                      ${PASSWORD}         ${SENHA}
    Select Checkbox                     ${CHECK_TERMO}

E submeto o formulario    
    Click Button                        ${SUBMIT}

Quando efetuar o login com "${EMAIL}" e "${SENHA}"
    Click Element                       ${BTN_LOGIN}   # clicando no bnt LOGIN através do texto
    Wait Until Element Is Enabled       xpath=//input[@id='email']
    Input Text                          xpath=//input[@id='email']            ${EMAIL}
    Input Password                      ${PASSWORD}         ${SENHA}
    Click Element                       ${SUBMIT}       action_chain=True

E preencher o formulário do perfil
    Click Element                   xpath=a[class="transition-3d-hover btn btn-white btn-sm"]

E pesquisar pela empresa "${EMPRESA_PESQUISADA}"
    Click Element               xpath=//a[title="Ver Vagas"]
    Input Text                  xpath=//input[name="search"][xpath="1"]     ${EMPRESA_PESQUISADA}
    Click Element               xpath=//button[type="submit"][xpath="1"]
#### Verificação
Então verifica o title "Acessar Painel | Coodesh" da page
    Title Should Be     ${TITULO_ESPERADO}    # validando o title da page

Então visualizar os componentes do formulário do perfil
    Element Should Be Visible       xpath=i[class="fas fa-user-tie mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-star mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-suitcase mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-file-alt mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-folder-open mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-heart mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-award mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-users mr-2"]
    Element Should Be Visible       xpath=i[class="fas fa-share-alt mr-2"]


    Should Be Equal         xpath=(//span[contains(text(),'Cypress Test e2e')])[2]
    Should Be Equal         xpath=//span[normalize-space()='WCSA Soluções em Teste']
