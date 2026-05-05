# Create unique sequence names
fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/1A_dRNA_Ec_promoters.fasta

# Perform meme
meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2025-01-21_T4_promoters_tRNA_1A -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_tRNA_1A_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2025-01-21_T4_promoters_tRNA_nonA -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_tRNA_nonA_Ec_promoters_dRNA.fasta