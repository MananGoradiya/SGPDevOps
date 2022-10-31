/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    tools {
        maven 'Maven 3.8.6'
    }
    stages {
        stage('Build Maven') {
            steps {
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MananGoradiya/SGP-DevOps']]])
                bat 'mvn --version'
                bat 'mvn clean install -X'
            }
        }
        
        stage('Build Docker Image'){
            steps{
                script{
                   
                     
                    bat 'docker images'
                   
                    
                }
            }
        }
    }
}

