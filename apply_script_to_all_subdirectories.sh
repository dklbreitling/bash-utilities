# Does what the name suggests. Takes two arguments and expects the script it
# applies to all subdirectories of the second argument to take at least one argument.
# First arg: script to be applied. Second arg: directory that has the desired subdirectories.

#clear;
original_dir=$(pwd);
if [ ! -x "$1" ]; then
	echo "Please pass as the first argument the script you want to apply to all subdirectories.";
elif [ ! -d "$2" ]; then
	echo "Please pass as the second argument the directory for which you want to apply the script to all subdirectories.";
else
	for dir in "$2"*; do
		if [ -d "$dir" ]; then
			"$original_dir/$1" "$dir"/ "${@:3}";
		fi
	done
fi
printf "\n";
