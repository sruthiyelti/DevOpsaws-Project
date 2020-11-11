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
                withSonarQubeEnv(credentialsId: 'mysonar' installationName: 'sonar') {
                    sh 'mvn package sonar:sonar'
                }
   }
       }
           }
}
