# Bash_Project: Shell commands

This project folder contains bash scripts with commands that can be executed directly on the terminal.

__Note:__ To make a script executable you would need to use the ``chmod u+x <bash_script>``. To make magic file executable you need to use the ``file -C -m <magic_file>``

__`0-current_working_directory`__ A script to prints the absolute path name of the current working directory.

__`1-listit`__
A script to display the contents list of your current directory.

__`2-bring_me_home`__
A script that changes the working directory to the user’s home directory

__`3-listfiles`__
A script to display current directory contents in a long format

__`4-listmorefiles`__
A script to display current directory contents, including hidden files (starting with .). Use the long format.

__`5-listfilesdigitonly`__
A script to display current directory contents using the long format with user and group IDs displayed numerically and hidden files (starting with .)

__`6-firstdirectory`__
A script that creates a directory named `my_first_directory` in the `/tmp/` directory.

__`7-movethatfile`__
A script that moves the file betty from `/tmp/` to `/tmp/my_first_directory`.

__`8-firstdelete`__
A script to delete the file betty from `/tmp/my_first_directory`

__`9-firstdirdeletion`__
A script to delete the directory `my_first_directory` that is in the `/tmp directory`.

__`10-back`__
A script to change the working directory to the previous one.

__`11-lists`__
A script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the `/boot` directory (in this order), in long format.

__`12-file_type`__
A script that prints the type of the file named iamafile. The file `iamafile` will be in the `/tmp` directory when we will run your script.

__`13-symbolic_link`__
A script that create a symbolic link to `/bin/ls, named __ls__`. The symbolic link should be created in the current working directory.

__`14-copy_html`__
A script that copies all the `HTML` files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

## __Advanced__
__`100-lets_move`__
A script that moves all files beginning with an uppercase letter to the directory `/tmp/u`. Assume that the directory `/tmp/u` exists.

__`101-clean_emacs`__
A script that deletes all files in the current working directory that end with the character `~`.

__`102-tree`__
A script that creates the directories `welcome/`, `welcome/to/` and `welcome/to/school` in the current directory in two spaces (and lines), not more.

__`103-commas`__:
A script with a command that lists all the files and directories of the current directory, separated by commas `(,)`.

    + Directory names should end with a slash `(/)`.
    + Files and directories starting with a dot `(.)` should be listed
    + The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
    + Only digits and letters are used to sort; Digits should come first
    + You can assume that all the files we will test with will have at least one letter or one digit
    + The listing should end with a new line.

__`school.mgc`__
A magic file that can be used with the command file to detect `School data` files. `School data` files always contain the string `SCHOOL` at offset 0.
