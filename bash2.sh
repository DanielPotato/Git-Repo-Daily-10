# This is bash2.sh
i=1
while [ $i -le 4 ]; do
echo "$i"
sleep 1
(( i ++ ))
done
