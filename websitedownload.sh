#!/bin/bash
# Script to download website

# download directory
download_dir="./data/"

echo "Enter the URL to download: "
read URL


httrack ${URL} -K -w -O ${download_dir} -%v --robots=0 -c1 -%e0