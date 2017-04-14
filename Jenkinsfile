pipeline {
  agent {
    docker {
      image 'stepone/cibuild'
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