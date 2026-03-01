pipeline {
  agent any

  tools {
    maven 'Maven3'
    jdk 'JDK17'
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        bat 'mvn -v'
        bat 'mvn clean package'
      }
    }
  }

  post {
    always {
      archiveArtifacts artifacts: 'target/*.war', fingerprint: true
    }
  }
}