#!/bin/bash

# this will convert a gff3 file to a gff with fasta file (for use with roary)

# this script is to be used with both the gff3 and fasta files in the same directory

# this is an example of fasta files form NCBI and gff3 files from RefSeq

rm -rf ./ROARY
mkdir ./ROARY

for file1 in *.fasta
do 
    # file1 is the fasta file from ncbi
    # file 2 will be the gff file from RefSeq
    # for ncbi, GCA_000006745.1_ASM674v1_genomic.fasta
    # for RefSeq, GCF_000006745.1_ASM674v1_genomic.gff
    file_end=${file1%.*}.gff
    file2=${file_end/GCA/GCF}
    
    #rename the output RefSeq_000006745.1_ASM674v1_genomic_roary.gff
    out1=${file1%.*}_roary.gff
    out=${out1/GCA/RefSeq}
    
    # add the fasta file to the end of the gff3 file
    cat $file2 $file1 > ./ROARY/$out
    # change the end (###) of the gff3 flag to the fasta flag for roary (##FASTA)
    sed -i 's/###/##FASTA/g' ./ROARY/$out
done
