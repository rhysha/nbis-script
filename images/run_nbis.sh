#!/bin/bash

if ! which bozorth3
then
  echo "NBIS programs not in shell path"
  exit 1
fi

echo "Converting TIFF images to WSQ format..."
find db1/ -name "*.tif" -exec cwsq .75 wsq {} -r 640,480,8 \;
find db2/ -name "*.tif" -exec cwsq .75 wsq {} -r 328,364,8 \;
find db3/ -name "*.tif" -exec cwsq .75 wsq {} -r 300,480,8 \;
find db4/ -name "*.tif" -exec cwsq .75 wsq {} -r 288,384,8 \;

echo "Checking quality of WSQ images through NFIQ..."
for i in `seq 1 4`
do
  for a in db$i/*.wsq
  do
    echo "$a"
    nfiq $a
  done
done

echo "Extracting features from fingerprints through MINDTCT..."
for i in `seq 1 4`
do
  for a in db$i/*.wsq
  do
    echo "$a"
    b="${a/.wsq/}"
    mindtct $a $b
  done
done

echo "Performing fingerprint matches through BOZORTH3..."
for i in `seq 1 4`
do
  for a in db$i/*.xyt
  do
    echo "[$a]"
    bozorth3 -m1 -A outfmt=spg -T 20 -p $a db$i/*.xyt
    echo
  done
done

exit 0
