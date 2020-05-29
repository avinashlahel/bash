set -e

# echo ${1}  # 1st parameters

# echo $* # contains all parameters passed to script

for FN in "$@"  # gives list of parameters with quotes
    do
        echo $FN
    done

echo ${1:-'/tmp'}