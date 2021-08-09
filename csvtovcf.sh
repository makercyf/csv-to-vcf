#!/bin/bash

read -p "CSV filename: " csv
read -p "VCF filename: " vcf
count=0

while IFS=, read -r name num;do
	echo "BEGIN:VCARD" >> "$vcf.vcf"
	echo "VERSION:3.0" >> "$vcf.vcf"
	echo "FN:$name" >> "$vcf.vcf"
	echo "N:;$name;;;" >> "$vcf.vcf"
	echo "item1.TEL:$num" >> "$vcf.vcf"
	echo "item1.X-ABLabel:" >> "$vcf.vcf"
	echo "CATEGORIES:myContacts" >> "$vcf.vcf"
	echo "END:VCARD" >> "$vcf.vcf"
	((count++))
	echo "Completed: $count" | while read i; do echo -en "\r$i"; done
done < "$csv.csv"

echo -e "\nDone."
