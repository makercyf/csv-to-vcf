# csv-to-vcf
Converting contact from CSV to VCF format

## Documentation
The format inside the csv file should be like this
```
Alice,+85312345678
Bob,+85387654321
```

## Usage
The program will convert `contact.csv` to `contactVCF.vcf`
```sh
user@ubuntu:~$ bash csvtovcf.sh
CSV filename: contact
VCF filename: contactVCF
Completed: 2
Done.
user@ubuntu:~$
```

## Sample Output
```
BEGIN:VCARD
VERSION:3.0
FN:Alice
N:;Alice;;;
item1.TEL:+85312345678
item1.X-ABLabel:
CATEGORIES:myContacts
END:VCARD
BEGIN:VCARD
VERSION:3.0
FN:Bob
N:;Bob;;;
item1.TEL:+85387654321
item1.X-ABLabel:
CATEGORIES:myContacts
END:VCARD
```
