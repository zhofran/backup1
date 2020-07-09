#!/bin/bash
clear
echo " --------------------------------------------------- "
echo "| PROGRAM KELULUSAN MATKUL PRAKTIKUM SISTEM OPERASI |"
echo " --------------------------------------------------- "
read -p "Masukan Nama Mahasiswa          : " nama
read -p "Masukan NIM Mahasiswa		: " nim
read -p "Masukan Nilai Tugas	 	: " tgs
read -p "Masukan Nilai UTS		: " uts
read -p "Masukan Nilai UAS		: " uas
read -p "Masukan Persentase Kehadiran	: " sen
echo
nam=$(($tgs*20/100+$uts*30/100+$uas*40/100+$sen*10/100))

if(($nam<45))
then
  grade="E"
elif(($nam<=55))
then
  grade="D"
elif(($nam<=59))
then
  grade="C"
elif(($nam<=64))
then
  grade="C+"
elif(($nam<=69))
then
  grade="B-"
elif(($nam<=74))
then
  grade="B"
elif(($nam<=79))
then
  grade="B+"
elif(($nam<=84))
then
  grade="A-"
elif(($nam<=100))
then
  grade="A"
else
  grade="Maaf GRADE tidak terdaftar !!"
fi

if(($nam<=55))
then
  ket="TIDAK LULUS !!"
else
  ket="LULUS !!"
fi

echo " --------------------------------------------------- "
echo "|    GRADING & kELULUSAN PRAKTIKUM SISTEM OPERASI   |"
echo " --------------------------------------------------- "
echo "Nama Mahasiswa                  : $nama "
echo "NIM 			        : $nim  "
echo "Nilai Tugas                     : $tgs  "
echo "Nilai UTS                       : $uts  "
echo "Nilai UAS                       : $uas  "
echo "Persentase kehadiran            : $sen% "
echo "Nilai Rata - rata Mahasiswa     : $nam  "
echo "Nilai Huruf/Grading             : $grade"
echo "Status Kelulusan                : $ket  "
echo
echo "~~~~~~~~~~~~~~~~~~~ PROGRAM SELESAI ~~~~~~~~~~~~~~~~~~"
