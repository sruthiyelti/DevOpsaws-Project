pipeline {
    agent any
     
    stages {
      stage('checkout') {
           steps {
             
                git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
          }
        }
        stage('code'){
            steps {
                withSonarQubeEnv(credentialsId: 'jenkins-sonar' installationName: 'sonarserver') {
                    sh 'mvn package sonar:sonar'
                }
   }
       }
           }
}
