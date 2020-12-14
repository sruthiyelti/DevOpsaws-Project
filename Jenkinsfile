
node{
    stage('scm checkout'){
        git 'https://github.com/sruthiyelti/DevOpsaws-Project.git'
    }
    stage('mvn package'){
        sh label: '', script: 'mvn packages'
    }
    stage('slack notification'){
      slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#jenkins-pipeline-demo', color: 'good', message: 'welcome to jenkins,slack war  file build sucessfully', tokenCredentialId: 'slack-demo', username: 'devopsrocks'
    }          
           
  }
