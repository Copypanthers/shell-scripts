#!/bin/bash
# Script to backup DocumentRoot

# Parent backup directory
backup_parent_dir="./data"
bucket_name="backup-of-development"
document_root_dir="/home/murat/Pictures"

# Create backup directory and set permissions
backup_date=`date +%Y_%m_%d_%H_%M`

# Compressing folder
tar -czf ${backup_parent_dir}/web-${backup_date}.tar.gz ${document_root_dir}/
s3cmd put --guess-mime-type ${backup_parent_dir}/web-${backup_date}.tar.gz s3://${bucket_name}/http/web-${backup_date}.tar.gz