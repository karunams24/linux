if [ $# -ne 1 ]
then
 echo "syntax is <$0> <number>"
exit 1
fi
  i=2
while [ $i -le `expr $1 / 2` ]
do
  if [ `expr $1 % $i` -eq 0 ]
then
  echo "$1 is not a primenumber"
exit 0
fi
i=`expr $i + 1`
done
  echo "$1 is a primenumber" 
