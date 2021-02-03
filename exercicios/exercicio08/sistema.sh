#!/bin/bash
# Correção: 1,0

trap "echo \"até mais...\"; exit ; " 2

OPTION=0
CONTINUE_KEY="filled"

menu() {
	echo "1. Tempo ligado"
	echo "2. Últimas Mensagens do Kernel"
	echo "3. Memória Virtual"
	echo "4 .Uso da CPU por núcleo"
	echo "5. Uso da CPU por processos"
	echo "6. Uso da Memória Física"
	read -p "-> " OPTION
}

f1() {
	uptime
}

f2() {
	dmesg | tail -n 10
}

f3() {
	vmstat 1 10
}

f4() {
	mpstat -P ALL 1 5
}

f5() {
	pidstat 1 5
}

f6() {
	free -m
}

enter_input() {
	read -s -n 1 CONTINUE_KEY

        if [[ "$CONTINUE_KEY" == "" ]]; then
                clear
        fi
}

while [ true ]
do
	menu
	clear
	if [ $OPTION == "1" ]; then
		f1
		enter_input
	elif [ $OPTION == "2" ]; then
		f2
		enter_input
	elif [ $OPTION == "3" ]; then
		f3
		enter_input
	elif [ $OPTION == "4" ]; then
		f4
		enter_input
	elif [ $OPTION == "5" ]; then
		f5
		enter_input
	elif [ $OPTION == "6" ]; then
		f6
		enter_input
	fi

done
echo "até mais!
