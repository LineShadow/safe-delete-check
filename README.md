# safe-delete-check
A Bash script that checks whether a given folder is safe to delete.

The current exact checks are:
1. Existence of the given directory.
2. LSOF output: whether the given directory is in use or not.

> [!IMPORTANT]
> The current script includes no install or integrated command; it is run as a regular file in the terminal, along with a target directory.

> [!NOTE]
> The script will be improved and expanded in the future.
