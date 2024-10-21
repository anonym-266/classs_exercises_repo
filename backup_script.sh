#!bin/bash
function backup(){
    echo "files to backup"
    read -a backupfiles
    # echo "${backupfiles[@]}"
    echo "enter the directory name to backup the files"
    read directory
       $(tar cf "$directory.tar" "$backupfiles")
        # $(zip -r "$directory.tar.zip")
}
