# Process all .txt files with names beginning with U-Z
# (Remember that sort -n outputs lowest to highest numbers)

for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile  # print the filename on the screen
    if [ "$2" = "high" ]  
    then  # if "high" then show highest value (tail)
            cut -f "$1" $gapminderfile | sort -n | tail -1 >>test.out  #Capture output
    else  # otherwise show lowest value (head)
            cut -f "$1" $gapminderfile | sort -n | head -1 >>test.out #Capture output
    fi
done
