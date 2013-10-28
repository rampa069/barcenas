#!/bin/bash
#
#############################################################
####### BARCENAS FILE WIPE ##################################
####### A REAL FILE ERASER TOOL #############################
#############################################################
#
if [ ! $# == 1 ]
then
        echo "Usage: $0 Filename"
        exit 0
fi
#
if [ ! -f $1 ]
then
        echo "$1 does not exist."
        exit 0
fi
#
C_R="\e[01;31m"                         ## Colors
C_B="\e[01;30m" 
C_G="\e[01;32m" 
C_END="\e[00m" 
#
FILENAME=$1
FILESIZE=$(stat -c%s "$FILENAME")
#
#
echo -e "Size of file $FILENAME is $FILESIZE bytes.                    " "\t\t$C_G[ OK ]$C_END"
#
echo -n "Generating $FILESIZE cryptographic random bytes. (first pass) "
openssl rand $FILESIZE -out $FILENAME
echo -e "\t\t$C_G[ OK ]$C_END"
#
echo -n "Generating $FILESIZE cryptographic random bytes. (second pass)"
openssl rand $FILESIZE -out $FILENAME
echo -e "\t\t$C_G[ OK ]$C_END"
#
echo -n "Generating $FILESIZE cryptographic random bytes. (third pass) "
openssl rand $FILESIZE -out $FILENAME
echo -e "\t\t$C_G[ OK ]$C_END"
#
echo -n "Generating $FILESIZE of zeros. (final pass )                  "
dd if=/dev/zero count=1 bs=$FILESIZE of=$FILENAME 2> /dev/null
echo -e "\t\t$C_G[ OK ]$C_END"

echo "Erasing th file....."
rm $FILENAME

