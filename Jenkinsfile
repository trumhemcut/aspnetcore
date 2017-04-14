pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
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