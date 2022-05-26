# Bash_Project: Shell commands

This project folder contains bash scripts with commands that can be executed directly on the terminal.

__Note:__ To make a script executable you would need to use the ``chmod u+x <bash_script>``. To make magic file executable you need to use the ``file -C -m <magic_file>``

0. __Where am I?__ A script ``0-current_working_directory`` to prints the absolute path name of the current working directory.

1. __What’s in there?__
A script ``1-listit`` to display the contents list of your current directory.

2. __There is no place like home:__
A script ``2-bring_me_home`` that changes the working directory to the user’s home directory

3. __The long format:__
A script ``3-listfiles`` to display current directory contents in a long format

4. __Hidden files:__
A script ``4-listmorefiles`` to display current directory contents, including hidden files (starting with .). Use the long format.

5. __I love numbers:__
A script ``5-listfilesdigitonly`` to display current directory contents using the long format with user and group IDs displayed numerically and hidden files (starting with .)

6. __Welcome:__
A script ``6-firstdirectory`` that creates a directory named `my_first_directory` in the `/tmp/` directory.

7. __Betty in my first directory:__
A script ``7-movethatfile`` that moves the file betty from `/tmp/` to `/tmp/my_first_directory`.

8. __Bye bye Betty:__
A script ``8-firstdelete`` to delete the file betty from `/tmp/my_first_directory`

9. __Bye bye My first directory:__
A script ``9-firstdirdeletion` to delete the directory `my_first_directory` that is in the `/tmp directory`.

10. __Back to the future:__
A script ``10-back`` to change the working directory to the previous one.

11. __Lists:__
A script ``11-lists`` that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the `/boot` directory (in this order), in long format.

12. __File type:__
A script ``12-file_type`` that prints the type of the file named iamafile. The file `iamafile` will be in the `/tmp` directory when we will run your script.

13. __We are symbols, and inhabit symbols:__
A script ``13-symbolic_link`` that create a symbolic link to `/bin/ls, named __ls__`. The symbolic link should be created in the current working directory.

14. __Copy HTML files:__
A script ``14-copy_html`` that copies all the `HTML` files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

## __Advanced__
15. __Let’s move:__
A script ``100-lets_move`` that moves all files beginning with an uppercase letter to the directory `/tmp/u`. Assume that the directory `/tmp/u` exists.

16. __Clean Emacs:__
A script ``101-clean_emacs`` that deletes all files in the current working directory that end with the character `~`.

17. __Tree:__
A script ``102-tree`` that creates the directories `welcome/`, `welcome/to/` and `welcome/to/school` in the current directory in two spaces (and lines), not more.

18. __Life is a series of commas, not periods__:
A script ``103-commas`` with a command that lists all the files and directories of the current directory, separated by commas `(,)`.

    + Directory names should end with a slash `(/)`.
    + Files and directories starting with a dot `(.)` should be listed
    + The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
    + Only digits and letters are used to sort; Digits should come first
    + You can assume that all the files we will test with will have at least one letter or one digit
    + The listing should end with a new line.

19. __File type: School -__
A magic file ``school.mgc`` that can be used with the command file to detect `School data` files. `School data` files always contain the string `SCHOOL` at offset 0.
