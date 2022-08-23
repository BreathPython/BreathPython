#!/bin/bash
# Cam v1.5
# Powered by BreathPython
# Credits goes to Najeeb Ullah -BreathPython and Hamza Qayyum [github.com/BreathPython/]

trap 'printf "\n";stop' 2
clear
printf "\033[1;97m                  *     \e[0m\n"
printf "\033[1;97m    (     (      (  `    \e[0m\n"
printf "\033[1;96m    )\    )\     )\))(     \e[0m\n"
printf "\033[1;95m  (((_)((((_)(  ((_)()\   \e[0m\n"
printf "\033[1;94m  )\___ )\ _ )\ (_()((_)   \e[0m\n"
printf "\033[1;93m ((/ __|(_)_\(_)|  \/  |  \e[0m\n"
printf "\033[1;92m  | (__  / _ \  | |\/| |  e[0m\n"
printf "\033[1;91m   \___|/_/ \_\ |_|  |_|  e[0m\n"
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
