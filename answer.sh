if [ $# -eq 0 ]
then
	echo "give me argument(s).."
	echo "Usage: answer.sh searchfor [... searchfor]"
else
	echo "working.."
	d="$(echo $* | sed 's/ /|/g')"
	echo $d
	cat data | egrep -i "($d)"| awk 'BEGIN {FS="|"}; {print "----->\nname: " $1 "\naddress: "  $2 "\nphone: " $3 "\n<-----"}'
fi
