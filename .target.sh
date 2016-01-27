
if [ -f ${data_file} ]
then
	rm ${data_file}
fi

echo ${head} >>${data_file}

while true 
do
	i=0
	for dir in ${hw_dirs};
	do
		temp_var="hwmon_nodes_$i"
		for t in $(eval "echo \$$temp_var")
		do
			echo -n	"$(cat "${dir}/${t}")," >>${data_file}
		done
		((i++))
	done

	for bt_nd in ${battery_nodes}
	do
		echo -n "$(cat /sys/class/power_supply/battery/${bt_nd})," >>${data_file}
	done

	echo "" >>${data_file}

	sleep 1
done
