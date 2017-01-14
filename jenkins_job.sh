#before Jenkins can run this he need be sudo 
#step1 : sudo visudo
#step2 : add this to file "jenkins ALL=(ALL) NOPASSWD: ALL" 
#After this Jenkins can run like Sudo
#You can config your job 
#inside Jenkins job 
cd /home/ubuntu/scripts
#run docker updater script and wait
sh docker_cont_update.sh
sleep 15
#run unit test
sudo python reqvester_test.py
#check if test pass or not
file="/home/ubuntu/scripts/faild.txt"
if [ -f "$file" ]
then
	echo "$file found."
    sudo rm faild.txt
    exit 1
else
	echo "$file not found."
    exit 0
fi