if [ $# -eq 0 ]
then
echo "syntax is $0 <filename>"
exit 1
fi
if [ ! -f $1 ]
then
echo "file does'nt exist"
exit 
fi
echo "-----original file content-----"
cat $1
grep -v -i "linux" $1 > temp.txt
mv temp.txt $1
echo "-----updates file content after deleting lines contains linux-----"
cat $1
