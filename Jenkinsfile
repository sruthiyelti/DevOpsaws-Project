
pipeline {
    agent any
     
    stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
          }
        }
        stage ('Build')
        {
            steps
            {
                sh label: '', script: 'mvn package'
            }
        }
        stage('Ansible') {
           steps {
                ansiblePlaybook become: true, credentialsId: 'ansible-node-ssh2', disableHostKeyChecking: true, installation: 'myansible', inventory: 'hosts', playbook: 'tomcat.yml'
          }
        }
    }
}
