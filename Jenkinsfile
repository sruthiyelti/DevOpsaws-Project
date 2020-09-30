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
            emailext attachLog: true, body: 'Please take a look', subject: 'Test email', to: 'thinklikesruthi@gmail.com'
        }
        
    }
}
