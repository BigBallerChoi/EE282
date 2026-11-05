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
Checked the validity of the file using a checksum and saw that the hexadecimal codes were the same (ea600dbb86f1779463f69082131753cd)
```
wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/md5sum.txt

md5sum dmel-all-r6.66.gtf.gz > md5check.txt

diff md5{sum,check}.txt
```

2. Summarize Annotation:
   
Analyzed the total number of features of each type, sorted from the most common to the least common
```
mamba activate ee282

bioawk -c gff '{print $feature}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr

 190176 exon
 163377 CDS
  46856 5UTR
  33778 3UTR
  30922 start_codon
  30862 stop_codon
  30836 mRNA
  17872 gene
   3059 ncRNA
    485 miRNA
    365 pseudogene
    312 tRNA
    270 snoRNA
    262 pre_miRNA
    115 rRNA
     32 snRNA
```
Analyzed the total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
```
bioawk -c gff '$feature == "gene" {print $seqname}' dmel-all-r6.66.gtf.gz | sort -k1,1 | uniq -c | sort -k1,1nr

   4226 3R
   3649 2R
   3508 2L
   3481 3L
   2704 X
    114 4
    113 Y
     38 mitochondrion_genome
     21 rDNA
      2 211000022280494
      2 Unmapped_Scaffold_8_D1580_D1567
      1 211000022278279
      1 211000022278436
      1 211000022278449
      1 211000022278760
      1 211000022279165
      1 211000022279188
      1 211000022279264
      1 211000022279392
      1 211000022279681
      1 211000022280328
      1 211000022280341
      1 211000022280347
      1 211000022280481
      1 211000022280703
```
