# Assignment 6: Write a shell program to convert a CSV file of contacts, into a VCF file.

#!/bin/bash

# command line arguments
input_file="$1" 
output_file="$2"

# validate input
if [[ -z "$input_file" || -z "$output_file" ]]; then
    echo "Please enter in this format: $0 input.csv output.vcf"
    exit 1
fi

# Skip first line i.e header & start processing from 2nd line
tail -n +2 "$input_file" | while IFS=',' read -r first last phone email
# append data to output.vcf in following fomat
do
    cat <<EOF >> "$output_file"
BEGIN:VCARD
VERSION:3.0
N:${last};${first}
FN:${first} ${last}
TEL;TYPE=CELL:${phone}
EMAIL:${email}
END:VCARD

EOF
done

echo "Generated VCF File: $output_file"
