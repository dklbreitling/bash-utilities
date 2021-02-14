# !!! USE WITH CAUTION !!!
# If zipping goes wrong for whatever reason, your files are most likely gone.
# If your files are not backed up, it is probably best to comment out the line 
# that removes the directories ('rm -r ./"$dir"'). Always back up your files.
# The author of this script can not be held responsible for loss of data.

#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "Please pass as an argument the directory you want to apply the script to (with trailing '/').";
else
	printf "\n\nZipping all subdirectories of %s:\n" "$1";
	cd "$1";
	for dir in ./*; do
		if [[ -d $dir ]]; then
			printf "\nZipping %s:\n" "$dir.";
			zip ./"${dir}".zip ./"$dir" -r;
			printf "Removing %s.\n" "$dir";
			rm -r ./"$dir";
		fi
	done
	cd "$original_dir";
	printf "\nDone.\n";
fi
