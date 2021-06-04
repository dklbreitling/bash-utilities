if [ $# -eq 0 ]
then
	echo "Please supply as first argument the new version number.";
else
	commitstr="[TASK] Release version $1"
	printf "Commit message: %s\n\n" "$commitstr"
	git commit -pm "$commitstr"
fi

