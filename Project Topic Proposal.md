Joshua Choi  
10/13/2026  
Eco Evo 282  
Dr. Emerson  

**Project Topic Proposal**  
**Introduction**  
Transposable elements (TEs) are typically considered to be “junk” and “selfish” DNA that moves throughout the genome by using mechanisms that allow them to “copy” or “cut” and then “paste” themselves without necessarily benefiting the host organism (Mérel et al. 2020). During mobilization, TEs can introduce new cis-regulatory elements (CREs) that can affect gene expression (Bourque et al. 2018). Further, epigenetic factors such as DNA methylation, histone modifications, and chromatin accessibility affect CREs by modulating how readily the cell’s transcriptional machinery can bind to them (Preissl et al. 2023). A genomic metric that informs about expression level is chromatin accessibility, which allows estimating the extent to which specific physical areas of chromatin are accessible to the transcriptional machinery. Although TEs can drive epigenetic modifications affecting CRE activity, how these TEs affect neighbouring genes remains poorly understood (He et al. 2021).

**Research Question**  
Specifically, my research aims to uncover how local chromatin accessibility is related to TE expression in particular cell types and at the locus level, reaching the maximum biological resolution. Doing so allows me to dissect how TE expression interacts with chromatin accessibility and how that is associated with the expression of neighbouring genes.

**Data**  
	To answer my research questions, I will use publicly available datasets that combine single-nucleus RNA sequencing (snRNA-seq) and single-nucleus Assay for Transposase-Accessible Chromatin sequencing (snATAC-seq) libraries. Accessing the Gene Expression Omnibus (GEO) accession number GSE277132 will allow me to access multiome data based on the testes of the *D. melanogaster* strain w1118 (van Nierop Y Sanchez et al. 2025).   
	For this project, I will focus on *D. melanogaster* testes to examine TEs and chromatin accessibility across cell types present during early stages of spermatogenesis, a key developmental process for species perpetuation. Cell types in Drosophila testes are spatially organized, which allows for accurate cell type identification based on diagnostic expression patterns, which allows tracking of TE and gene expression during specific stages of spermatogenesis (van Nierop Y Sanchez et al. 2025; Herbette et al. 2021; Lawlor et al. 2021). Additionally, using recent developments in several computational pipelines (Jeong et al. 2026; Rodríguez-Quiroz et al. 2022), I will be able to work at the locus level, controlling for the expression of particular TE insertions while considering that of genes at different distance thresholds. 

**Tie to the Class**  
	Previous methods used to analyze TEs utilized tissue bulk and family-level analysis, which provides a lower level biological resolution to exploring TE expression. As a result, my project aims to use single-cell and locus-level analysis to conduct exploratory data analysis. I plan to utilize Bash and various libraries (e.g. SRA ToolKit) to help me download the data, which incorporates the coding language Bash that was introduced during the class. Additionally, I plan to utilize R to help me filter, quality control, integrate, and analyze the data, which incorporates the coding language R that was also introduced during the class.  
	Another big component outside of exploratory data analysis using coding languages such as Bash and R that aligns with the main themes of the class also includes visualization of the data. Through R, I envision myself using libraries such as ggplot2 in order to help me visualize the data through various plots such as scatter plots, uniform manifold approximation and projection (UMAP), and heat maps. Ultimately, I would also like to in some sort of fashion incorporate a visual similar to that of Integrated Genome Browser (IGB) to see the physical locations of the TEs and how they interact with open or closed regions of the chromatin.  
	Furthermore, this project aligns with the overall theme of bioinformatics because throughout this project, I will be downloading and storing my data using HPC3 and analyzing the data using pipelines and scripts that ultimately allows me to interpret the biological significance of the data. I have already begun using pre-existing pipelines (Jeong et al. 2026; Rodríguez-Quiroz et al. 2022\) to help me download the multiome data and prepare high quality data ready for analysis.

