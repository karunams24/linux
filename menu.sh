echo "Menu"
echo "1.ordinary file"
echo "2.directory file"
echo "3.readable to ugo"
echo "4.executable to ugo"
echo "enter your choice"
read ch
case $ch in
1)
for f in *
do
if [ -f $f ]
then
echo $f
fi
done
;;
2)for f in *
do
if [ -d $f ]
then
echo $f
fi
done
;;
3)for f in *
do
if [ -f $f ]
then
u=`ls -l $f | cut -c 2-2`
g=`ls -l $f | cut -c 5-5`
o=`ls -l $f | cut -c 8-8`
if [ $u = "r" -a $g = "r" -a $o = "r" ]
then 
echo $f
fi
fi
done
;;
4) for f in *
do
 
if [ -f $f ]
then
u=`ls -l $f | cut -c 4-4`
g=`ls -l $f | cut -c 7-7`
o=`ls -l $f | cut -c 10-10`
if [ $u = "x" -a $g = "x" -a $o = "x" ]
then
echo $f
fi
fi
done
;;
*)
echo "invlid choice"
;;
esac 
