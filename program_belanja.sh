#!/bin/bash
clear

printf "\n"
echo "========= SELAMAT DATANG DI TOKO KAMI ========="
printf "\n"

echo "Masukkan nama anda : ";
read namauser
printf "\n"

clear

barang=("Pena" "Pensil" "Buku" "Stabilo" "Papan Mika" "Sisir" "Tip EX")
harga=(5000 3000 8000 20000 50000 20000 3000)

totalbarang=${#barang[*]}

echo "LIST BARANG BESERTA HARGA"
printf "\n"

for (( i = 0; i < $totalbarang; i++ )); do
	echo "$(($i+1)). |${barang[$i]} = Rp.${harga[$i]}"
	echo "   -----------------------"
done

echo "Masukkan no barang yang akan $namauser beli = "; read nobarangbeli
if [[ $nobarangbeli -gt $totalbarang ]]; then
	clear
	bash program_belanja.sh

elif [[ $nobarangbeli -lt 1 ]]; then
	clear
	bash program_belanja.sh
fi

message1="Masukkan jumlah "  
message2=${barang[(($nobarangbeli-1))]}
message3=" yang akan $namauser beli = "
message4="$message1$message2$message3$message4" 
echo $message4; read totalbarangbeli

clear

totalharga=$(($totalbarangbeli*${harga[(($nobarangbeli-1))]}))
echo "Terima kasih telah berbelanja kak $namauser, berikut list belanjaan kakak :)"
echo "-----------------------------"
echo "|Nama pembeli : ${namauser}"
echo "|Nama Barang  : ${message2}"
echo "|Harga Barang : Rp.${harga[(($nobarangbeli-1))]}"
echo "|Jumlah       : ${totalbarangbeli}"
echo "|Total Harga  : Rp.${totalharga}"
echo "-----------------------------"

exit