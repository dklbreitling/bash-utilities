# Creates directory 'test/' in current directory with subdirectories '1/', '2/', and '3/',
# each containing subdirectories 'a/', 'b/', and 'c/' with  files 'a.a', 'b.b', and 'c.c'.

mkdir test;
cd test;
mkdir 1 2 3;
for dir in ./*; do 
    cd $dir; 
    mkdir a b c;
    for subdir in ./*; do 
        cd $subdir;
        touch a.a b.b c.c; 
        cd ..; 
    done;
    cd ..; 
done; 
cd ..;
echo "Done."
