pipeline {
    agent any
     
    stages {
      stage('checkout') {
           steps {
             
                git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
          }
        }
        stage ('Build'){
        
            steps
            {
                sh label: '', script: 'mvn package'
            }
        }
       stage("deploycode"){
            steps{
              sshagent(['tomcat']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/ DevOpsRocks.war /home/ubuntu:34.219.26.202:/apache-tomcat-9.0.11/webapps"


    }
  }

   }
 }
}
