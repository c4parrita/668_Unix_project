#!/bin/bash
### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"


### (1) In your home directory make a directory called RAW_DATA
mkdir ~/RAW_DATA

### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)
cp ~/668_Unix_project/*.fna.* ~/RAW_DATA

### (3) Do the same with all primer files ending with .csv
cp ~/668_Unix_project/*.csv ~/RAW_DATA

### (4) In your home directory, make 2 directories: P_DATA and RESULTS
mkdir ~/P_DATA ~/RESULTS

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS
PATH="$HOME/RAW_DATA:$HOME/P_DATA:$HOME/RESULTS:$PATH"
export PATH

### (6) Write your entire $PATH, the text string RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory
echo "PATH: $PATH" > ~/readme.txt


### (7) The last command should output the contents of readme.txt
###     to the terminal.
cat ~/readme.txt
