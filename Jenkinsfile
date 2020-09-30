pipeline
{
    agent any
    stages
    {
        stage ('Download')
        {
            steps
            {
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
        
    }
    post
    {
        success
        {
            emailext attachLog: true, body: '''$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS:
''', subject: '$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS!', to: 'thinklikesruthi@gmail.com'
        }
        
    }
}
