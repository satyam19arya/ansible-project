pipeline {
    agent any 
    stages {
      stage('SCM Checkout') {
        steps {
           checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/satyam19arya/ansible-project.git']]])  
        }
      }  
      stage('Execute Ansible Playbook') {
        steps {
           ansiblePlaybook credentialsId: 'ansible', disableHostKeyChecking: true, installation: 'ansible-master', inventory: 'hosts', playbook: 'install_nginx.yml'
        }  
      }
    }
    post {
      always {
        echo 'Pipeline execution completed'
      }
      success {
        echo 'Successfully executed the ansible playbook'
      }
      failure {
        echo 'Failed to execute the ansible playbook'
      }
    }
}
