#!/bin/bash

# Author: Dominik Szynk
# Script date: 2014-09-22
# Script version: 0.1

if [ $# -lt "2" ]
then
	echo
	echo "Script for downloading whole webpage"
	echo "Author: Dominik Szynk | Script date: 2014-09-22 | Script version: 0.1"
	echo
	echo "Script usage:"
	echo "	wwwdown website_domain.name website_full_url"
	echo
	exit $E_NOARGS
fi

echo
echo "Copying site: $2"
echo
wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains $1 $2
echo 
echo "Site downloaded!"
echo
