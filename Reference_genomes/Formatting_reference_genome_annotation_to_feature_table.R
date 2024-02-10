## Script to configure gff3 file from genome annotations

# Load packages
library(tidyverse)
library(dplyr)

setwd("~/Reference_genomes/")

#### Load and edit gff3 table to feature table ####

##Load gff3 table

gff3_table <- read_delim("NAD_captureSeq_reference.gff3", delim = "\t", comment = "#",
                         col_names = c( "seqid", "source", "type", "start", "end", "score", "strand", "phase", "attributes"))

## Format gff3 table

# This function takes and attributes string and splits it up
process_attributes <- function(a)
  a %>%
  str_split( ";" ) %>% 
  `[[`(1) %>% 
  str_split( "=" ) %>%
  map_dfr( ~ .x %>% 
             set_names( "attr", "val" ) %>% 
             bind_rows()  
  )

# Example
process_attributes(gff3_table$attributes[234] )  


# Run the function on each element in the attrib utes columns,
# and get a table of attributes, with multiple rows per feature,
# the "spread" them to get back to one row per feature
attribute_table <- 
  map_dfr( gff3_table$attributes, process_attributes, .id = "rowid" ) %>% 
  mutate( rowid = as.integer(rowid) ) %>%
  spread( attr, val )


# Join the table from the GFF file with the spreat attributes table to get
# our feature master table; select only the useful columns
feature_table <-
  left_join( gff3_table %>% rowid_to_column(), attribute_table ) %>%
  dplyr::select( seqid, type, start, end, strand, gene, gene_biotype, ID, Name, Parent, product, protein_id )

# Save feature table to file
write.table(feature_table, "NAD_captureSeq_feature_table.tsv", sep = "\t")

