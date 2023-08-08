### Jenkinsfile
The first stage of the pipeline (SCM Checkout) checks out the source code from GitHub. The branches parameter specifies that the pipeline should only checkout the main branch of the repository. The userRemoteConfigs parameter specifies the URL of the repository.

The second stage of the pipeline (Execute Ansible Playbook) runs an Ansible playbook to deploy the web app on nginx webserver. The credentialsId parameter specifies the ID of the credentials that Ansible will use to access the servers.
The disableHostKeyChecking parameter specifies that Ansible should not check the host keys of the servers. The installation parameter specifies the installation of Ansible to use.
The inventory parameter specifies the inventory file that Ansible will use. The playbook parameter specifies the playbook that Ansible will run.
The ubuntu-slaves-key ID is the details of the pem key which will be created when we are trying to access the servers.
