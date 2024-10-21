
#!bin bash
function rename(){
    echo "select an option from the provided list"
    echo "1. rename a file"
    # echo "2. rename extention(s)"
    read request
    if [ $request -eq 1 ];
        then
        echo "enter the file name "
        read filename
        echo enter the disired name
        read disiredname
            for i in $(find . -type f)
                do 
                    if [[ "$i" == "$filename" ]];
                        then
                            $(mv $filename $disiredname)
                    else
                        echo "$filename not found, you may mean:"
                        echo "$(find . -type f | grep "\b$filename")"
                        break
                    fi
                done
                
    fi
}