# Create unique sequence names
fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/1A_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Non1A_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Secondary_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Internal_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Antisense_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Orphan_dRNA_Ec_promoters.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_protein-coding_Ec_promoters_dRNA.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_protein-coding_Ec_promoters_dRNA.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_tRNA_Ec_promoters_dRNA.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_tRNA_Ec_promoters_dRNA.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_ncRNA_Ec_promoters_dRNA.fasta

fasta-unique-names -r /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_ncRNA_Ec_promoters_dRNA.fasta

# Perform meme
meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_all -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_1A -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/1A_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_non1A -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Non1A_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_primary -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_secondary -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Secondary_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_internal -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Internal_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_antisense -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Antisense_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_orphan -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Orphan_dRNA_Ec_promoters.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_all_CDS -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_protein-coding_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_primary_CDS -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_protein-coding_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_all_tRNA -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_tRNA_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_primary_tRNA -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_tRNA_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_all_ncRNA -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/All_ncRNA_Ec_promoters_dRNA.fasta

meme -oc /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/2024-11-17_T4_promoters_dRNA_primary_ncRNA -nmotifs 1 -mod oops -dna -minw 51 -maxw 51 /Users/maikschauerte/Desktop/NAR_Revision/Phage_NAD-RNA_analysis/Updated_NAD-RNA_TSS_annotation/Primary_ncRNA_Ec_promoters_dRNA.fasta