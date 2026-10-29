Joshua Choi  
10/28/2026  
Eco Evo 282  
Dr. Emerson  
# Project Analysis Proposal  
## Introduction   (How it pertains to the student's research goals)
Previously, in the Project Topic Proposal, I introduced the topic of transposable elements (TEs), which are considered to be "junk" and "selfish" DNA that utilize mechanisms allowing them to "copy" or "cut" and then "paste" themselves into new areas of the genome (Mérel et al. 2020). As these TEs move throughout the genome, they are capable of introducing new cis-regulatory elements (CREs) that can affect the expression of genes (Bourque et al. 2018). Furthermore, epigenetic factors such as DNA methylation, histone modifications, and chromatin accessibility regulate how readily the cell's transcriptional machinery can bind to these CREs (Preissl et al. 2023). Of these epigenetic factors, chromatin accessibility is one genomic metric that estimates the extent to which specific physical areas of chromatin are accessible to the cell's transcriptional machinery and informs us about the expression levels of both TEs and genes. Although TEs can drive epigenetic modifications affecting CRE activity, how these TEs affect neighbouring genes remains poorly understood (He et al. 2021). As a result, I plan to analyze how TEs and chromatin availability interact and alter the expression of nearby genes that are within the coexpression network.

## Datasets
To answer my research question, I plan on analyzing publicly available datasets that combine single-nucleus RNA sequencing (snRNA-seq) and single-nucleus Assay for Transposase-Accessible Chromatin sequencing (snATAC-seq) libraries. Accessing the Gene Expression Omnibus (GEO) accession number GSE277132 will allow me to access multiome data based on the testes of the _D. melanogaster_ strain w1118 (van Nierop Y Sanchez et al. 2025). The multiome data consists of 4 replicates containing snRNA-seq and snATAC-seq libraries, and each has its own Sequence Read Archive (SRA) IDs associated with it. Using sra-tools and fastq-dump, I plan to use the SRA values above and download them through HPC using my lab's resources.

| Replicate Number | RNA-seq | ATAC-seq
| --- | --- | --- |
| Rep1 | SRR30661966 | SRR30661958, SRR30661959, SRR30661960, SRR30661961
| Rep2 | SRR30661965 | SRR30661954, SRR30661955, SRR30661956, SRR30661957
| Rep3 | SRR30661963, SRR30661964 | SRR30661952, SRR30661953
| Rep4 | SRR30661962 | SRR30661951

## Analysis


## Visualization


## Feasibility


## Conclusion


## References
Bourque G, Burns KH, Gehring M, Gorbunova V, Seluanov A, Hammell M, Imbeault M, Izsvák Z, Levin HL, Macfarlan TS, Mager DL, Feschotte C. 2018\. Ten things you should know about transposable elements. Genome Biol 19: 199\.

He J, Babarinde IA, Sun L, Xu S, Chen R, Shi J, Wei Y, Li Y, Ma G, Zhuang Q, Hutchins AP, Chen J. 2021\. Identifying transposable element expression dynamics and heterogeneity during development at the single-cell level with a processing pipeline scTE. Nat Commun 12: 1456\.

Mérel V, Boulesteix M, Fablet M, Vieira C. 2020\. Transposable elements in Drosophila. Mob DNA 11: 23\.

Preissl S, Gaulton KJ, Ren B. 2023\. Characterizing cis-regulatory elements using single-cell epigenomics. Nat Rev Genet 24: 21–43.

van Nierop Y Sanchez P, Santhi Sekhar P, Yildirim K, Lange T, Kreplin LZ, Muruga Boopathy V, Rosswag de Souza S, Dammer K, Ibberson D, Wang Q, Domsch K, Stokkermans A, Pandey S, Kaspar P, Martinez-Gallegos R, Gao X, Singh A, Engel N, Port F, Boutros M, Bageritz J, Lohmann I. 2025\. Dissecting the enhancer gene regulatory network in early Drosophila spermatogenesis. Nat Commun 16: 6766\.
