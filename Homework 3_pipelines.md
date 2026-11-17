Joshua Choi  
11/5/2026  
Eco Evo 282  
Dr. Emerson  

# Homework 3 - Pipelines

## Summarize Genome Assembly - Run genome_script.sh
1. Genome File Integrity:  

Downloaded the all-chromosome file from FlyBase and checked the validity of the file using a checksum (diff showed no differences)
```
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
```
2. Summarize Genome:  

Analyzed the total number of nucleotides (143726002 bases), Ns (1152978 N's), and sequences (1870 sequences) (output seen in genome.txt)
```
### 2. Summarize Genome:
# Analyze FASTA file using faSize
echo -e '\nAnalyzing FASTA file' >> genome.txt

faSize dmel-all-chromosome-r6.66.fasta.gz >> genome.txt
```

## Summarize an Annotation File - Run annotation_script.sh
1. Annotation File Integrity:

Downloaded the annotation GTF file from FlyBase and checked the validity of the file using checksum (diff showed no differences)
```
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
```

2. Summarize Annotation:
   
Analyzed the total number of features of each type, sorted from the most common to the least common, as well as the total number of genes per chromosome arm (output seen in annotation.txt)
```
### 2. Summarize Annotations:
# Analyze the total number of features of each type, sorted from the most common to the least common
echo -e '\nTotal number of features' >> annotation.txt

bioawk -c gff '{print $feature}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr >> annotation.txt

# Analyze the total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
echo -e '\nTotal number of genes per chromosome arm' >> annotation.txt

bioawk -c gff '$feature == "gene" {print $seqname}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr >> annotation.txt
```
