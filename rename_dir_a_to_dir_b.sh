# Renames folders called "$2" to "$3" in directory "$1", where $n is the n-th argument supplied.

#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "Please pass as the first argument the folder you want to apply the script to (with trailing '/').";
else
	cd "$1";
	if [ -d "$2" ] || [ -z "$3" ]; then
        echo "Renaming '$2' to '$3'.";
		mv "$2" "$3";
	else
		echo "Make sure you specified the second and third argument correctly.";
	fi
	cd "$original_dir";
fi
