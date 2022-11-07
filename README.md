# Copia Devops Technical Challenge

# Goal

Create a script that will build a docker image, deploy to server on aws, and create another script that will periodically check if the server is running.

# Prerequisites

You will need an AWS account. Create one if you don't have one already. Use free-tier resources for this test.

# The Challenge

You are required to set up a new server in AWS. You must:

* Build the docker image with the provided Dockerfile
* Deploy the image to a server and have it be publicly accessible
* The server application should return 200 OK when a http request is sent

# Required Work

Fork this repository

* Provide instructions on how to create the server
* Provide Instructions on building and deploying docker image to the server
* Provide a script that can be run periodically (and externally) to check if the server is up and serving the expected content (returning a 200 status code). Use your scripting language of choice.
* Alter the README to contain the steps required to:
    * Create the server.
    * Deploy the docker image to the server.
    * Run the checker script.
* Provide us IAM credentials to login to the AWS account. If you have other resources in it make sure we can only access what is related to this test.
* Automate as much as possible.
* Document each step.
* Make it easy to install

Once you have completed the challenge, just reach out back to us via an email.