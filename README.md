<h1>Pré-requisitos para execução da automação de testes</h1>

Ter instalado o Python versão 3.9 ou superior e adicionar nas variáveis de ambiente.

https://www.python.org/downloads/

</br><b>Instalação dos frameworks necessário para execução do teste automatizado</b></br>

Pra instalação dos frameworks, necessário executar o comando via terminal.</br>

<b>Robot Framework -></b> pip install robotframework</br>
<b>SeleniumLibrary</b> pip install --upgrade robotframework-seleniumlibrary</br></br>

<b>Estruturação do teste</b></br>
No diretório <b>src/config</b> contém a library e resources utilizados.<br> 

No diretório <b>src/data</b> contém as variáveis utilizadas.<br> 

No diretório <b>src/step_definitions</b> contém o script do teste.<br> 

No diretório <b>src/tests</b> contém a suite de testes.<br>

No diretório <b>src\tests\reports</b> contém os reports gerados após a execução dos testes.<br> 


<br><b>Execução do teste</b></br>
Para execução da suite de teste, é necessário estar acessando o diretório "src\tests" e, executar o seguinte comando via terminal: <b>robot -d ..\reports tests_cases.robot</b><br0>

<b>robot:</b> comando default</br> 
<b>-d ..\reports:</b> comando para apntar o path de onde será salvo os reports</br>
<b>tests_cases.robot:</b> nome da suite de teste</br>