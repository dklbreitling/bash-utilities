# Moves all files with a file ending (i.e. matching '*.*') into directory 'Other'.
# Original use case was to move all files not previously moved by mv_pdfs_to_PDFs.sh.

#clear;
original_dir=$(pwd);
if [ -z "$1" ]; then
	echo "No argument passed, applying script to current directory.";
	set -- "$original_dir/";
fi
echo "Moving all files with file ending in '$1' into directory '$1Other'.";
cd "$1";
if [ ! -d Other ]; then
	mkdir Other;
fi
mv *.* Other/;
cd "$original_dir";
