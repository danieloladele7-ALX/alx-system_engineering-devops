# Bash_Project: Shell permissions

This project folder contains bash scripts with commands that handles Linux file permissions.

__Note:__ To make a script executable you would need to use the `chmod u+x <bash_script>`. To make magic file executable you need to use the `file -C -m <magic_file>`.

__`0-iam_betty`__
A script that switches the current user to the user betty, using exactly 8 characters command (+1 character for the new line).

__`1-who_am_i`__
A script that prints the effective username of the current user.
 
__`2-groups`__
A script that prints all the groups the current user is part of.
 
__`3-new_owner`__
A script that changes the owner of the file hello to the user betty.
  
__`4-empty`__
A script that creates an empty file called hello.

__`5-execute`__
A script that adds execute permission to the owner of the file hello.

__`6-multiple_permissions`__
A script that adds execute permission to the owner and the group owner, and read permission to other users, to the file hello.

__`7-everybody`__
A script that adds execution permission to the owner, the group owner and the other users, to the file hello

__`8-James_Bond`__
A script that sets the permission to the file hello as follows:

__`9-John_Doe`__
A script that sets the mode of the file hello to this:
  
__`10-mirror_permissions`__
A script that sets the mode of the file hello the same as olleh’s mode.

__`11-directories_permissions`__
A script that adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regular files should not be changed.
  
__`12-directory_permissions`__
A script that creates a directory called `my_dir` with permissions 751 in the working directory.

__`13-change_group`__
A script that changes the group owner to school for the file hello

## Advanced
__`100-change_owner_and_group`__
A script that changes the owner to vincent and the group owner to staff for all the files and directories in the working directory.
 
__`101-symbolic_link_permissions`__
A script that changes the owner and the group owner of _hello to vincent and staff respectively.

__`102-if_only`__
A script that changes the owner of the file hello to betty only if it is owned by the user guillaume.

__`103-Star_Wars`__
A script that will play the StarWars IV episode in the terminal.