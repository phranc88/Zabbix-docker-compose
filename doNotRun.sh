# DON'T BE A FOOL! DO NOT RUN THIS SCRIPT!
# This script will crash your system if you run it. Do not run it.
# This script will append "Chaos!" to output.txt until the file size is greater than the free space in /var/log.
# The purpose of this script is to test alerting on system crashes.

CHAOS="Chaos!"
free_space=$(df --output=avail /var/log | tail -n 1)
file_size=$(stat -c%s "/var/log/output.txt")

while [ $file_size -le $free_space ]

do
  echo $CHAOS
  echo "File Size: $file_size"
  echo "Free Space: $free_space"
  echo $CHAOS >> /var/log/output.txt

done
