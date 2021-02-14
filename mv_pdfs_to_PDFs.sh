#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "Please pass as an argument the folder you want to apply the script to (with trailing '/').";
else
	echo "Moving all PDF's in '$1' into folder '$1Other'.";
	cd "$1";
	if [ ! -d PDFs ]; then
		mkdir PDFs;
	fi
	mv *.pdf PDFs/;
	cd "$original_dir";
fi
