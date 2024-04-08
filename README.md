**Kubernetes Production Level Project Pipeline**

This repository contains the Jenkins pipeline code for automating the deployment process of a Kubernetes production-level project. The pipeline performs the following steps:

**Git Code Phase:** Fetches the code from the specified GitHub repository branch.
**Push Docker File to Ansible Through SSH:** Copies the Dockerfile and related files to the Ansible server for further processing.
**Docker Build Image:** Builds a Docker image using the Dockerfile on the remote Ansible server.
**Docker Image Tagging:** Tags the Docker image with version and latest tags.

**Pushing Docker Image to Docker Hub:** Pushes the tagged Docker images to Docker Hub repository.

**Copy Files From Ansible Server To Kubernetes:** Copies necessary files from the Ansible server to the Kubernetes server for deployment.

**Prerequisites**
Jenkins server with necessary plugins installed.
Ansible server configured with SSH access.
Docker installed on both Ansible and Kubernetes servers.
Kubernetes server configured with SSH access.
Pipeline Configuration
Agent: The pipeline is configured to run on any available agent.

**Stages:**

**Git Code Phase:** Fetches the code from the specified GitHub repository.
**Push Docker File to Ansible Through SSH:** Transfers Dockerfile and related files to the Ansible server.
**Docker Build Image:** Builds the Docker image on the Ansible server.
**Docker Image Tagging:** Tags the Docker image with appropriate versioning.
**Pushing Docker Image to Docker Hub**: Pushes Docker image to Docker Hub repository.
**Copy Files From Ansible Server To Kubernetes**: Copies necessary files from Ansible server to Kubernetes server.

**Usage**
Configure Jenkins with necessary credentials for SSH access and Docker Hub login.
Create a new pipeline job in Jenkins.
Copy and paste the provided Jenkins pipeline code into the job configuration.
Save the configuration and trigger the pipeline manually or automatically as required.
Contributing
Contributions are welcome! Please feel free to submit issues, fork the repository, and submit pull requests.



