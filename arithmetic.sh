if [ $# -ne 3 ]
then
echo "Syntax is <$0><no><opr><no>"
exit 1
fi
case $2 in
+) ans=`expr $1 + $3` ;;
-) ans=`expr $1 - $3` ;;
/) ans=`expr $1 / $3` ;;
x|X) ans=`expr $1 "*" $3` ;;
%) ans=`expr $1 % $3` ;;
esac
echo $ans
