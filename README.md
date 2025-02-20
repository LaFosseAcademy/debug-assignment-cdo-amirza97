# DevOps Debug Assignment

The purpose of this assignment is to debug and deploy a repository that contains information on the Tour De France. The project contains two microservices:
- **Tour de France DB:** A PostgreSQL database that has details about the teams and cyclists competing in the Tour de France.
- **Tour de France MVC:** An Express.js backend, givig us the endpoints to get information about the competing teams.

The goal is to containerise these microservices using Docker, provision an AWS EC2 instance with Terraform, and configure the instance using Ansible so that the application is accessible via the instance’s public IP address on port 3000.

## Pre-requisites

- **Local Tools:**  
  - Docker  
  - Terraform  
  - Ansible  
  - Git

- **Repository Setup:**  
  - To start, clone this repository onto your machine.  
  - Work on the `main` branch and make all commits there.  
  - Make sure to not change any files in the `instructions` folder.

## Executing Terraform Commands
1. **Change to the righ file path:** 
   Once the repository has been cloned down, ensure that you are in the correct file location before running any terraform commands: 
   
   ```
   cd terraform
   ```
2. **Initialise Terraform:** 
   Run the following command to initialise the working directory and download necessary provider plugins:

   ```
   terraform init
   ```
3. **Plan the Infrastructure:** 
   Create an execution plan to see what changes will be applied:
   
   ```
   terraform plan
   ```
4. **Apply the Terraform Script:** 
   Apply the changes to create the AWS resources (EC2 instance, security group, etc.):

   ```
   terraform apply
   ```
   Once you are sure everything is working, when prompted in the terminal, type "yes".

## Ansible: Configuring the EC2 Instance
Before applying any Ansible commands, ensure that you have Ansible installed on your local device
- For Mac users, run the follwing command to install Ansible:
   ```
   brew install ansible
   ```
- For Windows users, you will need to create a Microsoft Azure account, and access Ansible using the Command Line Interface.

1. **Configure the Inventory:** 
   Update the ansible_hosts file within the ansible repository with the public IPv4 address of the provisioned EC2 instance.

2. **Run the Ansible Playbook:** 
   The playbook is located in the playbooks directory. It navigates to the directory containing the docker-compose.yml file and executes the Docker Compose command. Run the playbook with:
   ```
   ansible-playbook -i ansible_hosts playbooks/<your_playbook_filename>.yml
   ``` 

## Accessing the Deployed Application
Once everything is configured, access the application:

   ```
   http://<EC2_PUBLIC_IP>:3000/tour-de-france/cyclists
   ```