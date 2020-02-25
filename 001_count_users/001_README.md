A friend wanted some help making a script to take some output from $Product and sort out the users and how often they were found.

friend provided parameters:
- .csv format to recreate
- users format to recreate
- expected output
- limit to top 5 most found users

Script contains:
- While loop
- Parameters ($1, $2)
- grep, wc, tr, sort
- < file to stdin, > stdout to file 
