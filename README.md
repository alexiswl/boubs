# boubs
Bunch Of Useful Bash Scripts  
AGAAVDWOCI (Acronyms, generally, are a very bad way of communicating ideas).

But this is my repo, and I like to think that the usefulness of these scripts are worth their acronym.
And the documentation is good. 
As D. Trump once said - I know software package documentation, I have the best software package documentation.

### tiam5.sh
Name:
Tar Integrity checker And Md5sum creator.
Reason for existence:
Do you ever transfer data from one side of the world to the other, only to realise that the data you've copied onto three servers was corrupted from the beginning?
Have no fear, just run tiam5.sh first.
Example:
`tiam5 test.tar.gz`
fcf5c7376b6a5d24b04eeee4480e9a69  test.tar.gz

If the tar file was corrupt, the md5sum does not print.
