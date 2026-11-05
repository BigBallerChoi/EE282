Joshua Choi  
11/5/2026  
Eco Evo 282  
Dr. Emerson  

# Homework 3 - Pipelines

## Summarize Genome Assembly
1. Genome File Integrity:  

Downloaded the all-chromosome file from FlyBase
```
srun -A ecoevo282_class --pty  bash -i

wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/dmel-all-chromosome-r6.66.fasta.gz
```
Checked the validity of the file using a checksum and saw that the hexadecimal codes were the same (ccb86e94117eb4eeaaf70efb6be1b6b9)
```
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/md5sum.txt

md5sum dmel-all-chromosome-r6.66.fasta.gz > md5check.txt

diff md5{sum,check}.txt
```
2. Summarize Genome:  

Analyzed the total number of nucleotides (143726002 bases), Ns (1152978 N's), and sequences (1870 sequences)
```
mamba activate ee282

faSize dmel-all-chromosome-r6.66.fasta.gz
```

## Summarize an Annotation File
1. Annotation File Integrity:

Downloaded the annotation gtf file from FlyBase
```
srun -A ecoevo282_class --pty  bash -i

wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/dmel-all-r6.66.gtf.gz
```
Checked the validity of the file using a checksum and saw that the hexadecimal codes were the same (ccb86e94117eb4eeaaf70efb6be1b6b9)
```
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/md5sum.txt

md5sum dmel-all-r6.66.gtf.gz > md5check.txt

diff md5{sum,check}.txt
```

2. Summarize Annotation:
   
