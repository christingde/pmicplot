
if [ -f ${data_file} ]
then
	rm ${data_file}
fi

echo ${head} >>${data_file}

while true 
do
	for hw_nd in ${hwmon_nodes}
	do
		echo -n "$(cat /sys/class/hwmon/hwmon*/device/${hw_nd})," >>${data_file}
	done

	for bt_nd in ${battery_nodes}
	do
		echo -n "$(cat /sys/class/power_supply/battery/${bt_nd})," >>${data_file}
	done

	echo "" >>${data_file}

	sleep 1
done
