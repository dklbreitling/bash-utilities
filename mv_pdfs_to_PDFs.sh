# As the name suggests, moves all files matching '*.pdf' into directory 'PDFs'.

#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "Please pass as an argument the directory you want to apply the script to (with trailing '/').";
else
	echo "Moving all PDF's in '$1' into directory '$1PDFs'.";
	cd "$1";
	if [ ! -d PDFs ]; then
		mkdir PDFs;
	fi
	mv *.pdf PDFs/;
	cd "$original_dir";
fi
