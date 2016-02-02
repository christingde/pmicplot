# pmicplot  
A python graphical tool for monitor PMIC related nodes. The following is the  
charging plot of my meilan2 phone. As you can see there is a obvious bug when  
the capacity is about 80%, because it jump to 100% suddenly.  

![Alt text](data/meilan2.png?raw=true "Optional Title")
  
What is it?  
----------  
A python based graphical tool to draw charge related nodes plot, maybe  
useful in the charge and capacity checking after the HLOS is ready.  
This could be especailly useful in QCOM MSM899x platform PMIC related nodes,  
which have more ADCs for measuring the related parameters.  
  
Prerequisite  
------------  
Python pandas and matplatlib library. If you happen to be a ubuntu user you  
fix this by the following command:  
sudo apt-get install python-matplotlib python-pandas  
  
Useage  
------  
Usage: pmicplot [options]  
Options:  
  -h, --help      show this help message and exit  
  -c, --config    read config and generate script for target device  
  -g, --get-data  get data from the target device, make sure the adb works  
                  good and target device connected  
  -p, --plot      draw a plot based on the data get from target device  
  -r, --run       run the script on the target to gather data  
  
Generally, you should first edit the config.ini file to meet your request.  
  
./pmiclot -c  
Secondly, you should execute the above commad to generate the script for the  
target device.  
  
Then you should push the target.sh to the target /data/ directory and execute  
the following commad in the target device  
source /data/target.sh &  
  
Finally you can get the data and get a plot by the corresponding commands.  
  
  
Todo  
----  
Add dynamic plotting when adb are always connected (such as wifi adb)  
  
  
Author  
------  
Chris Ting  
