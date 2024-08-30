# Solutions for BGLCORP-devops-interview-test  
Candidate: Dimuthu Hippola

<br><b>Exercise 1: JSON:</b><br>
- First the script will start installing wget to down load the csv file from git hub.<br>
  - I have assumed a rpm based system and used yum. if the system is debian based we have to use apt.
- The shell script is using wget to download the csv file from git hub and save it to the "/tmp" directory.<br>
- Then it will traverse through the csv file using a do while loop.<br>
    - set the "IFS" to "," since the csv is comma seperated.
    - capture the instance_id, raw_date, instance_typem private_ip and instance_deployment_option fields.
    - convert the raw_date value into the desired format.
    - check whether the raw_date is earlier than the threshold date and prints the instance_id if the confdition is met.
- finally it will remove the downloaded csv file.<br>


<br><b>Exercise 2: Terraform:</b><br>
- Terraform module is written in Excercise-2/main.tf file.<br>
- Provider used AWS.
- Resources used "aws_iam_user", "aws_iam_group", and "aws_iam_user_group_membership".<br>

<br><b>Exercise 3: Dockerfile:</b><br>
- used alpine:latest as the base image for html-writer stage.<br>
- used nginx:latest for stage 2.<br>
- used -g 'daemon-off;' flag to run nginx in foreground.<br>

<br><b>Exercise 4: Kubernetes:</b><br>
- used alpine:latest as the image for the init container.<br>
- init container uses wget to download the text file and write it into the desired location.<br>
- restartPolicy is set to Never to avoid auto matic restarting of the pod by k8 ensuring the pod is stoped after the file is read.<br>
