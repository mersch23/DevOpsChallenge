# Create the server
Open the Amazon EC2 console 

From the EC2 console dashboard, in the Launch instance box, choose Launch instance, and then choose Launch instance from the options that appear.
Under Name and tags, for Name, enter a descriptive name for your instance.
Under Application and OS Images (Amazon Machine Image), do the following:
Choose Quick Start, and then choose Amazon Linux. This is the operating system  for your instance.
From Amazon Machine Image (AMI), select an HVM version of Amazon Linux 2. Notice that these AMIs are marked Free tier eligible. An Amazon Machine Image (AMI) is a basic configuration that serves as a template for your instance.
Under Instance type, from the Instance type list, you can select the hardware configuration for your instance. Choose the t2.micro instance type, The t2.micro instance type is eligible for the free tier. In Regions where t2.micro is unavailable, you can use a t3.micro instance under the free tier. For more information, 
Under Key pair (login), for Key pair name, choose the key pair that you created when getting set up.
Next to Network settings, choose Edit. For Security group name, you'll see that the wizard created and selected a security group for you. You can use this security group, or alternatively you can select the security group that you created when getting set up using the following steps:
Choose Select existing security group.
From Common security groups, choose your security group from the list of existing security groups.
Keep the default selections for the other configuration settings for your instance.
Review a summary of your instance configuration in the Summary panel, and when you're ready, choose Launch instance.
A confirmation page lets you know that your instance is launching. Choose View all instances to close the confirmation page and return to the console.
On the Instances screen, you can view the status of the launch. It takes a short time for an instance to launch. When you launch an instance, its initial state is pending. After the instance starts, its state changes to running .
It can take a few minutes for the instance to be ready for you to connect to it. 

# Build and Deploy Container

you need to have Docker installed and running
clone your repo git clone "example https://github.com/docker/"
View the contents of the cloned repository.
We need to have our Dockerfile to use ,for building our container.
Build the container image "example docker build -t [container-name] .
   docker build command uses the Dockerfile to build a new container image
   the -t flag tags your image, The . at the end of the docker build command tells
     Docker that it should look for the Dockerfile in the current directory.

Start your container using the docker run command and specify the name of the image you just created:
    "example docker run -dp 2000:2000 [container name]
   the -d flag to run the new container in “detached” mode (in background)
    the -p flag to create a mapping between the host’s port 2000 to the container’s port 2000
 open your web browser to http://localhost:2000. You should see your app.
 
 # checker script
 
 #!/bin/bash
wget -q --spider http://52.202.64.19
if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
    
fi
 
 #IAM Credential
  login in as root user
  email jmersch23@yahoo.com
  password Ashprince23@

