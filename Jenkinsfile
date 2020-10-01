
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
               ansiblePlaybook credentialsId: 'ansible-ssh', disableHostKeyChecking: true, installation: 'myansible', inventory: 'hosts', playbook: 'tomcat.yml'
          }
        }
    }
}
