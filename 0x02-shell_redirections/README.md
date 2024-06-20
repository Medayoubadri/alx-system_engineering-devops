# ALX System Engineering DevOps

This repository contains various scripts and tasks completed as part of the ALX System Engineering DevOps program. 
Each script is designed to perform a specific function related to shell scripting, file manipulation, and other Unix/Linux operations.

## Table of Contents

1. [0-current_working_directory](#0-current_working_directory)
2. [1-listit](#1-listit)
3. [2-bring_me_home](#2-bring_me_home)
4. [3-listfiles](#3-listfiles)
5. [4-listmorefiles](#4-listmorefiles)
6. [5-listfilesdigitonly](#5-listfilesdigitonly)
7. [6-firstdirectory](#6-firstdirectory)
8. [7-movethatfile](#7-movethatfile)
9. [8-firstdelete](#8-firstdelete)
10. [9-firstdirdeletion](#9-firstdirdeletion)
11. [10-back](#10-back)
12. [11-lists](#11-lists)
13. [12-file_type](#12-file_type)
14. [13-symbolic_link](#13-symbolic_link)
15. [14-copy_html](#14-copy_html)
16. [100-lets_move](#100-lets_move)
17. [101-clean_emacs](#101-clean_emacs)
18. [102-tree](#102-tree)
19. [103-commas](#103-commas)
20. [school.mgc](#schoolmgc)
21. [0-hello_world](#0-hello_world)
22. [1-confused_smiley](#1-confused_smiley)
23. [2-hellofile](#2-hellofile)
24. [3-twofiles](#3-twofiles)
25. [4-lastlines](#4-lastlines)
26. [5-firstlines](#5-firstlines)
27. [6-third_line](#6-third_line)
28. [7-file](#7-file)
29. [8-cwd_state](#8-cwd_state)
30. [9-duplicate_last_line](#9-duplicate_last_line)
31. [10-no_more_js](#10-no_more_js)
32. [11-directories](#11-directories)
33. [12-newest_files](#12-newest_files)
34. [13-unique](#13-unique)
35. [14-findthatword](#14-findthatword)
36. [15-countthatword](#15-countthatword)
37. [16-whatsnext](#16-whatsnext)
38. [17-hidethisword](#17-hidethisword)
39. [18-letteronly](#18-letteronly)
40. [19-AZ](#19-az)
41. [20-hiago](#20-hiago)
42. [21-reverse](#21-reverse)
43. [22-users_and_homes](#22-users_and_homes)
44. [100-empty_casks](#100-empty_casks)
45. [101-gifs](#101-gifs)
46. [102-acrostic](#102-acrostic)
47. [103-the_biggest_fan](#103-the_biggest_fan)

## Scripts

### 0-current_working_directory

Prints the absolute path name of the current working directory.

### 1-listit

Displays the contents list of the current directory.

### 2-bring_me_home

Changes the working directory to the user's home directory.

### 3-listfiles

Displays current directory contents in a long format.

### 4-listmorefiles

Displays current directory contents, including hidden files, in a long format.

### 5-listfilesdigitonly

Displays current directory contents, including hidden files, using digits only for user and group IDs.

### 6-firstdirectory

Creates a directory named `my_first_directory` in the `/tmp/` directory.

### 7-movethatfile

Moves the file `betty` from `/tmp/` to `/tmp/my_first_directory/`.

### 8-firstdelete

Deletes the file `betty` in `/tmp/my_first_directory/`.

### 9-firstdirdeletion

Deletes the directory `my_first_directory` in `/tmp/`.

### 10-back

Changes the working directory to the previous one.

### 11-lists

Lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the `/boot` directory (in this order), in long format.

### 12-file_type

Prints the type of the file named `iamafile`.

### 13-symbolic_link

Creates a symbolic link to `/bin/ls`, named `__ls__`.

### 14-copy_html

Copies all HTML files from the current directory to the parent directory, but only copies files that did not exist in the parent directory or are newer than the versions in the parent directory.

### 100-lets_move

Moves all files beginning with an uppercase letter to the directory `/tmp/u`.

### 101-clean_emacs

Deletes all files in the current working directory that end with the character `~`.

### 102-tree

Creates the directories `welcome/`, `welcome/to/`, and `welcome/to/school`.

### 103-commas

Lists all files and directories of the current directory, separated by commas, with specific sorting options.

### school.mgc

Creates a magic file `school.mgc` that can be used with the command `file` to detect `School` data files.

### 0-hello_world

Prints "Hello, World", followed by a new line to the standard output.

### 1-confused_smiley

Displays a confused smiley "(Ôo)'".

### 2-hellofile

Displays the content of the `/etc/passwd` file.

### 3-twofiles

Displays the content of `/etc/passwd` and `/etc/hosts`.

### 4-lastlines

Displays the last 10 lines of `/etc/passwd`.

### 5-firstlines

Displays the first 10 lines of `/etc/passwd`.

### 6-third_line

Displays the third line of the file `iacta`.

### 7-file

Creates a file named exactly `\*\\'"Best School"\'\\*$\?\*\*\*\*\*:)` containing the text `Best School`.

### 8-cwd_state

Writes into the file `ls_cwd_content` the result of the command `ls -la`.

### 9-duplicate_last_line

Duplicates the last line of the file `iacta`.

### 10-no_more_js

Deletes all the regular files with a `.js` extension in the current directory and all its subdirectories.

### 11-directories

Counts the number of directories and sub-directories in the current directory.

### 12-newest_files

Displays the 10 newest files in the current directory.

### 13-unique

Takes a list of words as input and prints only words that appear exactly once.

### 14-findthatword

Displays lines containing the pattern "root" from the file `/etc/passwd`.

### 15-countthatword

Displays the number of lines that contain the pattern "bin" in the file `/etc/passwd`.

### 16-whatsnext

Displays lines containing the pattern "root" and 3 lines after them in the file `/etc/passwd`.

### 17-hidethisword

Displays all the lines in the file `/etc/passwd` that do not contain the pattern "bin".

### 18-letteronly

Displays all lines of the file `/etc/ssh/sshd_config` starting with a letter.

### 19-AZ

Replaces all characters `A` and `c` from input to `Z` and `e` respectively.

### 20-hiago

Removes all letters `c` and `C` from input.

### 21-reverse

Reverses its input.

### 22-users_and_homes

Displays all users and their home directories, sorted by users, based on the `/etc/passwd` file.

### 100-empty_casks

Finds all empty files and directories in the current directory and all sub-directories, displaying only their names.

### 101-gifs

Lists all `.gif` files in the current directory and all its sub-directories, displaying their names without their extensions and sorting them case-insensitively.

### 102-acrostic

Decodes acrostics that use the first letter of each line.

### 103-the_biggest_fan

Parses web server logs in TSV format as input and displays the 11 hosts or IP addresses which made the most requests, ordered by number of requests.

## Usage

Each script is executable and can be run directly from the command line. Ensure the scripts have the appropriate permissions set:

```bash
chmod +x script_name

