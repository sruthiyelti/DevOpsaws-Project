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
                sshagent(['myubuntu'])  {
                sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/tomcat/target/DevOpsRocks.war ubuntu@34.219.26.202:/home/ubuntu/apache-tomcat-9.0.11/webapps"


    }
  }

   }
 }
}
