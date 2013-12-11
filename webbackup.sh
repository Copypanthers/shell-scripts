#!/bin/bash
# Script to backup DocumentRoot

# Parent backup directory
backup_parent_dir="./data"
document_root_dir="/home/murat/Pictures"

# Create backup directory and set permissions
backup_date=`date +%Y_%m_%d_%H_%M`

# Compressing folder
tar -czf ./data/web-${backup_date}.tar.gz ${document_root_dir}/