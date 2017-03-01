## boubs Introduction.
Bunch Of Useful Bash Scripts  
AGAAVDWOCI (Acronyms, generally, are a very bad way of communicating ideas).  
But this is my repo, and I like to think that the usefulness of these scripts are worth their acronym.  
"I know software package documentation. I have the best software package documentation." - D. Trump 2016.

## Rules of boubs:
* Scripts must be entirely bash code.
* If a script fails due to incorrect arguments, USAGE must be printed along with a help guide.
* Script must be somewhat useful.
* Script must be an acronym of some sort (longer the better) and should not be easily guessed.
* Follow Torsten's ten commandments <cite>[(Torsten Seeman, 2013)](https://gigascience.biomedcentral.com/articles/10.1186/2047-217X-2-15)</cite>.

## Current list and usage guide of boub scripts

### tiam5.sh
Name:  
Tar Integrity checker And md5sum creator.  
Reason for existence:  
Do you ever transfer data from one side of the world to the other, only to realise that the data you've copied onto three servers was corrupted from the beginning?  
Have no fear, just run tiam5.sh first.
In tact files will be printed their output to stdout whilst corrupted files will be written to stderr.
Example:  
`tiam5 test.tar.gz 2> corrupted_tar_files.txt`  
fcf5c7376b6a5d24b04eeee4480e9a69  test.tar.gz  

