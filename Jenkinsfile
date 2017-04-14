pipeline {
  agent {
    docker {
      image 'microsoft/aspnetcore-build:1.0-1.1'
      args '-v '
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker ps'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'echo \'Hello, this is Unit Test\''
      }
    }
  }
}