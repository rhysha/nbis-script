Step 1 : change export PATH=$PATH:/home/rhythm/nbis/build/bin to where you have put your nbis binary

Step 2 : run get-images.sh to download tif fingerprint images

Step 3 : run images/run_nbis.sh for Converting TIFF images to WSQ format, Checking quality of WSQ images through NFIQ, Extracting features from fingerprints through MINDTCT, Performing fingerprint matches through BOZORTH3

ENJOY 

# NBIS Fingerprint Processing Guide

This guide provides step-by-step instructions for setting up and running the NBIS fingerprint processing pipeline.

## Step 1: Set Up NBIS Binary Path

Modify your `PATH` environment variable to include the location where you have placed your NBIS binary:

```sh
export PATH=$PATH:/path/to/your/nbis/build/bin
```

Replace /path/to/your/nbis/build/bin with the actual directory where your NBIS binaries are stored.


## Step 2: Download Fingerprint Images

Run the following script to download TIFF fingerprint images:

```sh
./get-images.sh
```

## Step 3: Process Fingerprint Images
```sh
./images/run_nbis.sh
```


This script performs the following tasks:
Converts TIFF images to WSQ format.
Checks quality of WSQ images using NFIQ.
Extracts features from fingerprints using MINDTCT.
Performs fingerprint matching using BOZORTH3.