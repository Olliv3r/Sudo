# SUDOSU

# instalação do sudo no Termux, requer root

# termux-sudo
Um script bash que fornece sudo para o Termux 
Termux é um emulador de terminal e ambiente Linux para Android
Nota
O termux-sudo foi originalmente hospedado no GitHub. 
Devido ao fato de que a Microsoft está comprando o GitHub, eu decidi movê-lo aqui.
Requisitos
Telefone enraizado com su binário 
SUDO NÃO FUNCIONARÁ SEM SU

# Instalando o sudo

Clone termux-sudo ou baixar para telefone e extrair
Abra o Termux
Instale uma dependência necessária para o sudo:

$pkg install ncurses-utils

Alterar para o diretório clonado ou de extração
Execute os seguintes comandos para colocar o sudo no diretório correto com as devidas permissões e propriedade

$cat sudo > /data/data/com.termux/files/usr/bin/sudo
$chmod 700 /data/data/com.termux/files/usr/bin/sudo
$ sudo su ou sudo

Características

Configura seu ambiente automaticamente na primeira execução, sem necessidade de fazer nada além de usá-lo
Cria uma pasta raiz .surootna pasta inicial do Termux com permissões de raiz e propriedade adequadas
Cria o .bashrcarquivo na pasta raiz com as variáveis ​​PATH e LD_LIBRARY_PATH adequadas para que todos os binários funcionem corretamente
Bash prompt PS1 variável também é definida para que você não tem bash-4.4#como prompt apenas#

Cria automaticamente .bash_historyna pasta raiz quando você solta em um shell raiz, portanto, o histórico do shell root é preservado
Pode ser usado como sudo comum (mas somente como root, nenhum outro usuário)
Pode cair para o shell de raiz sudo su [-]

Execuções construídas em binários do Termux e binários exterais com argumentos opcionais como raiz no diretório atual
Gera saída no shell usando atualmente
Pode ser usado em outros scripts bash
[opção] pode desligar mensagens de erro coloridas editando a variável coloredno início do arquivo sudo
