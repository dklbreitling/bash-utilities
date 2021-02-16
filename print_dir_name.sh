# When used together with apply_script_to_all_subdirectories.sh, this script has
# essentially the same output as "ls path/to/directory/* -d", just that every subdirectory
# is on its own line.
# Example usage: "./apply_script_to_all_subfolders.sh ./print_dir_name.sh path/to/directory/".

original_dir=$(pwd);
# echo "$1";
cd "$1";
# echo $1;
# pwd; ls;
for dir in ./*; do
	if [ -d "$dir" ]; then
		# echo $dir;
		cd "$dir";
		pwd;
		cd ..;
	fi
done
cd "$original_dir";