**Feasibility**  
As mentioned above, I plan on using publicly available datasets, which will allow me to save time otherwise needed for animal husbandry, sample collection, and molecular procedures, allowing me to focus more on data analysis. Additionally, the particular *D. melanogaster* strain w1118 has a well-annotated genome and TE landscape, which I will need for this project and can procure both from my lab. As a result, most of the time component of this project will be dedicated mainly to computational analysis, as I have already started using pipelines (8,9) to acquire both TE expression and chromatin accessibility data. Furthermore, my lab is experienced in working with single-nucleus datasets, and I have their guidance readily available whenever I come across any problems that need to be solved.  
Additionally, since I plan on using R for most of my data analysis, libraries that are already available in R such as Seurat and ArchR will allow me to easily analyze both snRNA-seq and snATAC-seq datasets using pre-existing functions. This in hand will allow me to analyze single-cell data without having to generate much brand new code from scratch.

**Conclusion**  
Overall, I will be exploring how TE expression and chromatin accessibility interact on a cell type level and on a loci-level, which is at the highest biological resolution. Additionally, I will be able to observe how their interactions alter the expression of nearby genes. By utilizing preexisting multiome data based on testes of the *D. melanogaster* strain w1118, I will be able to analyze TE expression and chromatin accessibility during early stages of spermatogenesis. Ultimately, utilizing coding languages introduced in the class, I plan on incorporating Bash and R into my project to conduct exploratory data analysis through a new lens that this dataset hasn’t been analyzed before. Additionally, I envision myself visualizing this data through plots such as scatter plots, UMAPs, heatmaps, and IGB visualizations. Due to the feasibility of the project, I believe that this project is reasonable to accomplish during the duration of this class and allow me to continue to expand my current research.

**References**  
\[1\] Mérel V, Boulesteix M, Fablet M, Vieira C. 2020\. Transposable elements in Drosophila. Mob DNA 11: 23\.

\[2\] Bourque G, Burns KH, Gehring M, Gorbunova V, Seluanov A, Hammell M, Imbeault M, Izsvák Z, Levin HL, Macfarlan TS, Mager DL, Feschotte C. 2018\. Ten things you should know about transposable elements. Genome Biol 19: 199\.

\[3\] Preissl S, Gaulton KJ, Ren B. 2023\. Characterizing cis-regulatory elements using single-cell epigenomics. Nat Rev Genet 24: 21–43.

\[4\] He J, Babarinde IA, Sun L, Xu S, Chen R, Shi J, Wei Y, Li Y, Ma G, Zhuang Q, Hutchins AP, Chen J. 2021\. Identifying transposable element expression dynamics and heterogeneity during development at the single-cell level with a processing pipeline scTE. Nat Commun 12: 1456\.

\[5\] van Nierop Y Sanchez P, Santhi Sekhar P, Yildirim K, Lange T, Kreplin LZ, Muruga Boopathy V, Rosswag de Souza S, Dammer K, Ibberson D, Wang Q, Domsch K, Stokkermans A, Pandey S, Kaspar P, Martinez-Gallegos R, Gao X, Singh A, Engel N, Port F, Boutros M, Bageritz J, Lohmann I. 2025\. Dissecting the enhancer gene regulatory network in early Drosophila spermatogenesis. Nat Commun 16: 6766\.

\[6\] Herbette M, Wei X, Chang CH, Larracuente AM, Loppin B, Dubruille R. 2021\. Distinct spermiogenic phenotypes underlie sperm elimination in the Segregation Distorter meiotic drive system. PLoS Genet 17: e1009662.

\[7\] Lawlor MA, Cao W, Ellison CE. 2021\. A transposon expression burst accompanies the activation of Y-chromosome fertility genes during Drosophila spermatogenesis. Nat Commun 12: 6854\.

\[8\] Jeong K, Ha H, Xing J, Choi J, Kim K. 2026\. scTELL: a single-cell ATAC-seq tool for locus-specific transposable element identification in chromatin accessibility. Mob DNA 17: 10\.

\[9\] Rodríguez-Quiroz R, Valdebenito-Maturana B. 2022\. SoloTE: a workflow to classify transposable elements locus-specific expression using single-cell RNA-seq data. Commun Biol 5: 1063\.
