# When used together with apply_script_to_all_subdirectories.sh, this script has
# essentially the same output as "ls path/to/directory/* -d", just that every subdirectory
# is on its own line.
# Example usage: "./apply_script_to_all_subfolders.sh ./print_dir_name.sh path/to/directory/".

original_dir=$(pwd);
cd "$1";
echo "$1";
for dir in "$1"; do
	if [ -d "$dir" ]; then
		cd "$dir";
		pwd;
		cd "$1";
	fi
done
cd "$original_dir";
