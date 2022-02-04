use strict;
use warnings;
use Bio::SeqIO;

my $usage = "perl biostarSearch.pl <fasta file> <primers file>";
my $fasta_filename = shift(@ARGV) or die("Usage: $usage $!");
my $pfile = shift(@ARGV) or die("Usage: $usage $!");
my $start = 0;
my $motifCounter=1; 

my $fasta_parser = Bio::SeqIO->new(-file => $fasta_filename, -format => 'Fasta');



while(my $seq_obj = $fasta_parser->next_seq())
{
    printf("Searching sequence '%s'...\n", $seq_obj->id);

    open my $info, $pfile or die "Could not open primers $pfile: $!";

    while( my $motif = <$info>)  {   
        chomp $motif;
        printf("\n[%2s Looking motif [%s]]\n", $motifCounter, $motif);    
        $start = 0;

        while((my $pos = index($seq_obj->seq(), $motif, $start)) != -1) {

            printf("\nmotif found at position %8d ", $pos + 1);
            printf("[%8d,%8d]", ((($pos)/70))+1, (($pos) % 70)+1);
            $start = $pos + 1;
        
        }
        
        $motifCounter++;
        printf("\n");
    
    }
    close $info;

}

