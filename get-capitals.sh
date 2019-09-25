#!/bin/bash
echo "Getting countries names..."
CONTRIES=$(curl https://restcountries.eu/rest/v2/all | jq '.[].name')
echo $CONTRIES
echo $COUNTRIES > list-countries.txt

echo "Getting countries capitals... "
CAPITALS=$(curl https://restcountries.eu/rest/v2/all | jq '.[].capital')
echo $CAPITALS
echo $CAPITALS > list-capitals.txt