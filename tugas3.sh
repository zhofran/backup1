#!/bin/bash
while [ $jaw:"y" ]
do
clear
echo "-----------------------------"
echo "MENU RUMUS BANGUN DATAR/RUANG"
echo "-----------------------------"
echo "1. Luas Persegi Panjang"
echo "2. Luas Segitiga"
echo "3. Luas Permukaan Kubus"
echo "4. Luas Permukaan Balok"
echo "5. Volume Kubus"
echo "6. Volume Balok"
echo "7. Exit"
echo
read -p "Pilihan Menu(1-7) : " pil
echo ""

case $pil in
1) read -p "Masukan Panjang : " p
   read -p "Masukan Lebar   : " l
   lpp=$(($p*$l))
   echo "Luas Persegi Panjang ($p x $l) = $lpp";;

2) read -p "Masukan Alas   : " a
   read -p "Masukan Tinggi : " t
   ls=$(($a*$t/2))
   echo "Luas Segitiga ($a x $t)/2 = $ls";;

3) read -p "Masukan Panjang Rusuk : " s
   lk=$((6*$s*$s))
   echo "Luas Permukaan Kubus (6 x $s x$s) = $lk";;

4) read -p "Masukan Panjang : " p
   read -p "Masukan Lebar   : " l
   read -p "Masukan Tinggi  : " t
   pl=$(($p*$l))
   pt=$(($p*$t))
   lt=$(($l*$t))
   lb=$((2*($pl+$pt+$lt)))
   echo "Luas Permukaan Balok (2 x ($pl + $pt + $lt)) = $lb";;

5) read -p "Masukan Panjang Rusuk : " r
   vk=$(($r*$r*$r))
   echo "Volume Kubus ($r x $r x $r) = $vk";;

6) read -p "Masukan Panjang : " p
   read -p "Masukan Lebar   : " l
   read -p "Masukan Tinggi  : " t
   vb=$(($p*$l*$t))
   echo "Volume Balok ($p x $l x $t) = $vb";;

7) echo "Terimakasih ;)"
   exit 0;;
esac
read -p "Kembali ke menu utama (y/t) : " ans
done
