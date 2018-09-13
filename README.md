# Public Repository of Kyle Brumfield
Short scripts used for Assembly and Annotation...

> deconseq_multithread.pl
Altered perl script to use 4 threads during bwasw alignment of deconseq: http://deconseq.sourceforge.net/manual.html

> remove_small_contigs.pl
Use this script to remove contigs less than a desired length. Adapted from biostars blog: https://www.biostars.org/p/79202/

> gff3_to_gff_with_fasta.sh
GFF files are the input for Roary to compute the pangenome and contain all the annotations plus the genome sequence in fasta format appended at the end. Use this script if annotations are done in RAST or downloaded from RefSeq. Roary website: https://sanger-pathogens.github.io/Roary/ 
