#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "Please pass as an argument the folder you want to apply the script to (with trailing '/').";
else
	echo "Moving all files left in '$1' into folder '$1Other'.";
	cd "$1";
	if [ ! -d Other ]; then
		mkdir Other;
	fi
	mv *.* Other/;
	cd "$original_dir";
fi
