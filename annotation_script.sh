#!/bin/bash

### Summarize an Annotation File
eval '$(mamba shell hook --shell bash)'

mamba activate ee282

### 1. Annotation File Integrity:
# Download annotation file
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/dmel-all-r6.66.gtf.gz

# Download the checksum file
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/md5sum.txt

# Checksum own downloaded file
md5sum dmel-all-r6.66.gtf.gz > md5check.txt

# Check for differences between online and own checksum files
echo 'Differences between checksum files' >> annotation.txt

diff md5{sum,check}.txt

### 2. Summarize Annotations:
# Analyze the total number of features of each type, sorted from the most common to the least common
echo -e '\nTotal number of features' >> annotation.txt

bioawk -c gff '{print $feature}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr >> annotation.txt

# Analyze the total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
echo -e '\nTotal number of genes per chromosome arm' >> annotation.txt

bioawk -c gff '$feature == "gene" {print $seqname}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr >> annotation.txt
