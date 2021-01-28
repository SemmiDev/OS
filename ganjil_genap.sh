#!/bin/bash

clear
echo "MENU GANJIL GENAP"
echo "------------"
echo "1. Bilangan Ganjil 1 sampai 10"
echo "2. BIlangan Genap 1 sampai 10"
echo "------------"
echo -n "Masukkan pilihan anda [1/2] : "; read pilihan

if [[ $pilihan -eq 1 ]]; then
	for (( i = 1; i <= 10; i++ )); do
		if [[ $(($i%2)) -eq 1 ]]; then
			echo $i
		fi
	done
elif [[ $pilihan -eq 2 ]]; then
	for (( i = 1; i <= 10; i++ )); do
		if [[ $(($i%2)) -eq 0 ]]; then
			echo $i
		fi
	done
else
	bash ganjil_genap.sh
fi