echo "enter a number"
read number
echo "enter range"
read range
echo "multiplication table for $number up to $range is"

for ((i=1; i<=range; i++))
do
	result=$((number * i))
	echo "$number * $i = $result"
done
