pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    environment {
        DOCKER_CREDS = credentials('dockerhubpwd')
    }

    stages {

        stage('Check out') {
            steps {
                git branch: 'main', url: 'https://github.com/Umangsehrawat/comp367-webapp.git'
            }
        }

        stage('Build maven project') {
            steps {
                bat 'mvn clean install'
            }
        }

        stage('Unit test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Docker login') {
            steps {
                bat 'docker login -u %DOCKER_CREDS_USR% -p %DOCKER_CREDS_PSW%'
            }
        }

        stage('Docker build') {
            steps {
                bat 'docker build -t umangsehrawat/comp367-webapp:1.0 .'
            }
        }

        stage('Docker push') {
            steps {
                bat 'docker push umangsehrawat/comp367-webapp:1.0'
            }
        }
    }
}
