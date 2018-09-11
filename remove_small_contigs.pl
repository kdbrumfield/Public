#!/usr/bin/perl
use strict;
use warnings;

# This script will remove contigs less than a desired length from a fasta file

# use: remove_small_contigs.pl <minimum contig length> <fasta file>

my $minlen = shift or die "Error: `minlen` parameter not provided\n";
{
    local $/=">";
    while(<>) {
        chomp;
        next unless /\w/;
        s/>$//gs;
        my @chunk = split /\n/;
        my $header = shift @chunk;
        my $seqlen = length join "", @chunk;
        print ">$_" if($seqlen >= $minlen);
    }
    local $/="\n";
}
