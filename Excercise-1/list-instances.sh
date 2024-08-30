#!/bin/bash

# variable definitions
INPUT_FILE="/tmp/ec2-instances.csv" # path to save the source file

DATE_THRESHOLD="2022-04-12T13:00:00" # date threshold to filter ec2 data

#install dependencies
echo "installing depedencies ..."
sudo yum install wget -y
#should use sudo apt install wget -y for  ubuntu systems

#Downloading the file from the github
echo "downloading csv file ..."
wget -O $INPUT_FILE https://raw.githubusercontent.com/BGLCorp/devops-interview-tests/main/ec2-instances.csv

# Read the CSV file line by line
while IFS=, read -r instance_id raw_date instance_type private_ip deployment_option
do
  # Extract date and time, rearrange to match the DATE_THRESHOLD format
  formatted_date=$(date -d "$(echo $raw_date | tr -d '"')" +'%Y-%m-%dT%H:%M:%S')

  # Compare the formatted dates and print the InstanceId if the condition is met
  if [[ "$formatted_date" < "$DATE_THRESHOLD" ]]; then
    echo "$instance_id"
  fi
done < "$INPUT_FILE"

# cleanup downloaded file
rm -f $INPUT_FILE