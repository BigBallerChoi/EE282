#!/bin/bash

### Summarize Genome Assembly
eval '$(mamba shell hook --shell bash)'

mamba activate ee282

###  1. Genome File Integrity:
# Download all-chromosome file
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/dmel-all-chromosome-r6.66.fasta.gz

# Download the checksum file
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/md5sum.txt

# Checksum own downloaded file
md5sum dmel-all-chromosome-r6.66.fasta.gz > md5check.txt

# Check for differences between online and own checksum files
echo 'Differences between checksum files' >> genome.txt

grep "dmel-all-chromosome-r6.66.fasta.gz" md5sum.txt | diff - md5check.txt >> genome.txt

### 2. Summarize Genome:
# Analyze FASTA file using faSize
echo -e '\nAnalyzing FASTA file' >> genome.txt

faSize dmel-all-chromosome-r6.66.fasta.gz >> genome.txt
