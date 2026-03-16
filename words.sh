if [ $# -ne 1 ]
then
echo "Syntax is <$0> <Number>"
exit 1
fi
no=$1
rev=0
c=0
while [ $no -ne 0 ]
do
s=`expr $no % 10`
rev=`expr $rev \* 10 + $s`
no=`expr $no / 10`
c=`expr $c + 1`
done

while [ $c -ne 0 ]
do
s=`expr $rev % 10`
case $s in
1)echo "one";;
2)echo "two";;
3)echo "three";;
4)echo "four";;
5)echo "five";;
6)echo "six";;
7)echo "seven";;
8)echo "eight";;
9)echo "nine";;
0)echo "zero";;
*)echo "enter a number"
esac
rev=`expr $rev / 10`
c=`expr $c - 1`
done
