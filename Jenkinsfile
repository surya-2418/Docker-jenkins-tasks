pipeline
{
    agent any
    stages
    {
        stage("Clean")
        {
            steps
            {
                sh ' sudo rm -rf /var/lib/jenkins/workspace/Demo/* '
                // sh ' docker stop $(docker ps -a -q) '
                // sh ' docker rm $(docker ps -a -q) '
                // sh ' docker rmi $(docker images -q) '
            }
        }
        stage("Clone")
        {   
            steps
            {
                sh ' sudo git clone -b Docker https://github.com/surya-2418/Docker-jenkins-tasks.git '
            }
        }
        stage("Build")
        {
            steps
            {
                sh ' sudo docker build -t app /var/lib/jenkins/workspace/Demo/Docker-jenkins-tasks/ '
            }
        }
        stage("Run")
        {
            steps
            {
                sh ' sudo docker run -it -d app '
            }
        }
    }
    post 
    {
        success 
        {
            echo 'Build successful!'
        }
        failure 
        {
            echo 'Build failed!'
        }
    }
}
