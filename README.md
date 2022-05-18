# IFG Gestão Script install SBDD

## A sequencia de passos a seguir devem ser executadas via <code>shell</code>

## Install git
<code>sudo apt-get install git</code>

## Clone repository script
git clone https://github.com/coutinhonobre/ifg_gestao_sgbd_script.git

## Install script 
<ul>
    <li>Entrar na pasta clonada do github <code>cd ifg_gestao_sgbd_script</code></li>
    <li>Executar script de instalação do banco <code>sudo sh ./sgbd.sh</code></li>
    <li>Será necessário autorizar a instalação utilize o <code>y</code> assim que solicitado</li>
</ul>

## checar versão do postgres
<code>
sudo -u postgres psql -c "SELECT version();"
</code>

## senha padrão do Sistema do postgres
<code>user: </code> postgres </br>
<code>password: </code> postgres </br>
