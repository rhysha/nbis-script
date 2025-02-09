#!/bin/bash

# create directory for the ZIP files
if [ ! -d zips ]
then
  mkdir zips
fi

# download the files
for i in `seq 1 4`
do
  arq="DB${i}_B.zip"
  if [ ! -f zips/$arq ]
  then
    wget "http://bias.csr.unibo.it/fvc2004/Downloads/${arq}"
    mv $arq zips/
  fi
done

# remove directories
rm -rf images/

# extract files
for i in `seq 1 4`
do
  mkdir -p images/db$i
  unzip zips/DB${i}_B.zip -d images/db$i/
done

exit 0
