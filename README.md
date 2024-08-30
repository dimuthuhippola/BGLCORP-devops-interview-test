# BGLCORP-devops-interview-test

<br><b>Exercise 1: JSON:</b><br>
- first it will start installing wget to down load the csv file from git hub<br>
  - I have assumed rpm based system and used yum if the system is debian based system such as ubuntu we have to use apt
- The shell script is using wget to download the csv file from git and save it to the "/tmp" directory<br>
- Then it will traverse through the csv file using a do while loop<br>
    - set the "IFS" to "," as csv is comma seperated.
    - capture the instance_id, raw_date, instance_typem private_ip and instance_deployment_option
    - convert the raw_date value into the desired format
    - check whether the raw_date is earlier than the threshold date and prints the instance_id if the confdition is met
- finally it will remove the downloaded csvfile.<br>

