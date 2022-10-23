/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    tools {
        maven 'Maven 3.0.5'
    }
    stages {
        stage('Build Maven') {
            steps {
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MananGoradiya/SGP']]])
                sh 'mvn --version'
                sh 'mvn clean install -X'
            }
        }
    }
}
