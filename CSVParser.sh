#!/bin/bash
# The file used is Mappe.csv

# The CSV file Mappe.csv (in UTF-8) consists of following content:
# Unternehmen	Methode	Domain
# UnternehmenA	TLS	acme.com

clear

OLDIFS=$FS
IFS=";"
i=1 # don't show the first line of the CSV

# print only if "TLS" is found

while read Unternehmen Methode Domain
do

if [[ $i -lt 1 ]]
then
	case  "$Methode" in 
		TLS) 

	        echo "Unternehmen:" "$Unternehmen"
	        echo "Methode:" "$Methode"
	        echo "Domain:" "$Domain"
		echo
	esac

fi
i=0 # after the rest after the first line

done < Mappe.csv
