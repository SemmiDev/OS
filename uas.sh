#!/bin/bash

clear

echo -n " Nama : "; read nama
echo -n " NIM  : "; read nim

echo " --------------"
echo " Menu Pilihan :"
echo " --------------"

echo "1. Tampilkan tanggal sekarang"
echo "2. Input nilai"
echo -n "Masukkan pilihan anda : "; read pilihan


if [[ $pilihan -eq 1 ]]; then
	TZ=Asia/Jakarta date
	now=$(date)
	printf "tanggal sekarang adalah : %s\n" "$now"
elif [[ $pilihan -eq 2 ]]; then
	nilai1=0
	nilai2=0

	read -p "Masukkan nilai ke 1 : " nilai1
	read -p "Masukkan nilai ke 2 : " nilai2
	
	echo "Rata-rata nilai anda adalah $(((nilai1+nilai2)/2))"
else
	bash uas.sh
fi
