
pipeline {
    agent any
     
    stages {
      stage('checkout') {
           steps {
             
                git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
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
               ansiblePlaybook become: true, credentialsId: 'ansible-id', disableHostKeyChecking: true, installation: 'myansible', inventory: 'hosts', playbook: 'tomcat.yml' 
          }
        }
    }
}
