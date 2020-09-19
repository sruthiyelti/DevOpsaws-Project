node{
    stage('scm checkout'){
        git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
    }
    stage('mvn package'){
        sh label: '', script: 'mvn package'
    }
    stage('artifacts to s3'){
      withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'deploytos3', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
         sh  "aws s3 cp /var/lib/jenkins/workspace/dockerpipeline-app/target/DevOpsRocks.war s3://webservers3-123"
    }          
           
    }
    
  stage('Build docker image'){
    sh 'docker build -t sruthicloud/tomcat8 .'

    }
    stage('push docker image'){
        withCredentials([string(credentialsId: 'dockerHU1-cred', variable: 'dockerHubpwd')]) {
          sh "docker login -u sruthicloud -p ${dockerHubpwd}"
}
          sh 'docker push sruthicloud/tomcat8'
    }
    stage('email notification'){
      mail bcc: '', body: '''hi mail from jenkins
 jenkins job is failed
thanks 
sruthi''', cc: 'thinklikesruthi@gmail.com', from: '', replyTo: '', subject: 'jenkins build failed', to: 'yeltisruthireddy@gmail.com'
     }
}
