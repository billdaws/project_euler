# set -eux

# make new problem
lang=$1

ext=""
case "${lang}" in
"python")
    ext="py"
    ;;
*)
    ;;
esac


latest=$(ls "${lang}" | sort | tail -1 | grep -o "[[:digit:]]*" )
next=$((latest+1))
> "${lang}/${next}.${ext}"