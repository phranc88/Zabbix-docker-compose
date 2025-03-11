CHAOS="Chaos!"

echo "Enter the number of times to append to the file:"
read number

counter=1

while [ $counter -le $number ]
do
  echo $CHAOS >> output.txt
  ((counter++))
done

echo "Appended $CHAOS to output.txt $number times."

# Echo the size of the output file
file_size=$(stat -c%s "output.txt")
echo "The size of output.txt is $file_size."

# Get the free space in bytes for /var/log
free_space=$(df --output=avail /var/log | tail -n 1)
echo "The free space in /var/log is $free_space bytes."