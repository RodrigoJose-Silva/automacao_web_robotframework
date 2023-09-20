*** Settings ***
Documentation       Nesse arquivo contem os os cenarios de testes referentes ao ESIGN

Resource        ../config/main.resource

Test Teardown       Fechar o navegador

***Test Cases***

Cenário 01 - Fazendo cadastro de novo candidato
    Dado que esteja na tela HOME da Coodesh
    Quando efetuar o cadastro de um novo candidato
    E preencho o formulario "Tester QA", "testerqa02@gmail.com" e "@Tester#qa159"
    E submeto o formulario
    Então verifica o title "Acessar Painel | Coodesh" da page

Cenário 02 - Fazendo cadastro de novo candidato
    Dado que esteja na tela HOME da Coodesh
    Quando efetuar o login com "testerqa02@gmail.com" e "@Tester#qa159"
    Então visualizar os componentes do formulário do perfil

Cenário 03 - Fazendo cadastro de novo candidato
    Dado que esteja na tela HOME da Coodesh
    Quando efetuar o login com "testerqa02@gmail.com" e "@Tester#qa159"
    E pesquisar pela empresa "Cypress"
    Então visualizar as empresas "Cypress Test e2e"
    