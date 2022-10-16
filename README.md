# Projeto e Desafio Final vdt2-trade-sticker
Projeto em Robot Framework construído na segunda temporada da série Viver de Teste da QAcademy

# :robot: Robot Viver de Testes VDT - QAcademy

🧰 Ferramentas Utilizadas:<br>
   ⚡ Robot 5 com python 3.9 <br> 
    
    https://www.python.org/downloads/release/python-395/
   
    pip install robotframework
    
   ⚡ VSCode<br>
   
    https://code.visualstudio.com/download

   ⚡ GitBash<br>

    https://gitforwindows.org/ - Windows
    https://git-scm.com/download/mac - Mac

    Passo a passo para configurar
    https://www.youtube.com/watch?v=4pB8r6-dkSM
    
    shell: 'C:\\Program Files\\Git\\git-cmd.exe',
    shellArgs: ['--command=usr/bin/bash.exe', '-l', '-i'],
    env: { 'TERM':'cygwin' }

   ⚡ NodeJs - Instalar versão 16x LTS<br>

    https://nodejs.org/en/download/


🧰 Para rodar Local - Utilizar GitBash:<br>

   ⚡ Clonar projeto e instalar dependências<br>

    git clone https://github.com/Cabralm7/vdt2-trade-sticker.git

   ⚡ Inicializar a biblioteca Browser<br>

    rfbrowser init

   ⚡ Para rodar projeto<br>

    robot -d ./logs -v BROWSER:firefox tests/

    ou

    robot -d ./logs -v BROWSER:chromium tests/

    ou

    robot -d ./logs -v BROWSER:webkit tests/
