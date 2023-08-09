### Jenkinsfile
The first stage of the pipeline (SCM Checkout) checks out the source code from GitHub. 

Key parameters include:
- "branches" parameter specifies that the pipeline should only checkout the main branch of the repository.
- "userRemoteConfigs" parameter outlines the repository's URL

The second stage of the pipeline (Execute Ansible Playbook) runs an Ansible playbook to orchestrates the deployment of the web app on an nginx web server using Ansible.

Key parameters include:
- "credentialsId" which specifies the ID of the credentials that Ansible will use to access the servers and establish server connections.
- "disableHostKeyChecking" parameter specifies that Ansible should not check the host keys of the servers.
- "installation" parameter specifies the installation of Ansible to use.
- "inventory" parameter specifies the inventory file that Ansible will use.
- "playbook" parameter specifies the playbook that Ansible will run.
