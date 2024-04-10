pipeline{
    agent any
    stages{
    //checkout scm;
        stage('git checkout'){
            steps{
            checkout scmGit(
                branches: [[name: 'feature/devops']],
                userRemoteConfigs: [[credentialsId: '84993631-6cac-463d-8ea3-415c51bac66b',
                    url: 'https://github.com/devopsengineer-np/static-website.git']])
            }

           
        }
        stage('list all'){
            steps{
                   sh 'ls -al'
            }
        }
        stage('Display'){
            steps{
                   sh 'cat Dockerfile'
            }
        }  
    }
}