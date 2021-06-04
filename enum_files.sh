# $1 = wildcard
# $2 = new name, e.g. $2=doc -> doc001, doc002, ...
# $3 = file extension

if [ "$#" -ne 3 ]; then
	printf "Supply three arguments, \$1 = wildcard, \$2 = new name, \$3 = file extension.\n"
else
	c=1
	
	for file in $1
	do
		name=$(printf "$2%03d.$3" "$c")
		mv -- "$file" "$name"
		(( c++ ))
	done
fi

