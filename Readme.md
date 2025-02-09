

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


- This script performs the following tasks:
  * Converts TIFF images to WSQ format.
  * Checks quality of WSQ images using NFIQ.
  * Extracts features from fingerprints using MINDTCT.
  * Performs fingerprint matching using BOZORTH3.

### ENJOY 