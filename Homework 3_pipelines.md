Joshua Choi  
11/5/2026  
Eco Evo 282  
Dr. Emerson  

# Homework 3 - Pipelines

## Summarize Genome Assembly
1. Genome File Integrity:  

Downloaded the all-chromosome file from FlyBase
```
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/dmel-all-chromosome-r6.66.fasta.gz
```
Checked the validity of the file using a checksum and saw that the hexadecimal codes were the same
```
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/md5sum.txt

md5sum dmel-all-chromosome-r6.66.fasta.gz > md5check.txt

diff md5{sum,check}.txt
```
2. Summarize Genome:  

Analyzed the total number of nucleotides
```
```
Analyzed the total number of Ns
```
```
Analyzed the total number of sequences
```
```

## Summarize an Annotation File
1. Annotation File Integrity:


2. Summarize Annotation:
   
