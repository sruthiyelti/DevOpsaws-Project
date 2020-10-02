
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
               ansiblePlaybook become: true, credentialsId: 'ansible-id', installation: 'ansible', inventory: 'hosts', playbook: 'tomcat.yml'
          }
        }
    }
}
