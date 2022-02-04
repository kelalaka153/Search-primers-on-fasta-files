# fasta
Searching primers on Fasta files

This code was an attempt to help a friend on their PhD.

The request was looking the existance of the primers on the given DNA/RNA sequence. 
The squence result was a [Fasta file format](https://www.ncbi.nlm.nih.gov/genbank/fastaformat/)
and with column size 70 ( the max for fasta 80).

I've written a search with grep to do this one need to convert the fatsa into one line.
Once one-line is on the hand the grep can find the position very easily.
This, however, only returns positions so one has to convert row and line to see that in the fatsa file.

Instead I've seen that BioStar has a perl module for this. Within the code, it is easy to print the line and column information.

Hope this helps for you, too.

Asked here;

- [Finding primers on fasta files with position, line and column information](https://superuser.com/q/1702797/428106)

Saw this

- [Searching FASTA file for motif and returning title line for each sequence containing the motif](https://stackoverflow.com/a/4325909/1820553)

and had some trouble with files and considered the grep was the reason;

- [Is there a limit for a line length for grep command to process correctly?](https://superuser.com/a/1703052/428106)

The problem solved.

The posted codes are working correctly. You may need to adjust according to your needs.

