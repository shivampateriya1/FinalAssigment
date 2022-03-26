pipeline{
    agent any
     environment{
        dockerhub_repo = "shivampateriyaknoldus/spring"
        dockerhub_creds = 'dockershivam'
        dockerImage = ''
    tools { 
        maven 'maven3'
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


        }
}        