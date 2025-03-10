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
file_size=$(du -h "output.txt" | cut -f1)
echo "The size of output.txt is $file_size."