#!/bin/bash
echo " ------------------------------------------------- "
echo "|PROGRAM MENGHITUNG NILAI PRAKTIKUM SISTEM OPERASI|"
echo " ------------------------------------------------- "
read -p "Masukan Nama Mahasiswa       : " nama
read -p "Masukan NIM Mahasiswa        : " nim
read -p "Masukan Nilai Tugas          : " tgs
read -p "Masukan Nilai UTS            : " uts
read -p "Masukan Nilai UAS            : " uas
read -p "Masukan Persentase Kehadiran : " sen
echo 
echo " ------------------------------------------------- "
nam=$(($tgs*20/100+$uts*30/100+$uas*40/100+$sen*10/100))
echo
echo " ------------------------------------------------ "
echo "|      DAFTAR NILAI PRAKTIKUM SISTEM OPERASI     |"
echo " ------------------------------------------------ "
echo "Nama                  : $nama"
echo "NIM                   : $nim "
echo "Nilai Tugas           : $tgs "
echo "Nilai UTS             : $uts "
echo "Nilai UAS             : $uas "
echo "Persentase Kehadiran  : $sen%"
echo "Nilai Akhir Mahasiswa : $nam "
echo " ------------------------------------------------- "

