if [ $# -eq 0 ]
then
	echo "give me argument(s).."
	echo "Usage: answer.sh searchfor [... searchfor]"
else
	res="$(cat data)"
	for arg in "$@"
	do
		res="$(echo "$res" | grep -i "$arg")"
	done
echo "$res"| grep . | awk 'BEGIN {FS="|"}; {print "----->\nname: " $1 "\naddress: "  $2 "\nphone: " $3 "\n<-----"}'
fi
