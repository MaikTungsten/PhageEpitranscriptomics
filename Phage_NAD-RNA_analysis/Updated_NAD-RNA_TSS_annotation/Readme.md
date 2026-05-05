# This README documents the detailed promoter analysis of T4 phage and host NAD-RNA and canonical promoters

## 1 How were NAD-RNA TSSs annotated?

First, the hits from NAD captureSeq analysis (/Users/maikschauerte/Desktop/NAR_Revision/PhageEpitranscriptomics-main/NAD_captureSeq/Final_df_ONTrun_061.csv | /Users/maikschauerte/Desktop/NAR_Revision/PhageEpitranscriptomics-main/NAD_captureSeq/Final_df_ONTrun_065.csv) were used as basis to extract TSS per replicate.
The criteria for TSS selection (manual) were applied in the following order:
    a) in case of a steep increase, the TSS was selected at that point
    b) in case of modest slope, the first position of readout was selected and it was reduced in case of consecutive C's or G's that were considered artefacts from C-tailing during library prep

TSS information saved in: /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Updated_host_phage_TSSs_R1.xlsx & /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Updated_host_phage_TSSs_R2.xlsx

## 2 Processing of annotations to retrieve promoter information

Using the Jupyter Notebook: /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Getting_NAD-RNA_promoters.ipynb

Promoters in fasta files were analysed with MEME: /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/MEME_analysis_T4_promoters.sh