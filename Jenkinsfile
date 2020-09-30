
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
                sh label: '', script: 'mvn packages'
            }
        }
        
    }
    post
    {
        failure
        {
            emailext attachLog: true, body: "Please go to ${env.BUILD_URL} for more details.", subject: "Job ${env.JOB_NAME} - (${env.BUILD_NUMBER}) has FAILED", to: 'thinklikesruthi@gmail.com'
        }
        success
        {
            emailext attachLog: true, body: "Please go to ${env.BUILD_URL} for more details.", subject: "Job ${env.JOB_NAME} - (${env.BUILD_NUMBER}) has SUCCEDED", to: 'thinklikesruthi@gmail.com'
        }
    }
}
