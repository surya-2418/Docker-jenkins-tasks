pipeline
{
    agent any
    stages
    {
        stage( "Clone" )
        {
            steps
            {
                // sh ' rm -rf * '  
                sh ' git clone https://github.com/RameshXT/Docker-jenkins-tasks.git -b Docker '
            }
        }
        stage( "Build" )
        {
            steps
            {
                sh ' docker build -t imruby:v1 . '
            }
        }
        stage( "Run" )
        {
            steps
            {
                sh ' docker run -it --name rubyscontainer imruby:v1 '
            }
        }
    }
}
