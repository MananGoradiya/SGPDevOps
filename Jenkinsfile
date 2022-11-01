/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    tools {
        maven 'Maven 3.8.6'
    }
    stages {
        stage('Build Maven') {
            steps {
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MananGoradiya/SGP-Spring']]])
                sh 'mvn --version'
                sh 'mvn clean install -X'
            }
        }
        
        stage('Build Docker Image'){
            steps{
                script{
                                      
                    sh 'docker images'
                    sh 'docker build -t manangoradiya/first-app .'                    
                }
            }
        }
        
        stage('Push image to DockerHub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd1', variable: 'dockerhubpwd')]) {
    // some block
                        sh 'docker login -u manangoradiya -p ${dockerhubpwd}'
}
                    sh 'docker push manangoradiya/first-app'
                }
            }
        }
    }
}

