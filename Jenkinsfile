pipeline{
    agent any
     environment{
        dockerhub_repo = "shivampateriyaknoldus/spring"
        dockerhub_creds = 'dockershivam'
        dockerImage = ''
     }
    tools { 
        maven 'maven3'
        docker 'docker'
    }
    stages
       {
            stage("clean")
            {
                steps{
                    sh "mvn clean"
                }
            }
            stage("Build")
            {
                steps{
                    sh "mvn compile"
                }
                
            }
             stage("TEST")
            {
                steps{
                    sh "mvn test"
                }
            } 
             stage("package")
            {
                steps{
                    sh "mvn package"
                }
            } 
             stage("building docker image"){
                    steps{
                        script{
                            dockerImage = docker.build dockerhub_repo + ":$GIT_COMMIT-build-$BUILD_NUMBER"
                        }
                    }
             }    


        }
}      