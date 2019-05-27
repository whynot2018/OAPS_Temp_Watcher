#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
red="\033[0;41m"
green="\033[0;32m"
blue="\033[0;34m"
nc='\033[0m' # No Color
cpu=$(</sys/class/thermal/thermal_zone0/temp)
gpu=$(vcgencmd measure_temp)
arm=$(vcgencmd measure_clock arm)
volt=$(vcgencmd measure_volts core)
echo -e "${bold}${green}$(date) @ $(whoami) @ $UID @ $(hostname)"
echo -e "${bold}${green}$arm @ $volt"
echo -e "${bold}${green}-------------------------------------------${nc}"
echo -e "${bold}${blue}GPU${normal} => ${red}$gpu${nc}"
echo -e "${bold}${blue}CPU${normal} => ${red}$((cpu/1000))'C${nc}"
echo -e "${bold}${green}-------------------------------------------${nc}"
