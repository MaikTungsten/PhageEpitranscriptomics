# PhageEpitranscriptomics


## Overview

This repository provides code and data derived from _Wolfram-Schauerte et al., bioRxiv, 2024 (https://www.biorxiv.org/content/10.1101/2024.04.04.588121v1). This work describes the NAD-capped epitranscriptome of T4 phage infection of E. coli. Therefore, NAD captureSeq, differential RNA-Seq and endometabolomics are employed. For detailed information, please see above mentioned publication. Here, custom R Scripts and associated data are provided.

## NAD captureSeq

NAD captureSeq is a technology to specifically enrich for NAD-capped RNAs from total RNA. Here, we present the following information for NAD captureSeq analysis:

- RMarkdown code and HTML files for/from analysis of NAD captureSeq data starting from Counts Table
- Counts Tables for both replicates derived from featureCounts
- Transcription start sites of NAD-RNAs separately for T4 phage and E. coli
- RMarkdown code and HTML file for calculating overlap between replicates

## Differential RNA-Seq

Differential RNA-Seq is used to enrich primary transcripts and infer transcription start sites. Here, we provide the following information and data:

- Transcription start site annotations based on analysis with READemption and annogesic for T4 phage and E. coli
- RMarkdown file and HTML for analysis of TSS overlap with TSSs of NAD-RNAs

## References

This includes reference genomes as fasta and their annotations as gff3 files for E. coli, T4 phage and the reference Qbeta RNA. Further it contains an R file to format the gff3 file for analysis in R.

## Endometabolome of T4 phage infection

This includes the raw concentration measurements from LC-MS targeting the metabolites NAD, FAD and UDP-GlcNAc. Further, it contains an RMarkdown file and HTML document laying out detailed steps of the analysis.

## NudE.1 phage mutant

This contains the Index Combinations for the 144 screened phage plaques for demultiplexing with minibar.

## Plasmid maps

This contains all plasmids used in the study including those for protein expression and phage mutagenesis.


***

## Authors and acknowledgment
This repository and all analysis herein has been created by Maik Wolfram-Schauerte. For further acknowledgement see the original publication **LINK**.

## License
This project is accompanied by an MIT License.
Copyright (c) 2024 Maik Wolfram-Schauerte

## Project status
This project is currently under development.
