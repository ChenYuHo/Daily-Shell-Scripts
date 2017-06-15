ls -1 somedir | sed -e 's/\.pdf$//' | while read name
do
cp target.xls "somedir/$name.xls"
done