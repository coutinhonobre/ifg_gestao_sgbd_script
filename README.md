# IFG Gestão Script install SBDD

## A sequencia de passos a seguir devem ser executadas via <code>shell</code>

## Install git
<ul>
    <li>install <code>sudo apt-get install git</code></li>
    <li>check version <code>git --version</code></li>
</ul>

## Clone repository script
git clone https://github.com/coutinhonobre/ifg_gestao_sgbd_script.git

## Install script 
<ul>
    <li>Entrar na pasta clonada do github <code>cd ifg_gestao_sgbd_script</code></li>
    <li>Executar script de instalação do banco <code>sudo bash ./sgbd.sh</code></li>
    <li>Será necessário autorizar a instalação utilize o <code>y</code> assim que solicitado</li>
</ul>

## checar versão do postgres 8.3
<code>
sudo -u postgres psql -c "SELECT version();"
</code>

## Definir uma senha para o postgres
<ul>
    <li><code>su -postgres</code></li>
    <li><code>psql</code></li>
    <li><code>alter user postgres with password 'postgres';</code></li>
</ul>

## Caso aconteça um erro durante a instalação
<ul>
    <li><code>sudo apt --fix-broken install</code></li>
    <li>execute novamente o <code>sudo bash ./sgbd.sh</code></li>
</ul>

