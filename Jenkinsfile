pipeline {
  agent {
    docker {
      image 'microsoft/aspnetcore-build:1.0-1.1'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'dotnet restore'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'echo \'Hello, this is Unit Test\''
      }
    }
  }
}