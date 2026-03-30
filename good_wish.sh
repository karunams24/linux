if [ $# -ne 0 ]
then
echo "syntax is <$0>"
exit 1
fi
t=`date +%H`
if [ $t -ge 0 -a $t -lt 12 ]
then
echo  "good morning"
elif [ $t -ge 12 -a $t -lt 16 ]
then
echo "good evening"
else
echo "good night"
fi 

