#!/bin/bash

echo -e "\e[1mbold\e[0m"
echo -e "\e[3mitalic\e[0m"
echo -e "\e[3m\e[1mbold italic\e[0m"
echo -e "\e[4munderline\e[0m"
echo -e "\e[21mdouble underline\e[0m"
echo -e "\e[4:3mundercurl\e[0m"
echo -e "\e[4:4mdotted underline\e[0m"
echo -e "\e[4:5mdashed underline\e[0m"
echo -e "\e[9mstrikethrough\e[0m"

echo

echo -e "\e[4:3m\e[48;5;18m\e[38;5;200m\e[58;5;46mundercurl with color\e[0m"
echo -e "\e[4m\e[48;5;18m\e[38;5;200m\e[58;5;46munderline with color\e[0m"
echo -e "\e[21m\e[48;5;18m\e[38;5;200m\e[58;5;46mdouble underline with color\e[0m"

echo

for i in {0..255} ; do
    printf "\x1b[38;5;%sm%3d\e[0m" "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 30 == 0 )); then
        printf "\n";
    fi
done

echo

for i in {0..255} ; do
    printf "\x1b[48;5;%sm%3d\e[0m" "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 36 == 0 )); then
        printf "\n";
    fi
done

echo
