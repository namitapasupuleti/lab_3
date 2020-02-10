#!/bin/bash
# Authors : Namita Pasupuleti
# Date: 2/5/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a file name:"
read fileName
echo "Enter a regular expression:"
read regEx

grep $regEx $fileName

echo "The number of phone numbers in $fileName is:"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $fileName

echo "The number of emails in $fileName is:"
grep -c '@' $fileName

echo "All the phone numbers that have 303 as the area code:"
grep '303-' $fileName

grep '@geocities.com' $fileName >> email_results.txt

